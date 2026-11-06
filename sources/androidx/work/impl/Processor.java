package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.core.content.ContextCompat;
import androidx.work.Configuration;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public class Processor implements ExecutionListener, ForegroundProcessor {
    public static final String TAG = Logger.tagWithPrefix("Processor");
    public Context mAppContext;
    public Configuration mConfiguration;
    public List<Scheduler> mSchedulers;
    public WorkDatabase mWorkDatabase;
    public TaskExecutor mWorkTaskExecutor;
    public Map<String, WorkerWrapper> mEnqueuedWorkMap = new HashMap();
    public Map<String, WorkerWrapper> mForegroundWorkMap = new HashMap();
    public Set<String> mCancelledIds = new HashSet();
    public final List<ExecutionListener> mOuterListeners = new ArrayList();
    public PowerManager.WakeLock mForegroundLock = null;
    public final Object mLock = new Object();

    public Processor(Context appContext, Configuration configuration, TaskExecutor workTaskExecutor, WorkDatabase workDatabase, List<Scheduler> schedulers) {
        this.mAppContext = appContext;
        this.mConfiguration = configuration;
        this.mWorkTaskExecutor = workTaskExecutor;
        this.mWorkDatabase = workDatabase;
        this.mSchedulers = schedulers;
    }

    public boolean startWork(String id) {
        return startWork(id, null);
    }

    public boolean startWork(String id, WorkerParameters.RuntimeExtras runtimeExtras) throws Throwable {
        Throwable th;
        synchronized (this.mLock) {
            try {
                try {
                    if (isEnqueued(id)) {
                        try {
                            Logger.get().debug(TAG, String.format("Work %s is already enqueued for processing", id), new Throwable[0]);
                            return false;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } else {
                        WorkerWrapper workerWrapperBuild = new WorkerWrapper.Builder(this.mAppContext, this.mConfiguration, this.mWorkTaskExecutor, this, this.mWorkDatabase, id).withSchedulers(this.mSchedulers).withRuntimeExtras(runtimeExtras).build();
                        ListenableFuture<Boolean> future = workerWrapperBuild.getFuture();
                        future.addListener(new FutureListener(this, id, future), this.mWorkTaskExecutor.getMainThreadExecutor());
                        this.mEnqueuedWorkMap.put(id, workerWrapperBuild);
                        this.mWorkTaskExecutor.getBackgroundExecutor().execute(workerWrapperBuild);
                        Logger.get().debug(TAG, String.format("%s: processing %s", getClass().getSimpleName(), id), new Throwable[0]);
                        return true;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
            th = th;
            throw th;
        }
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public void startForeground(String workSpecId, ForegroundInfo foregroundInfo) {
        synchronized (this.mLock) {
            try {
                Logger.get().info(TAG, String.format("Moving WorkSpec (%s) to the foreground", workSpecId), new Throwable[0]);
                WorkerWrapper workerWrapperRemove = this.mEnqueuedWorkMap.remove(workSpecId);
                if (workerWrapperRemove != null) {
                    if (this.mForegroundLock == null) {
                        PowerManager.WakeLock wakeLockNewWakeLock = WakeLocks.newWakeLock(this.mAppContext, "ProcessorForegroundLck");
                        this.mForegroundLock = wakeLockNewWakeLock;
                        wakeLockNewWakeLock.acquire();
                    }
                    this.mForegroundWorkMap.put(workSpecId, workerWrapperRemove);
                    ContextCompat.startForegroundService(this.mAppContext, SystemForegroundDispatcher.createStartForegroundIntent(this.mAppContext, workSpecId, foregroundInfo));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean stopForegroundWork(String id) {
        boolean zInterrupt;
        synchronized (this.mLock) {
            Logger.get().debug(TAG, String.format("Processor stopping foreground work %s", id), new Throwable[0]);
            zInterrupt = interrupt(id, this.mForegroundWorkMap.remove(id));
        }
        return zInterrupt;
    }

    public boolean stopWork(String id) {
        boolean zInterrupt;
        synchronized (this.mLock) {
            Logger.get().debug(TAG, String.format("Processor stopping background work %s", id), new Throwable[0]);
            zInterrupt = interrupt(id, this.mEnqueuedWorkMap.remove(id));
        }
        return zInterrupt;
    }

    public boolean stopAndCancelWork(String id) {
        boolean zInterrupt;
        synchronized (this.mLock) {
            try {
                Logger.get().debug(TAG, String.format("Processor cancelling %s", id), new Throwable[0]);
                this.mCancelledIds.add(id);
                WorkerWrapper workerWrapperRemove = this.mForegroundWorkMap.remove(id);
                boolean z = workerWrapperRemove != null;
                if (workerWrapperRemove == null) {
                    workerWrapperRemove = this.mEnqueuedWorkMap.remove(id);
                }
                zInterrupt = interrupt(id, workerWrapperRemove);
                if (z) {
                    stopForegroundService();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zInterrupt;
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public void stopForeground(String workSpecId) {
        synchronized (this.mLock) {
            this.mForegroundWorkMap.remove(workSpecId);
            stopForegroundService();
        }
    }

    public boolean isCancelled(String id) {
        boolean zContains;
        synchronized (this.mLock) {
            zContains = this.mCancelledIds.contains(id);
        }
        return zContains;
    }

    public boolean isEnqueued(String workSpecId) {
        boolean z;
        synchronized (this.mLock) {
            try {
                z = this.mEnqueuedWorkMap.containsKey(workSpecId) || this.mForegroundWorkMap.containsKey(workSpecId);
            } finally {
            }
        }
        return z;
    }

    public boolean isEnqueuedInForeground(String workSpecId) {
        boolean zContainsKey;
        synchronized (this.mLock) {
            zContainsKey = this.mForegroundWorkMap.containsKey(workSpecId);
        }
        return zContainsKey;
    }

    public void addExecutionListener(ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.add(executionListener);
        }
    }

    public void removeExecutionListener(ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.remove(executionListener);
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(final String workSpecId, boolean needsReschedule) {
        synchronized (this.mLock) {
            try {
                this.mEnqueuedWorkMap.remove(workSpecId);
                Logger.get().debug(TAG, String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), workSpecId, Boolean.valueOf(needsReschedule)), new Throwable[0]);
                Iterator<ExecutionListener> it = this.mOuterListeners.iterator();
                while (it.hasNext()) {
                    it.next().onExecuted(workSpecId, needsReschedule);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void stopForegroundService() {
        synchronized (this.mLock) {
            try {
                if (this.mForegroundWorkMap.isEmpty()) {
                    try {
                        this.mAppContext.startService(SystemForegroundDispatcher.createStopForegroundIntent(this.mAppContext));
                    } catch (Throwable th) {
                        Logger.get().error(TAG, "Unable to stop foreground service", th);
                    }
                    PowerManager.WakeLock wakeLock = this.mForegroundLock;
                    if (wakeLock != null) {
                        wakeLock.release();
                        this.mForegroundLock = null;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean interrupt(String id, WorkerWrapper wrapper) {
        if (wrapper != null) {
            wrapper.interrupt();
            Logger.get().debug(TAG, String.format("WorkerWrapper interrupted for %s", id), new Throwable[0]);
            return true;
        }
        Logger.get().debug(TAG, String.format("WorkerWrapper could not be found for %s", id), new Throwable[0]);
        return false;
    }

    public static class FutureListener implements Runnable {
        public ExecutionListener mExecutionListener;
        public ListenableFuture<Boolean> mFuture;
        public String mWorkSpecId;

        public FutureListener(ExecutionListener executionListener, String workSpecId, ListenableFuture<Boolean> future) {
            this.mExecutionListener = executionListener;
            this.mWorkSpecId = workSpecId;
            this.mFuture = future;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean zBooleanValue;
            try {
                zBooleanValue = this.mFuture.get().booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                zBooleanValue = true;
            }
            this.mExecutionListener.onExecuted(this.mWorkSpecId, zBooleanValue);
        }
    }
}
