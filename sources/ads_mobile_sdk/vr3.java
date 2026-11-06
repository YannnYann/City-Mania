package ads_mobile_sdk;

import java.lang.Thread;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vr3 implements Thread.UncaughtExceptionHandler {
    public final /* synthetic */ as3 a;
    public final /* synthetic */ Thread.UncaughtExceptionHandler b;

    public vr3(as3 as3Var, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = as3Var;
        this.b = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable throwable) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        Intrinsics.checkNotNullParameter(thread, "thread");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        try {
            this.a.a(throwable);
            uncaughtExceptionHandler = this.b;
            if (uncaughtExceptionHandler == null) {
                return;
            }
        } catch (Throwable unused) {
            uncaughtExceptionHandler = this.b;
            if (uncaughtExceptionHandler == null) {
                return;
            }
        }
        uncaughtExceptionHandler.uncaughtException(thread, throwable);
    }
}
