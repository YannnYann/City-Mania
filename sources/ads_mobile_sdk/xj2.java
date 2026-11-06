package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xj2 implements ai1 {
    public final ec3 a;
    public final im2 b;
    public final al2 c;
    public final BaseRequest d;
    public final j53 e;
    public final Optional f;
    public final cl2 g;
    public final ur3 h;
    public final AtomicBoolean i;

    public xj2(ec3 serverTransaction, im2 persistentCacheManager, al2 persistentCacheFillManager, BaseRequest baseRequest, j53 requestType, Optional numberOfAdsRequested, cl2 flags, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        Intrinsics.checkNotNullParameter(persistentCacheFillManager, "persistentCacheFillManager");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(numberOfAdsRequested, "numberOfAdsRequested");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = serverTransaction;
        this.b = persistentCacheManager;
        this.c = persistentCacheFillManager;
        this.d = baseRequest;
        this.e = requestType;
        this.f = numberOfAdsRequested;
        this.g = flags;
        this.h = traceLogger;
        this.i = new AtomicBoolean(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.ai1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof ads_mobile_sdk.vj2
            if (r0 == 0) goto L13
            r0 = r5
            ads_mobile_sdk.vj2 r0 = (ads_mobile_sdk.vj2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.vj2 r0 = new ads_mobile_sdk.vj2
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.xj2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r5)
            goto L63
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.cl2 r5 = r4.g
            boolean r5 = r5.a()
            if (r5 == 0) goto L84
            ads_mobile_sdk.ec3 r5 = r4.a
            boolean r5 = r5.c
            if (r5 == 0) goto L84
            java.util.concurrent.atomic.AtomicBoolean r5 = r4.i
            boolean r5 = r5.get()
            if (r5 != 0) goto L84
            ads_mobile_sdk.ec3 r5 = r4.a
            ads_mobile_sdk.om2 r5 = r5.d
            if (r5 == 0) goto L84
            ads_mobile_sdk.im2 r2 = r4.b
            r0.a = r4
            r0.d = r3
            r2.getClass()
            java.lang.Object r5 = ads_mobile_sdk.im2.a(r2, r5, r0)
            if (r5 != r1) goto L62
            return r1
        L62:
            r0 = r4
        L63:
            ads_mobile_sdk.v01 r5 = (ads_mobile_sdk.v01) r5
            boolean r1 = r5 instanceof ads_mobile_sdk.i01
            if (r1 == 0) goto L84
            ads_mobile_sdk.ur3 r0 = r0.h
            r1 = r5
            ads_mobile_sdk.i01 r1 = (ads_mobile_sdk.i01) r1
            java.lang.Throwable r1 = r1.b()
            if (r1 != 0) goto L7d
            java.lang.Exception r1 = new java.lang.Exception
            java.lang.String r5 = r5.toString()
            r1.<init>(r5)
        L7d:
            ads_mobile_sdk.as3 r0 = (ads_mobile_sdk.as3) r0
            java.lang.String r5 = "Cache status reset failure on ad destroyed"
            r0.a(r5, r1)
        L84:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.xj2.a(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.ai1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object r(kotlin.coroutines.Continuation r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.wj2
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.wj2 r0 = (ads_mobile_sdk.wj2) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.wj2 r0 = new ads_mobile_sdk.wj2
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.xj2 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L64
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L33:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.cl2 r6 = r5.g
            boolean r6 = r6.a()
            if (r6 == 0) goto Lab
            ads_mobile_sdk.ec3 r6 = r5.a
            boolean r6 = r6.c
            if (r6 == 0) goto Lab
            java.util.concurrent.atomic.AtomicBoolean r6 = r5.i
            r2 = 0
            boolean r6 = r6.compareAndSet(r2, r3)
            if (r6 == 0) goto Lab
            ads_mobile_sdk.ec3 r6 = r5.a
            ads_mobile_sdk.om2 r6 = r6.d
            if (r6 == 0) goto Lab
            ads_mobile_sdk.im2 r2 = r5.b
            r0.a = r5
            r0.d = r3
            r2.getClass()
            java.lang.Object r6 = ads_mobile_sdk.im2.b(r2, r6, r0)
            if (r6 != r1) goto L63
            return r1
        L63:
            r0 = r5
        L64:
            ads_mobile_sdk.v01 r6 = (ads_mobile_sdk.v01) r6
            boolean r1 = r6 instanceof ads_mobile_sdk.i01
            if (r1 == 0) goto L86
            ads_mobile_sdk.ur3 r0 = r0.h
            r1 = r6
            ads_mobile_sdk.i01 r1 = (ads_mobile_sdk.i01) r1
            java.lang.Throwable r1 = r1.b()
            if (r1 != 0) goto L7e
            java.lang.Exception r1 = new java.lang.Exception
            java.lang.String r6 = r6.toString()
            r1.<init>(r6)
        L7e:
            ads_mobile_sdk.as3 r0 = (ads_mobile_sdk.as3) r0
            java.lang.String r6 = "Cache eviction failure on impression"
            r0.a(r6, r1)
            goto Lab
        L86:
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r6 = r0.d
            boolean r1 = r6 instanceof com.google.android.libraries.ads.mobile.sdk.common.AdRequest
            r2 = 0
            if (r1 == 0) goto L90
            com.google.android.libraries.ads.mobile.sdk.common.AdRequest r6 = (com.google.android.libraries.ads.mobile.sdk.common.AdRequest) r6
            goto L91
        L90:
            r6 = r2
        L91:
            if (r6 != 0) goto L94
            goto Lab
        L94:
            ads_mobile_sdk.al2 r1 = r0.c
            ads_mobile_sdk.j53 r4 = r0.e
            java.util.Optional r0 = r0.f
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            java.lang.Object r0 = kotlin.jvm.optionals.OptionalsKt.getOrDefault(r0, r3)
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            r1.a(r6, r4, r0, r2)
        Lab:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.xj2.r(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
