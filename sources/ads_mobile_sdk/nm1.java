package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public final class nm1 {
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ck1 r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof ads_mobile_sdk.mm1
            if (r0 == 0) goto L13
            r0 = r6
            ads_mobile_sdk.mm1 r0 = (ads_mobile_sdk.mm1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.mm1 r0 = new ads_mobile_sdk.mm1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.ck1 r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L82
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r6)
            ads_mobile_sdk.zz0 r6 = ads_mobile_sdk.a01.a
            r6.getClass()
            ads_mobile_sdk.a01 r6 = ads_mobile_sdk.zz0.a()
            ads_mobile_sdk.vf0 r6 = (ads_mobile_sdk.vf0) r6
            ads_mobile_sdk.dw2 r6 = r6.w
            java.lang.Object r6 = r6.get()
            kotlin.coroutines.CoroutineContext r6 = (kotlin.coroutines.CoroutineContext) r6
            r0.a = r5
            r0.d = r3
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            android.os.Looper r3 = android.os.Looper.myLooper()
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r2 == 0) goto L75
            ads_mobile_sdk.o53 r6 = new ads_mobile_sdk.o53
            com.google.android.libraries.ads.mobile.sdk.banner.AdSize r0 = r5.m()
            android.view.View r2 = r5.n
            android.content.Context r2 = r2.getContext()
            java.lang.String r3 = "getContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r6.<init>(r2, r0)
            android.view.View r0 = r5.n
            r6.addView(r0)
            goto L7f
        L75:
            ads_mobile_sdk.di1 r2 = new ads_mobile_sdk.di1
            r3 = 0
            r2.<init>(r5, r3)
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r2, r0)
        L7f:
            if (r6 != r1) goto L82
            return r1
        L82:
            ads_mobile_sdk.o53 r6 = (ads_mobile_sdk.o53) r6
            com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoadResult$BannerAdSuccess r0 = new com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoadResult$BannerAdSuccess
            ads_mobile_sdk.wo r1 = new ads_mobile_sdk.wo
            r1.<init>(r5, r6)
            r0.<init>(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.nm1.a(ads_mobile_sdk.ck1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
