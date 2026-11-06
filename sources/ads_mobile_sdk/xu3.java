package ads_mobile_sdk;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class xu3 implements zr1 {
    public static final xu3 a = new xu3();

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.a04 r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.wu3
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.wu3 r0 = (ads_mobile_sdk.wu3) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.wu3 r0 = new ads_mobile_sdk.wu3
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L43
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.vu3 r6 = new ads_mobile_sdk.vu3
            r2 = 0
            r6.<init>(r2)
            r0.c = r3
            java.lang.Object r5 = r5.a(r6, r0)
            if (r5 != r1) goto L43
            return r1
        L43:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.xu3.a(ads_mobile_sdk.a04, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.zr1
    public final /* bridge */ /* synthetic */ Object a(Object obj, or1 or1Var) {
        return a((a04) obj, (Continuation) or1Var);
    }
}
