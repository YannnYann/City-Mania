package org.chromium.net.impl;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;
import org.chromium.net.impl.JavaUrlRequestUtils;

/* JADX INFO: loaded from: classes5.dex */
public abstract class JavaUploadDataSinkBase extends UploadDataSink {
    public ByteBuffer mBuffer;
    public final Executor mExecutor;
    public int mReadCount;
    public final AtomicInteger mSinkState = new AtomicInteger(3);
    public long mTotalBytes;
    public final VersionSafeCallbacks$UploadDataProviderWrapper mUploadProvider;
    public final Executor mUserUploadExecutor;
    public long mWrittenBytes;

    public abstract void finish() throws IOException;

    public abstract Runnable getErrorSettingRunnable(JavaUrlRequestUtils.CheckedRunnable runnable);

    public abstract Runnable getUploadErrorSettingRunnable(JavaUrlRequestUtils.CheckedRunnable runnable);

    public abstract void initializeRead() throws IOException;

    public abstract void initializeStart(long totalBytes);

    public abstract int processSuccessfulRead(ByteBuffer buffer) throws IOException;

    public abstract void processUploadError(final Throwable error);

    public JavaUploadDataSinkBase(final Executor userExecutor, Executor executor, UploadDataProvider provider) {
        this.mUserUploadExecutor = new Executor(this) { // from class: org.chromium.net.impl.JavaUploadDataSinkBase.1
            public final /* synthetic */ JavaUploadDataSinkBase this$0;

            {
                this.this$0 = this;
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                try {
                    userExecutor.execute(runnable);
                } catch (RejectedExecutionException e) {
                    this.this$0.processUploadError(e);
                }
            }
        };
        this.mExecutor = executor;
        this.mUploadProvider = new VersionSafeCallbacks$UploadDataProviderWrapper(provider);
    }

    @Override // org.chromium.net.UploadDataSink
    public void onReadSucceeded(final boolean finalChunk) {
        if (!this.mSinkState.compareAndSet(0, 2)) {
            throw new IllegalStateException("onReadSucceeded() called when not awaiting a read result; in state: " + this.mSinkState.get());
        }
        executeOnExecutor(getErrorSettingRunnable(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda1
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws Exception {
                this.f$0.lambda$onReadSucceeded$0(finalChunk);
            }
        }), "onReadSucceeded");
    }

    public final /* synthetic */ void lambda$onReadSucceeded$0(boolean z) throws Exception {
        long j = this.mTotalBytes;
        if (j != -1 && j - this.mWrittenBytes < this.mBuffer.remaining()) {
            processUploadError(new IllegalArgumentException(String.format(Locale.getDefault(), "Read upload data length %d exceeds expected length %d", Long.valueOf(this.mWrittenBytes + ((long) this.mBuffer.remaining())), Long.valueOf(this.mTotalBytes))));
            return;
        }
        if (this.mBuffer.remaining() == 0 && !z) {
            processUploadError(new IllegalStateException("Bytes read can't be zero except for last chunk!"));
            return;
        }
        long jProcessSuccessfulRead = this.mWrittenBytes + ((long) processSuccessfulRead(this.mBuffer));
        this.mWrittenBytes = jProcessSuccessfulRead;
        long j2 = this.mTotalBytes;
        if (jProcessSuccessfulRead < j2 || (j2 == -1 && !z)) {
            this.mSinkState.set(0);
            readFromProvider();
        } else if (j2 == -1) {
            finish();
        } else if (j2 == jProcessSuccessfulRead) {
            finish();
        } else {
            processUploadError(new IllegalArgumentException(String.format(Locale.getDefault(), "Read upload data length %d exceeds expected length %d", Long.valueOf(this.mWrittenBytes), Long.valueOf(this.mTotalBytes))));
        }
    }

    @Override // org.chromium.net.UploadDataSink
    public void onRewindSucceeded() {
        if (!this.mSinkState.compareAndSet(1, 2)) {
            throw new IllegalStateException("onRewindSucceeded() called when not awaiting a rewind; in state: " + this.mSinkState.get());
        }
        startRead();
    }

    @Override // org.chromium.net.UploadDataSink
    public void onReadError(Exception exception) {
        processUploadError(exception);
    }

    @Override // org.chromium.net.UploadDataSink
    public void onRewindError(Exception exception) {
        processUploadError(exception);
    }

    public final void startRead() {
        executeOnExecutor(getErrorSettingRunnable(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda3
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws Exception {
                this.f$0.lambda$startRead$1();
            }
        }), "startRead");
    }

    public final /* synthetic */ void lambda$startRead$1() throws Exception {
        initializeRead();
        this.mSinkState.set(0);
        readFromProvider();
    }

    public final void readFromProvider() {
        executeOnUploadExecutor(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda5
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws Exception {
                this.f$0.lambda$readFromProvider$3();
            }
        }, "readFromProvider");
    }

    public final /* synthetic */ void lambda$readFromProvider$3() throws Exception {
        this.mUploadProvider.read(this, this.mBuffer);
        this.mExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$readFromProvider$2();
            }
        });
    }

    public final /* synthetic */ void lambda$readFromProvider$2() {
        this.mReadCount++;
    }

    public final void executeOnExecutor(final Runnable runnable, final String name) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("JavaUploadDataSinkBase#executeOnExecutor " + name);
        try {
            this.mExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    JavaUploadDataSinkBase.$r8$lambda$Skz_oWstgCsE5yV2p_g6vrBh_QI(name, runnable);
                }
            });
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static /* synthetic */ void $r8$lambda$Skz_oWstgCsE5yV2p_g6vrBh_QI(String str, Runnable runnable) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("JavaUploadDataSinkBase#executeOnExecutor " + str + " running callback");
        try {
            runnable.run();
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public final void executeOnUploadExecutor(final JavaUrlRequestUtils.CheckedRunnable runnable, final String name) {
        try {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUploadDataSinkBase#executeOnUploadExecutor " + name);
            try {
                this.mUserUploadExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$executeOnUploadExecutor$5(name, runnable);
                    }
                });
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } finally {
            }
        } catch (RejectedExecutionException e) {
            processUploadError(e);
        }
    }

    public final /* synthetic */ void lambda$executeOnUploadExecutor$5(String str, JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUploadDataSinkBase#executeOnUploadExecutor " + str + " running callback");
        try {
            getUploadErrorSettingRunnable(checkedRunnable).run();
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public void start(final boolean firstTime) {
        executeOnUploadExecutor(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUploadDataSinkBase$$ExternalSyntheticLambda0
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws Exception {
                this.f$0.lambda$start$6(firstTime);
            }
        }, "start");
    }

    public final /* synthetic */ void lambda$start$6(boolean z) throws Exception {
        long length = this.mUploadProvider.getLength();
        this.mTotalBytes = length;
        if (length == 0) {
            finish();
            return;
        }
        if (length > 0 && length < 8192) {
            this.mBuffer = ByteBuffer.allocateDirect(((int) length) + 1);
        } else {
            this.mBuffer = ByteBuffer.allocateDirect(8192);
        }
        initializeStart(this.mTotalBytes);
        if (z) {
            startRead();
        } else {
            this.mSinkState.set(1);
            this.mUploadProvider.rewind(this);
        }
    }

    public int getReadCount() {
        return this.mReadCount;
    }
}
