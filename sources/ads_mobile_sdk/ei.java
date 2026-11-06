package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ei implements rh3 {
    public final g30 a;

    public ei(g30 consentManager) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.a = consentManager;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.AMAZON_FIRE_AD_ID;
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
            boolean r0 = r7 instanceof ads_mobile_sdk.di
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.di r0 = (ads_mobile_sdk.di) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.di r0 = new ads_mobile_sdk.di
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r0 = r0.a
            java.lang.String r0 = (java.lang.String) r0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L63
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L38:
            java.lang.Object r2 = r0.a
            ads_mobile_sdk.ei r2 = (ads_mobile_sdk.ei) r2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L51
        L40:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.g30 r7 = r6.a
            r0.a = r6
            r0.d = r4
            java.lang.Object r7 = r7.D(r0)
            if (r7 != r1) goto L50
            goto L5f
        L50:
            r2 = r6
        L51:
            java.lang.String r7 = (java.lang.String) r7
            ads_mobile_sdk.g30 r2 = r2.a
            r0.a = r7
            r0.d = r3
            java.lang.Object r0 = r2.L(r0)
            if (r0 != r1) goto L60
        L5f:
            return r1
        L60:
            r5 = r0
            r0 = r7
            r7 = r5
        L63:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            ads_mobile_sdk.ci r1 = new ads_mobile_sdk.ci
            r1.<init>(r0, r7)
            ads_mobile_sdk.q01 r7 = new ads_mobile_sdk.q01
            r7.<init>(r1)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ei.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
