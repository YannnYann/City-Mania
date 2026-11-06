package ads_mobile_sdk;

/* JADX INFO: loaded from: classes.dex */
public interface at0 {
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static java.lang.Object a(ads_mobile_sdk.at0 r5, ads_mobile_sdk.h41 r6, ads_mobile_sdk.i2 r7, ads_mobile_sdk.tk0 r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof ads_mobile_sdk.zs0
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.zs0 r0 = (ads_mobile_sdk.zs0) r0
            int r1 = r0.f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f = r1
            goto L18
        L13:
            ads_mobile_sdk.zs0 r0 = new ads_mobile_sdk.zs0
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            ads_mobile_sdk.tk0 r8 = r0.c
            ads_mobile_sdk.i2 r7 = r0.b
            ads_mobile_sdk.h41 r6 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7c
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.r31 r9 = r6.a
            r0.a = r6
            r0.b = r7
            r0.c = r8
            r0.f = r3
            r5.getClass()
            com.google.gson.JsonObject r2 = new com.google.gson.JsonObject
            r2.<init>()
            ads_mobile_sdk.km r3 = r5.a()
            boolean r3 = r3.d
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r4 = "app_muted"
            r2.addProperty(r4, r3)
            ads_mobile_sdk.km r5 = r5.a()
            float r5 = r5.c
            java.lang.String r5 = java.lang.String.valueOf(r5)
            java.lang.String r3 = "app_volume"
            r2.addProperty(r3, r5)
            java.lang.String r5 = "volume"
            java.lang.Object r5 = r9.a(r2, r5, r0)
            java.lang.Object r9 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r5 != r9) goto L77
            goto L79
        L77:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
        L79:
            if (r5 != r1) goto L7c
            return r1
        L7c:
            r6.b = r8
            boolean r5 = r7.d0
            if (r5 == 0) goto L9e
            ads_mobile_sdk.zn3 r5 = new ads_mobile_sdk.zn3
            android.content.Context r7 = r6.getContext()
            java.lang.String r8 = "getContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r8)
            r5.<init>(r7)
            android.widget.FrameLayout$LayoutParams r7 = new android.widget.FrameLayout$LayoutParams
            r8 = 49
            r9 = -2
            r7.<init>(r9, r9, r8)
            r6.addView(r5, r7)
            r6.bringChildToFront(r5)
        L9e:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.at0.a(ads_mobile_sdk.at0, ads_mobile_sdk.h41, ads_mobile_sdk.i2, ads_mobile_sdk.tk0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    km a();
}
