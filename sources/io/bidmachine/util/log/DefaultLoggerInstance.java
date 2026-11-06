package io.bidmachine.util.log;

import android.util.Log;
import androidx.room.RoomDatabase;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: DefaultLoggerInstance.kt */
/* JADX INFO: loaded from: classes5.dex */
public class DefaultLoggerInstance implements LoggerInstance {
    public static final Companion Companion = new Companion(null);
    public boolean isEnabled;
    public final String tag;

    public DefaultLoggerInstance(String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.tag = tag;
        this.isEnabled = true;
    }

    public final void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void d(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        prepareAndLog$default(this, 3, obj, messageBuilder, null, 8, null);
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void w(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        prepareAndLog$default(this, 5, obj, messageBuilder, null, 8, null);
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void e(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        prepareAndLog$default(this, 6, obj, messageBuilder, null, 8, null);
    }

    public void e(Object obj, Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        prepareAndLog$default(this, 6, obj, null, throwable, 4, null);
    }

    public boolean isLoggable(int i) {
        return this.isEnabled;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void prepareAndLog$default(DefaultLoggerInstance defaultLoggerInstance, int i, Object obj, Function0 function0, Throwable th, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: prepareAndLog");
        }
        if ((i2 & 4) != 0) {
            function0 = null;
        }
        if ((i2 & 8) != 0) {
            th = null;
        }
        defaultLoggerInstance.prepareAndLog(i, obj, function0, th);
    }

    public final void prepareAndLog(int i, Object obj, Function0<String> function0, Throwable th) {
        if (isLoggable(i)) {
            log(i, buildMessage(obj, function0, th));
        }
    }

    public final void log(int i, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (message.length() > 1000) {
            int length = (message.length() + RoomDatabase.MAX_BIND_PARAMETER_CNT) / 1000;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                String str = this.tag;
                int i4 = i3 + 1000;
                String strSubstring = message.substring(i3, Math.min(message.length(), i4));
                Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                printLog(i, str, strSubstring);
                i2++;
                i3 = i4;
            }
            return;
        }
        printLog(i, this.tag, message);
    }

    public final void printLog(int i, String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Log.println(i, tag, message);
    }

    public final String buildMessage(Object obj, Function0<String> function0, Throwable th) {
        StringBuilder sb = new StringBuilder();
        if (obj != null) {
            sb.append('[' + obj + "] ");
        }
        if (function0 != null) {
            sb.append(function0.invoke());
        }
        if (th != null) {
            if (!StringsKt__StringsKt.isBlank(sb)) {
                sb.append("\n");
            }
            sb.append(buildStackTraceString(th));
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "sb.toString()");
        return string;
    }

    public final String buildStackTraceString(Throwable th) {
        StringWriter stringWriter = new StringWriter(256);
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String string = stringWriter.toString();
        Intrinsics.checkNotNullExpressionValue(string, "sw.toString()");
        return string;
    }

    /* JADX INFO: compiled from: DefaultLoggerInstance.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }
}
