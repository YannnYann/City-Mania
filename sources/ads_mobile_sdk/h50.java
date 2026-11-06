package ads_mobile_sdk;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class h50 implements zr1 {
    public final /* synthetic */ i2 a;
    public final /* synthetic */ cw2 b;

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.a04 r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.g50
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.g50 r0 = (ads_mobile_sdk.g50) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.g50 r0 = new ads_mobile_sdk.g50
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L57
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.i2 r7 = r5.a
            boolean r7 = r7.H0
            if (r7 == 0) goto L5a
            ads_mobile_sdk.i50 r7 = new ads_mobile_sdk.i50
            ads_mobile_sdk.cw2 r2 = r5.b
            java.lang.Object r2 = r2.get()
            java.lang.String r4 = "get(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            ads_mobile_sdk.r41 r2 = (ads_mobile_sdk.r41) r2
            r7.<init>(r2)
            r0.c = r3
            java.lang.String r2 = "/writeToLocalStorage"
            java.lang.Object r6 = r6.a(r2, r7, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L5a:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h50.a(ads_mobile_sdk.a04, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public h50(i2 i2Var, dw2 dw2Var) {
        this.a = i2Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.zr1
    public final /* bridge */ /* synthetic */ Object a(Object obj, or1 or1Var) {
        return a((a04) obj, (Continuation) or1Var);
    }
}
