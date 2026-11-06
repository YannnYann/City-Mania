package io.bidmachine.core;

import io.bidmachine.util.log.LoggerSettings;
import io.bidmachine.utils.lazy.LazyValue;
import io.bidmachine.utils.log.DefaultLoggerInstance;
import io.bidmachine.utils.log.EmptyLoggerInstance;
import io.bidmachine.utils.log.LoggerInstance;

/* JADX INFO: loaded from: classes4.dex */
public class Logger {
    public static boolean isLoggingEnabled = false;
    public static volatile LoggerInstance enabledInstance = new DefaultLoggerInstance("BidMachineLog");
    public static volatile LoggerInstance disabledInstance = new EmptyLoggerInstance();
    public static volatile LoggerInstance instance = disabledInstance;

    public static void d(Object obj, String str) {
        instance.d(obj, str);
    }

    public static boolean isLoggingEnabled() {
        return isLoggingEnabled;
    }

    public static void setEnabledInstance(LoggerInstance loggerInstance) {
        enabledInstance = loggerInstance;
        setLoggingEnabled(isLoggingEnabled);
    }

    public static void setLoggingEnabled(boolean z) {
        isLoggingEnabled = z;
        instance = z ? enabledInstance : disabledInstance;
        LoggerSettings.setEnable(z);
    }

    public static void w(Object obj, String str) {
        instance.w(obj, str);
    }

    public static void d(String str) {
        instance.d(str);
    }

    public static void w(String str) {
        instance.w(str);
    }

    public static void d(Object obj, LazyValue<String> lazyValue) {
        instance.d(obj, lazyValue);
    }

    public static void e(String str) {
        instance.e(str);
    }

    public static void w(Throwable th) {
        instance.w(th);
    }

    public static void d(LazyValue<String> lazyValue) {
        instance.d(lazyValue);
    }

    public static void e(Throwable th) {
        instance.e(th);
    }

    public static void w(Object obj, LazyValue<String> lazyValue) {
        instance.w(obj, lazyValue);
    }

    public static void e(Object obj, LazyValue<String> lazyValue) {
        instance.e(obj, lazyValue);
    }

    public static void w(Object obj, Throwable th) {
        instance.w(obj, th);
    }

    public static void e(LazyValue<String> lazyValue) {
        instance.e(lazyValue);
    }

    public static void w(LazyValue<String> lazyValue) {
        instance.w(lazyValue);
    }
}
