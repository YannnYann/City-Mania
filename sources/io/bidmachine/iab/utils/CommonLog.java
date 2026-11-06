package io.bidmachine.iab.utils;

/* JADX INFO: loaded from: classes5.dex */
public class CommonLog {
    public static final Logger a = new Logger("CommonLog");

    public static void d(String subTag, String message, Object... args) {
        a.d(subTag, message, args);
    }

    public static void e(String subTag, String message, Object... args) {
        a.e(subTag, message, args);
    }

    public static void e(String subTag, Throwable throwable) {
        a.e(subTag, throwable);
    }
}
