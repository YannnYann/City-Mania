package io.bidmachine.iab.utils;

import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated(since = "3.6.0")
public class Logger {
    public static LogLevel c = LogLevel.error;
    public final String a;
    public final List b = new CopyOnWriteArrayList();

    @Deprecated(since = "3.6.0")
    public enum LogLevel {
        debug(1),
        info(2),
        warning(3),
        error(4),
        none(5);

        public final int a;

        LogLevel(int value) {
            this.a = value;
        }

        public int getValue() {
            return this.a;
        }
    }

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[LogLevel.values().length];
            a = iArr;
            try {
                iArr[LogLevel.debug.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[LogLevel.error.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[LogLevel.warning.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[LogLevel.info.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public Logger(String tag) {
        this.a = tag;
    }

    public final void a(LogLevel logLevel, String str) {
        int i = a.a[logLevel.ordinal()];
        if (i == 1) {
            Log.d(this.a, str);
        } else if (i == 2) {
            Log.e(this.a, str);
        } else {
            if (i != 3) {
                return;
            }
            Log.w(this.a, str);
        }
    }

    public final void b(LogLevel logLevel, String str) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((LogListener) it.next()).onLog(logLevel, this.a, str);
        }
    }

    public void d(String subTag, String message, Object... args) {
        a(LogLevel.debug, subTag, message, args);
    }

    public void e(String subTag, String message, Object... args) {
        a(LogLevel.error, subTag, message, args);
    }

    public void setLoggingLevel(LogLevel logLevel) {
        Log.d(this.a, String.format("Changing logging level. From: %s, To: %s", c, logLevel));
        c = logLevel;
    }

    public void e(String subTag, Throwable throwable) {
        a(LogLevel.error, subTag, throwable.toString(), new Object[0]);
    }

    public final boolean b(LogLevel logLevel) {
        LogLevel logLevel2 = c;
        return logLevel2 != null && logLevel2.getValue() <= logLevel.getValue();
    }

    public final void a(LogLevel logLevel, String str, String str2, Object... objArr) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        boolean zB = b(logLevel);
        boolean zA = a();
        if (zB || zA) {
            String strA = a(str, str2, objArr);
            if (zB) {
                a(logLevel, strA);
            }
            if (zA) {
                b(logLevel, strA);
            }
        }
    }

    public final boolean a() {
        return !this.b.isEmpty();
    }

    public static String a(String str, String str2, Object... objArr) {
        String strA = a(str, str2);
        if (objArr == null || objArr.length == 0) {
            return strA;
        }
        try {
            return String.format(strA, objArr);
        } catch (Throwable unused) {
            return strA;
        }
    }

    public static String a(String str, String str2) {
        return String.format("[%s] %s", str, str2);
    }
}
