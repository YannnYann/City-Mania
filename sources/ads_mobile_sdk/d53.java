package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d53 implements ai1 {
    public final b53 a;
    public final BaseRequest b;
    public final j53 c;

    public d53(b53 requestThrottlerV2, BaseRequest baseRequest, j53 requestType) {
        Intrinsics.checkNotNullParameter(requestThrottlerV2, "requestThrottlerV2");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        this.a = requestThrottlerV2;
        this.b = baseRequest;
        this.c = requestType;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0072, code lost:
    
        if (ads_mobile_sdk.b53.c(r7, r4, r2, r0) == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.ai1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object r(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.c53
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.c53 r0 = (ads_mobile_sdk.c53) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.c53 r0 = new ads_mobile_sdk.c53
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L75
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L34:
            ads_mobile_sdk.d53 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L56
        L3a:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.b53 r7 = r6.a
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r2 = r6.b
            java.lang.String r2 = r2.getAdUnitId()
            ads_mobile_sdk.j53 r5 = r6.c
            r0.a = r6
            r0.d = r4
            r7.getClass()
            java.lang.Object r7 = ads_mobile_sdk.b53.a(r7, r2, r5, r0)
            if (r7 != r1) goto L55
            goto L74
        L55:
            r2 = r6
        L56:
            ads_mobile_sdk.zr0 r7 = (ads_mobile_sdk.zr0) r7
            ads_mobile_sdk.zr0 r4 = ads_mobile_sdk.zr0.f
            if (r7 != r4) goto L78
            ads_mobile_sdk.b53 r7 = r2.a
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r4 = r2.b
            java.lang.String r4 = r4.getAdUnitId()
            ads_mobile_sdk.j53 r2 = r2.c
            r5 = 0
            r0.a = r5
            r0.d = r3
            r7.getClass()
            java.lang.Object r7 = ads_mobile_sdk.b53.c(r7, r4, r2, r0)
            if (r7 != r1) goto L75
        L74:
            return r1
        L75:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L78:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.d53.r(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
