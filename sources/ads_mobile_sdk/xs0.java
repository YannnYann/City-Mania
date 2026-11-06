package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xs0 implements rh3 {
    public final g30 a;
    public final ls0 b;

    public xs0(g30 consentManager, ls0 firebaseAnalyticsAdapter) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(firebaseAnalyticsAdapter, "firebaseAnalyticsAdapter");
        this.a = consentManager;
        this.b = firebaseAnalyticsAdapter;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.FIREBASE_ANALYTICS;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.ws0
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.ws0 r0 = (ads_mobile_sdk.ws0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.ws0 r0 = new ads_mobile_sdk.ws0
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L50
            if (r2 == r5) goto L4a
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.String r1 = r0.c
            java.lang.String r2 = r0.b
            ads_mobile_sdk.xs0 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            r3 = r1
            goto L96
        L37:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3f:
            java.lang.String r2 = r0.b
            ads_mobile_sdk.xs0 r4 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            r7 = r4
            r4 = r2
            r2 = r7
            goto L7f
        L4a:
            ads_mobile_sdk.xs0 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6b
        L50:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.ls0 r9 = r8.b
            kotlin.Lazy r9 = r9.e
            java.lang.Object r9 = r9.getValue()
            if (r9 == 0) goto Lb5
            ads_mobile_sdk.g30 r9 = r8.a
            r0.a = r8
            r0.f = r5
            java.lang.Object r9 = r9.G(r0)
            if (r9 != r1) goto L6a
            goto L91
        L6a:
            r2 = r8
        L6b:
            java.lang.String r9 = (java.lang.String) r9
            ads_mobile_sdk.g30 r5 = r2.a
            r0.a = r2
            r0.b = r9
            r0.f = r4
            java.lang.Object r4 = r5.H(r0)
            if (r4 != r1) goto L7c
            goto L91
        L7c:
            r7 = r4
            r4 = r9
            r9 = r7
        L7f:
            java.lang.String r9 = (java.lang.String) r9
            ads_mobile_sdk.g30 r5 = r2.a
            r0.a = r2
            r0.b = r4
            r0.c = r9
            r0.f = r3
            java.lang.Object r0 = r5.F(r0)
            if (r0 != r1) goto L92
        L91:
            return r1
        L92:
            r3 = r9
            r9 = r0
            r0 = r2
            r2 = r4
        L96:
            r4 = r9
            java.lang.String r4 = (java.lang.String) r4
            ads_mobile_sdk.ls0 r9 = r0.b
            kotlin.Lazy r9 = r9.e
            java.lang.Object r9 = r9.getValue()
            if (r9 == 0) goto La7
            java.lang.String r9 = "fa"
        La5:
            r5 = r9
            goto La9
        La7:
            r9 = 0
            goto La5
        La9:
            ads_mobile_sdk.vs0 r1 = new ads_mobile_sdk.vs0
            r6 = 1
            r1.<init>(r2, r3, r4, r5, r6)
            ads_mobile_sdk.q01 r9 = new ads_mobile_sdk.q01
            r9.<init>(r1)
            return r9
        Lb5:
            ads_mobile_sdk.q01 r9 = new ads_mobile_sdk.q01
            ads_mobile_sdk.vs0 r0 = new ads_mobile_sdk.vs0
            r5 = 0
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = 0
            r0.<init>(r1, r2, r3, r4, r5)
            r9.<init>(r0)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.xs0.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
