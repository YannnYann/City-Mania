package io.bidmachine.analytics.internal.t;

import java.lang.reflect.Method;
import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: loaded from: classes4.dex */
public final class f {
    private Object a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;

    public f() {
        Result.Companion companion = Result.Companion;
        this.a = Result.m2760constructorimpl(ResultKt.createFailure(new NullPointerException()));
        this.b = "amF2YS5sYW5nLlByb2Nlc3NCdWlsZGVy";
        this.c = "c3RhcnQ=";
        this.d = "Z2V0SW5wdXRTdHJlYW0=";
        this.e = "ZGVzdHJveQ==";
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.io.InputStream a(java.util.List r4) {
        /*
            r3 = this;
            r0 = 0
            kotlin.Result$Companion r1 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L36
            java.lang.String r1 = r3.b     // Catch: java.lang.Throwable -> L36
            java.lang.String r1 = io.bidmachine.analytics.internal.I.g.a(r1)     // Catch: java.lang.Throwable -> L36
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Throwable -> L36
            java.lang.Class<java.util.List> r2 = java.util.List.class
            java.lang.Class[] r2 = new java.lang.Class[]{r2}     // Catch: java.lang.Throwable -> L36
            java.lang.reflect.Constructor r2 = r1.getConstructor(r2)     // Catch: java.lang.Throwable -> L36
            java.util.List r4 = kotlin.collections.CollectionsKt___CollectionsKt.toList(r4)     // Catch: java.lang.Throwable -> L36
            java.lang.Object[] r4 = new java.lang.Object[]{r4}     // Catch: java.lang.Throwable -> L36
            java.lang.Object r4 = r2.newInstance(r4)     // Catch: java.lang.Throwable -> L36
            java.lang.String r2 = r3.c     // Catch: java.lang.Throwable -> L36
            java.lang.String r2 = io.bidmachine.analytics.internal.I.g.a(r2)     // Catch: java.lang.Throwable -> L36
            java.lang.reflect.Method r1 = r1.getMethod(r2, r0)     // Catch: java.lang.Throwable -> L36
            java.lang.Object r4 = r1.invoke(r4, r0)     // Catch: java.lang.Throwable -> L36
            java.lang.Object r4 = kotlin.Result.m2760constructorimpl(r4)     // Catch: java.lang.Throwable -> L36
            goto L41
        L36:
            r4 = move-exception
            kotlin.Result$Companion r1 = kotlin.Result.Companion
            java.lang.Object r4 = kotlin.ResultKt.createFailure(r4)
            java.lang.Object r4 = kotlin.Result.m2760constructorimpl(r4)
        L41:
            r3.a = r4
            boolean r1 = kotlin.Result.m2766isSuccessimpl(r4)
            if (r1 == 0) goto L70
            if (r4 == 0) goto L62
            java.lang.Class r1 = r4.getClass()     // Catch: java.lang.Throwable -> L60
            java.lang.String r2 = r3.d     // Catch: java.lang.Throwable -> L60
            java.lang.String r2 = io.bidmachine.analytics.internal.I.g.a(r2)     // Catch: java.lang.Throwable -> L60
            java.lang.reflect.Method r1 = r1.getMethod(r2, r0)     // Catch: java.lang.Throwable -> L60
            if (r1 == 0) goto L62
            java.lang.Object r4 = r1.invoke(r4, r0)     // Catch: java.lang.Throwable -> L60
            goto L63
        L60:
            r4 = move-exception
            goto L6a
        L62:
            r4 = r0
        L63:
            java.io.InputStream r4 = (java.io.InputStream) r4     // Catch: java.lang.Throwable -> L60
            java.lang.Object r4 = kotlin.Result.m2760constructorimpl(r4)     // Catch: java.lang.Throwable -> L60
            goto L74
        L6a:
            kotlin.Result$Companion r1 = kotlin.Result.Companion
            java.lang.Object r4 = kotlin.ResultKt.createFailure(r4)
        L70:
            java.lang.Object r4 = kotlin.Result.m2760constructorimpl(r4)
        L74:
            boolean r1 = kotlin.Result.m2765isFailureimpl(r4)
            if (r1 == 0) goto L7b
            goto L7c
        L7b:
            r0 = r4
        L7c:
            java.io.InputStream r0 = (java.io.InputStream) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.t.f.a(java.util.List):java.io.InputStream");
    }

    public final void a() {
        Object obj = this.a;
        if (!Result.m2766isSuccessimpl(obj)) {
            Result.m2760constructorimpl(obj);
            return;
        }
        Object objInvoke = null;
        if (obj != null) {
            try {
                Method method = obj.getClass().getMethod(io.bidmachine.analytics.internal.I.g.a(this.e), null);
                if (method != null) {
                    objInvoke = method.invoke(obj, null);
                }
            } catch (Throwable th) {
                Result.Companion companion = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th));
                return;
            }
        }
        Result.m2760constructorimpl(objInvoke);
    }
}
