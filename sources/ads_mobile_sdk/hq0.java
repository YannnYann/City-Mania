package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hq0 implements rh3 {
    public final g30 a;

    public hq0(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.EOID;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.gq0
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.gq0 r0 = (ads_mobile_sdk.gq0) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.gq0 r0 = new ads_mobile_sdk.gq0
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L42
        L29:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.g30 r7 = r6.a
            r0.c = r3
            r7.getClass()
            java.lang.Object r7 = ads_mobile_sdk.g30.g(r7, r0)
            if (r7 != r1) goto L42
            return r1
        L42:
            ads_mobile_sdk.xp0 r7 = (ads_mobile_sdk.xp0) r7
            ads_mobile_sdk.q01 r0 = new ads_mobile_sdk.q01
            ads_mobile_sdk.fq0 r1 = new ads_mobile_sdk.fq0
            r2 = 0
            if (r7 == 0) goto L50
            java.lang.String r3 = r7.w()
            goto L51
        L50:
            r3 = r2
        L51:
            if (r7 == 0) goto L5b
            long r4 = r7.x()
            java.lang.Long r2 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r4)
        L5b:
            r1.<init>(r3, r2)
            r0.<init>(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hq0.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
