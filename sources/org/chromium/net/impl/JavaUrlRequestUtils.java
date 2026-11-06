package org.chromium.net.impl;

import java.util.concurrent.Executor;
import org.chromium.net.InlineExecutionProhibitedException;

/* JADX INFO: loaded from: classes5.dex */
public final class JavaUrlRequestUtils {

    public interface CheckedRunnable {
        void run() throws Exception;
    }

    public static String stateToString(int state) {
        switch (state) {
            case 0:
                return "NOT_STARTED";
            case 1:
                return "STARTED";
            case 2:
                return "REDIRECT_RECEIVED";
            case 3:
                return "AWAITING_FOLLOW_REDIRECT";
            case 4:
                return "AWAITING_READ";
            case 5:
                return "READING";
            case 6:
                return "ERROR";
            case 7:
                return "COMPLETE";
            case 8:
                return "CANCELLED";
            default:
                throw new IllegalArgumentException("Unknown state " + state);
        }
    }

    public static final class DirectPreventingExecutor implements Executor {
        public final Executor mDelegate;

        public DirectPreventingExecutor(Executor delegate) {
            this.mDelegate = delegate;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable command) {
            InlineCheckingRunnable inlineCheckingRunnable = new InlineCheckingRunnable(command, Thread.currentThread());
            this.mDelegate.execute(inlineCheckingRunnable);
            if (inlineCheckingRunnable.mExecutedInline != null) {
                throw inlineCheckingRunnable.mExecutedInline;
            }
            inlineCheckingRunnable.mCallingThread = null;
        }

        public static final class InlineCheckingRunnable implements Runnable {
            public Thread mCallingThread;
            public final Runnable mCommand;
            public InlineExecutionProhibitedException mExecutedInline;

            public InlineCheckingRunnable(Runnable command, Thread callingThread) {
                this.mCommand = command;
                this.mCallingThread = callingThread;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (Thread.currentThread() == this.mCallingThread) {
                    this.mExecutedInline = new InlineExecutionProhibitedException();
                } else {
                    this.mCommand.run();
                }
            }
        }
    }
}
