package io.bidmachine.iab.vast;

import io.bidmachine.iab.utils.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class VastLog {
    public static final Logger a = new Logger("VastLog");

    public static void d(String subTag, String message, Object... args) {
        a.d(subTag, message, args);
    }

    public static void e(String subTag, String message, Object... args) {
        a.e(subTag, message, args);
    }

    public static void setLoggingLevel(Logger.LogLevel logLevel) {
        a.setLoggingLevel(logLevel);
    }

    public static void e(String subTag, Throwable throwable) {
        a.e(subTag, throwable);
    }
}
