package io.bidmachine.utils.log;

import android.util.Log;
import androidx.room.RoomDatabase;
import com.ironsource.C3522b4;
import io.bidmachine.utils.lazy.LazyValue;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultLoggerInstance implements LoggerInstance {
    public final String tag;

    public DefaultLoggerInstance(String str) {
        this.tag = str;
    }

    public static String buildStackTraceString(Throwable th) {
        StringWriter stringWriter = new StringWriter(256);
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
        th.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }

    public String buildMessage(Object obj, String str, LazyValue<String> lazyValue, Throwable th) {
        StringBuilder sb = new StringBuilder();
        if (obj != null) {
            sb.append(C3522b4.j.d);
            sb.append(obj);
            sb.append("] ");
        }
        if (str != null) {
            sb.append(str);
        } else if (lazyValue != null) {
            sb.append(lazyValue.get());
        }
        if (th != null) {
            if (sb.length() != 0) {
                sb.append("\n");
            }
            sb.append(buildStackTraceString(th));
        }
        return sb.toString();
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void d(Object obj, String str) {
        prepareAndLog(3, obj, str, null, null);
    }

    public boolean isLoggable(int i) {
        return true;
    }

    public void log(int i, String str) {
        if (str.length() <= 1000) {
            printLog(i, this.tag, str);
            return;
        }
        int length = (str.length() + RoomDatabase.MAX_BIND_PARAMETER_CNT) / 1000;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i3 + 1000;
            printLog(i, this.tag, str.substring(i3, Math.min(str.length(), i4)));
            i2++;
            i3 = i4;
        }
    }

    public void prepareAndLog(int i, Object obj, String str, LazyValue<String> lazyValue, Throwable th) {
        if (isLoggable(i)) {
            log(i, buildMessage(obj, str, lazyValue, th));
        }
    }

    public void printLog(int i, String str, String str2) {
        Log.println(i, str, str2);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void w(Object obj, String str) {
        prepareAndLog(5, obj, str, null, null);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void d(String str) {
        prepareAndLog(3, null, str, null, null);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void e(String str) {
        prepareAndLog(6, null, str, null, null);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void w(String str) {
        prepareAndLog(5, null, str, null, null);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void d(Object obj, LazyValue<String> lazyValue) {
        prepareAndLog(3, obj, null, lazyValue, null);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void e(Throwable th) {
        prepareAndLog(6, null, null, null, th);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void w(Object obj, LazyValue<String> lazyValue) {
        prepareAndLog(5, obj, null, lazyValue, null);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void d(LazyValue<String> lazyValue) {
        prepareAndLog(3, null, null, lazyValue, null);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void e(Object obj, LazyValue<String> lazyValue) {
        prepareAndLog(6, obj, null, lazyValue, null);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void w(Object obj, Throwable th) {
        prepareAndLog(5, obj, null, null, th);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void w(LazyValue<String> lazyValue) {
        prepareAndLog(5, null, null, lazyValue, null);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void e(LazyValue<String> lazyValue) {
        prepareAndLog(6, null, null, lazyValue, null);
    }

    @Override // io.bidmachine.utils.log.LoggerInstance
    public void w(Throwable th) {
        prepareAndLog(5, null, null, null, th);
    }
}
