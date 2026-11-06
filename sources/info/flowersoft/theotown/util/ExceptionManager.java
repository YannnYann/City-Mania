package info.flowersoft.theotown.util;

import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public class ExceptionManager {
    public final ExceptionHandler exceptionHandler;
    public long ignoredExceptionCountInTimeWindow;
    public final HashSet<String> ignoredExceptions = new HashSet<>();
    public long lastExceptionMs;
    public boolean reachedEndOfFrame;

    public interface ExceptionHandler {
        void bind(ExceptionManager exceptionManager);

        void handle(Throwable th);

        boolean isPaused();
    }

    public ExceptionManager(ExceptionHandler exceptionHandler) {
        this.exceptionHandler = exceptionHandler;
        exceptionHandler.bind(this);
    }

    public boolean shallIgnoreException(Throwable th) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.lastExceptionMs;
        long j2 = jCurrentTimeMillis - j;
        this.lastExceptionMs = j + j2;
        if (j2 > 100) {
            this.ignoredExceptionCountInTimeWindow = 0L;
        }
        String exceptionKey = getExceptionKey(th);
        if (this.ignoredExceptions.contains(exceptionKey)) {
            long j3 = this.ignoredExceptionCountInTimeWindow;
            if (j3 > 60000 || (!this.reachedEndOfFrame && j3 > 60)) {
                this.ignoredExceptions.remove(exceptionKey);
            } else {
                this.ignoredExceptionCountInTimeWindow = j3 + 1;
                this.reachedEndOfFrame = false;
                return true;
            }
        }
        return false;
    }

    public void handleException(Throwable th) {
        this.exceptionHandler.handle(th);
    }

    public boolean isPaused() {
        return this.exceptionHandler.isPaused();
    }

    public void ignoreException(Throwable th) {
        this.ignoredExceptions.add(getExceptionKey(th));
    }

    public void indicateReachedEndOfFrame() {
        this.reachedEndOfFrame = true;
    }

    public final String getExceptionKey(Throwable th) {
        String message = th.getMessage();
        if (message == null) {
            return "";
        }
        return Hashing.md5(message);
    }
}
