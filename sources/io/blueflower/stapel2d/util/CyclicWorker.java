package io.blueflower.stapel2d.util;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes5.dex */
public class CyclicWorker {
    public static ExecutorService executor;
    public final boolean allowSkipping;
    public boolean appendedTask;
    public boolean done;
    public String name;
    public Runnable task;

    public CyclicWorker(Runnable runnable) {
        this(runnable, true);
    }

    public CyclicWorker(Runnable runnable, boolean z) {
        this(z);
        setTask(runnable);
    }

    public CyclicWorker() {
        this(true);
    }

    public CyclicWorker(boolean z) {
        this.appendedTask = false;
        this.allowSkipping = z;
        if (executor == null) {
            executor = Executors.newCachedThreadPool(new ThreadFactory() { // from class: io.blueflower.stapel2d.util.CyclicWorker$$ExternalSyntheticLambda1
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    return CyclicWorker.$r8$lambda$UuC51DZZ6ltU8W9goaGSaZzxNmY(runnable);
                }
            });
        }
    }

    public static /* synthetic */ Thread $r8$lambda$UuC51DZZ6ltU8W9goaGSaZzxNmY(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName("CyclicWorker");
        return thread;
    }

    public boolean skippingAllowed() {
        return this.allowSkipping;
    }

    public String getName() {
        return this.name;
    }

    public void setTask(final Runnable runnable) {
        this.name = runnable.getClass().getName();
        this.task = new Runnable() { // from class: io.blueflower.stapel2d.util.CyclicWorker$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CyclicWorker.$r8$lambda$i1pmCYfJCWwvWLovjX14AjicGus(this.f$0, runnable);
            }
        };
        this.done = true;
    }

    public static /* synthetic */ void $r8$lambda$i1pmCYfJCWwvWLovjX14AjicGus(CyclicWorker cyclicWorker, Runnable runnable) {
        cyclicWorker.getClass();
        runnable.run();
        synchronized (cyclicWorker) {
            cyclicWorker.done = true;
            cyclicWorker.notifyAll();
        }
    }

    public synchronized void startAnytime() {
        try {
            if (this.done) {
                this.done = false;
                executor.execute(this.task);
            } else if (!this.appendedTask) {
                this.appendedTask = true;
                executor.execute(new Runnable() { // from class: io.blueflower.stapel2d.util.CyclicWorker.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (CyclicWorker.this) {
                            while (!CyclicWorker.this.done) {
                                try {
                                    CyclicWorker.this.wait();
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                            }
                            CyclicWorker.this.appendedTask = false;
                            CyclicWorker.this.done = false;
                            CyclicWorker.executor.execute(CyclicWorker.this.task);
                        }
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void start() {
        try {
            if (!this.allowSkipping) {
                long jMillis = TimeUtils.millis();
                join();
                long jMillis2 = TimeUtils.millis() - jMillis;
                if (jMillis2 > 5) {
                    Gdx.app.debug("Cyclic Worker " + this.name, "Had to wait " + jMillis2 + "ms for previous task");
                }
            }
            ExecutorService executorService = executor;
            if (this.done && executorService != null) {
                this.done = false;
                executorService.execute(this.task);
            } else {
                Gdx.app.debug("Cyclic Worker " + this.name, "Skipped due to overload");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void join() {
        while (!this.done) {
            try {
                wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public static synchronized void dispose() {
        ExecutorService executorService = executor;
        if (executorService != null) {
            executorService.shutdown();
            executor = null;
        }
    }
}
