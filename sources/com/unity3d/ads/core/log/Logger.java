package com.unity3d.ads.core.log;

import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface Logger {
    void debug(String str);

    void debug(Function0<String> function0);

    void error(String str, Throwable th);

    LogLevelInternal getLogLevel();

    void info(String str);

    void setLogLevel(LogLevelInternal logLevelInternal);

    void trace(String str, Throwable th);

    void trace(Function0<String> function0);

    /* JADX INFO: compiled from: Logger.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ void error$default(Logger logger, String str, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: error");
            }
            if ((i & 2) != 0) {
                th = null;
            }
            logger.error(str, th);
        }

        public static /* synthetic */ void trace$default(Logger logger, String str, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: trace");
            }
            if ((i & 2) != 0) {
                th = null;
            }
            logger.trace(str, th);
        }
    }
}
