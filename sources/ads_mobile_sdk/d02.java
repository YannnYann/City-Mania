package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class d02 implements j2 {
    public final /* synthetic */ j2 a;
    public final /* synthetic */ e02 b;

    public d02(j2 j2Var, e02 e02Var) {
        this.a = j2Var;
        this.b = e02Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.j2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r5, int r6, kotlin.coroutines.Continuation r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.c02
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.c02 r0 = (ads_mobile_sdk.c02) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.c02 r0 = new ads_mobile_sdk.c02
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.d02 r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L44
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.j2 r7 = r4.a
            r0.a = r4
            r0.d = r3
            java.lang.Object r7 = r7.a(r5, r6, r0)
            if (r7 != r1) goto L43
            return r1
        L43:
            r5 = r4
        L44:
            ads_mobile_sdk.v01 r7 = (ads_mobile_sdk.v01) r7
            boolean r6 = r7 instanceof ads_mobile_sdk.i01
            if (r6 == 0) goto L4d
            ads_mobile_sdk.i01 r7 = (ads_mobile_sdk.i01) r7
            return r7
        L4d:
            java.lang.String r6 = "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7, r6)
            ads_mobile_sdk.q01 r7 = (ads_mobile_sdk.q01) r7
            java.lang.Object r6 = r7.b
            kotlinx.coroutines.flow.Flow r6 = (kotlinx.coroutines.flow.Flow) r6
            ads_mobile_sdk.e02 r5 = r5.b
            ads_mobile_sdk.b02 r7 = new ads_mobile_sdk.b02
            r7.<init>(r6, r5)
            ads_mobile_sdk.q01 r5 = new ads_mobile_sdk.q01
            r5.<init>(r7)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.d02.a(java.lang.String, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.j2
    public final boolean b() {
        return this.a.b();
    }
}
