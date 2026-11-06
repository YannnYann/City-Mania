package ads_mobile_sdk;

import android.content.Context;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bm {
    public final Context a;
    public final ur3 b;
    public final tx c;
    public final Lazy d;

    public bm(Context applicationContext, ur3 traceLogger, tx clock) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = applicationContext;
        this.b = traceLogger;
        this.c = clock;
        this.d = LazyKt__LazyJVMKt.lazy(new yl(this));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.bm r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof ads_mobile_sdk.zl
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.zl r0 = (ads_mobile_sdk.zl) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.zl r0 = new ads_mobile_sdk.zl
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            ads_mobile_sdk.bm r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Exception -> L2b
            goto L6c
        L2b:
            r5 = move-exception
            goto L6f
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.a = r4     // Catch: java.lang.Exception -> L2b
            r0.d = r3     // Catch: java.lang.Exception -> L2b
            kotlinx.coroutines.CancellableContinuationImpl r5 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Exception -> L2b
            kotlin.coroutines.Continuation r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.intercepted(r0)     // Catch: java.lang.Exception -> L2b
            r5.<init>(r2, r3)     // Catch: java.lang.Exception -> L2b
            r5.initCancellability()     // Catch: java.lang.Exception -> L2b
            kotlin.Lazy r2 = r4.d     // Catch: java.lang.Exception -> L2b
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Exception -> L2b
            com.google.android.gms.appset.AppSetIdClient r2 = (com.google.android.gms.appset.AppSetIdClient) r2     // Catch: java.lang.Exception -> L2b
            com.google.android.gms.tasks.Task r2 = r2.getAppSetIdInfo()     // Catch: java.lang.Exception -> L2b
            ads_mobile_sdk.am r3 = new ads_mobile_sdk.am     // Catch: java.lang.Exception -> L2b
            r3.<init>(r4, r5)     // Catch: java.lang.Exception -> L2b
            r2.addOnCompleteListener(r3)     // Catch: java.lang.Exception -> L2b
            java.lang.Object r5 = r5.getResult()     // Catch: java.lang.Exception -> L2b
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()     // Catch: java.lang.Exception -> L2b
            if (r5 != r2) goto L69
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)     // Catch: java.lang.Exception -> L2b
        L69:
            if (r5 != r1) goto L6c
            return r1
        L6c:
            ads_mobile_sdk.v01 r5 = (ads_mobile_sdk.v01) r5     // Catch: java.lang.Exception -> L2b
            return r5
        L6f:
            ads_mobile_sdk.ur3 r4 = r4.b
            ads_mobile_sdk.as3 r4 = (ads_mobile_sdk.as3) r4
            java.lang.String r0 = "Exception while getting AppSet Id"
            r4.a(r0, r5)
            ads_mobile_sdk.j01 r4 = new ads_mobile_sdk.j01
            r0 = 6
            r1 = 0
            r4.<init>(r5, r1, r1, r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bm.a(ads_mobile_sdk.bm, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
