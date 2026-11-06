package androidx.work;

import android.annotation.SuppressLint;

/* JADX INFO: loaded from: classes.dex */
public interface Operation {

    @SuppressLint({"SyntheticAccessor"})
    public static final State.IN_PROGRESS IN_PROGRESS;

    @SuppressLint({"SyntheticAccessor"})
    public static final State.SUCCESS SUCCESS;

    static {
        SUCCESS = new State.SUCCESS();
        IN_PROGRESS = new State.IN_PROGRESS();
    }

    public static abstract class State {

        public static final class SUCCESS extends State {
            public SUCCESS() {
            }

            public String toString() {
                return "SUCCESS";
            }
        }

        public static final class IN_PROGRESS extends State {
            public IN_PROGRESS() {
            }

            public String toString() {
                return "IN_PROGRESS";
            }
        }

        public static final class FAILURE extends State {
            public final Throwable mThrowable;

            public FAILURE(Throwable exception) {
                this.mThrowable = exception;
            }

            public Throwable getThrowable() {
                return this.mThrowable;
            }

            public String toString() {
                return String.format("FAILURE (%s)", this.mThrowable.getMessage());
            }
        }
    }
}
