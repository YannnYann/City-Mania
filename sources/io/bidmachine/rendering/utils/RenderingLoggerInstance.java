package io.bidmachine.rendering.utils;

import io.bidmachine.rendering.internal.t;
import io.bidmachine.util.log.LoggerInstance;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class RenderingLoggerInstance implements LoggerInstance {
    public final void a(Object obj, Function0 function0) {
        if (t.b()) {
            if (obj != null) {
                t.a(obj, (String) function0.invoke(), new Object[0]);
            } else {
                t.a((String) function0.invoke(), new Object[0]);
            }
        }
    }

    public final void b(Object obj, Function0 function0) {
        if (t.b()) {
            if (obj != null) {
                t.b(obj, (String) function0.invoke(), new Object[0]);
            } else {
                t.b((String) function0.invoke(), new Object[0]);
            }
        }
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void d(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        b(obj, messageBuilder);
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void e(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        a(obj, messageBuilder);
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void w(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        b(obj, messageBuilder);
    }
}
