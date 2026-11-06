package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a52 implements r41 {
    public final v3 a;

    public a52(v3 adEventEmitter) {
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        this.a = adEventEmitter;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x006d, code lost:
    
        if (r6.f(r5) == r0) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.r41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.r31 r5, java.util.Map r6, kotlin.coroutines.Continuation r7) {
        /*
            r4 = this;
            boolean r5 = r7 instanceof ads_mobile_sdk.z42
            if (r5 == 0) goto L13
            r5 = r7
            ads_mobile_sdk.z42 r5 = (ads_mobile_sdk.z42) r5
            int r0 = r5.e
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r5.e = r0
            goto L18
        L13:
            ads_mobile_sdk.z42 r5 = new ads_mobile_sdk.z42
            r5.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r5.c
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.e
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L3c
            if (r1 == r3) goto L34
            if (r1 != r2) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L70
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            java.util.Map r6 = r5.b
            ads_mobile_sdk.a52 r1 = r5.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4f
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.v3 r7 = r4.a
            r5.a = r4
            r5.b = r6
            r5.e = r3
            java.lang.Object r7 = r7.o(r5)
            if (r7 != r0) goto L4e
            goto L6f
        L4e:
            r1 = r4
        L4f:
            java.lang.String r7 = "sccg"
            java.lang.Object r6 = r6.get(r7)
            java.lang.CharSequence r6 = (java.lang.CharSequence) r6
            if (r6 == 0) goto L73
            int r6 = r6.length()
            if (r6 != 0) goto L60
            goto L73
        L60:
            ads_mobile_sdk.v3 r6 = r1.a
            r7 = 0
            r5.a = r7
            r5.b = r7
            r5.e = r2
            kotlin.Unit r5 = r6.f(r5)
            if (r5 != r0) goto L70
        L6f:
            return r0
        L70:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L73:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.a52.a(ads_mobile_sdk.r31, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_NATIVE_CLICK_RECORDED;
    }
}
