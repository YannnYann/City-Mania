package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class al0 implements li1 {
    public final ex0 a;
    public final qn b;
    public final e01 c;
    public final ok0 d;

    public al0(ex0 flags, qn appState, e01 httpClient, ok0 debugDialogManager) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(debugDialogManager, "debugDialogManager");
        this.a = flags;
        this.b = appState;
        this.c = httpClient;
        this.d = debugDialogManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a6, code lost:
    
        if (ads_mobile_sdk.e01.a(r8, r11, null, r10, 30) == r0) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.li1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.ec3 r8, ads_mobile_sdk.i2 r9, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo r10, kotlin.coroutines.Continuation r11) {
        /*
            r7 = this;
            boolean r10 = r11 instanceof ads_mobile_sdk.zk0
            if (r10 == 0) goto L13
            r10 = r11
            ads_mobile_sdk.zk0 r10 = (ads_mobile_sdk.zk0) r10
            int r0 = r10.d
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r10.d = r0
            goto L18
        L13:
            ads_mobile_sdk.zk0 r10 = new ads_mobile_sdk.zk0
            r10.<init>(r7, r11)
        L18:
            java.lang.Object r11 = r10.b
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.d
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L3b
            if (r1 == r3) goto L35
            if (r1 != r2) goto L2d
            kotlin.ResultKt.throwOnFailure(r11)
            goto La9
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            ads_mobile_sdk.al0 r8 = r10.a
            kotlin.ResultKt.throwOnFailure(r11)
            goto L89
        L3b:
            kotlin.ResultKt.throwOnFailure(r11)
            ads_mobile_sdk.qn r11 = r7.b
            java.util.concurrent.atomic.AtomicBoolean r11 = r11.h
            boolean r11 = r11.get()
            if (r11 == 0) goto Lac
            com.google.gson.JsonObject r11 = r9.A
            boolean r11 = r11.isEmpty()
            if (r11 == 0) goto L51
            goto Lac
        L51:
            ads_mobile_sdk.ok0 r11 = r7.d
            ads_mobile_sdk.ex0 r1 = r7.a
            r1.getClass()
            java.lang.String r4 = "key"
            java.lang.String r5 = "gads:drx_debug:send_debug_data_url"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r4)
            java.lang.String r4 = "defaultValue"
            java.lang.String r6 = "https://www.google.com/dfp/sendDebugData"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r4)
            ads_mobile_sdk.wr r4 = ads_mobile_sdk.yr.o
            java.lang.Object r1 = r1.a(r5, r6, r4)
            java.lang.String r1 = (java.lang.String) r1
            ads_mobile_sdk.wb3 r8 = r8.a
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r8 = r8.a
            java.lang.String r8 = r8.getAdUnitId()
            com.google.gson.JsonObject r9 = r9.A
            r10.a = r7
            r10.d = r3
            ads_mobile_sdk.if1 r11 = r11.j
            r11.getClass()
            java.lang.Object r11 = ads_mobile_sdk.if1.a(r11, r1, r8, r9, r10)
            if (r11 != r0) goto L88
            goto La8
        L88:
            r8 = r7
        L89:
            android.net.Uri r11 = (android.net.Uri) r11
            java.lang.String r9 = r11.toString()
            java.lang.String r11 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r11)
            ads_mobile_sdk.e01 r8 = r8.c
            java.net.URL r11 = new java.net.URL
            r11.<init>(r9)
            r9 = 0
            r10.a = r9
            r10.d = r2
            r1 = 30
            java.lang.Object r8 = ads_mobile_sdk.e01.a(r8, r11, r9, r10, r1)
            if (r8 != r0) goto La9
        La8:
            return r0
        La9:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        Lac:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.al0.a(ads_mobile_sdk.ec3, ads_mobile_sdk.i2, com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
