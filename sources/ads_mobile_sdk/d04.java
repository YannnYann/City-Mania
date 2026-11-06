package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d04 implements ai1 {
    public final r31 a;
    public final df2 b;

    public d04(r31 gmaWebView, df2 omidMonitor) {
        Intrinsics.checkNotNullParameter(gmaWebView, "gmaWebView");
        Intrinsics.checkNotNullParameter(omidMonitor, "omidMonitor");
        this.a = gmaWebView;
        this.b = omidMonitor;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0065, code lost:
    
        if (r7.a(r0) == r1) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0075, code lost:
    
        if (r7.a(r0) == r1) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.ai1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.c04
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.c04 r0 = (ads_mobile_sdk.c04) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.c04 r0 = new ads_mobile_sdk.c04
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L41
            if (r2 == r5) goto L3b
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r7)
            goto L78
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L68
        L3b:
            ads_mobile_sdk.d04 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L52
        L41:
            kotlin.ResultKt.throwOnFailure(r7)
            ads_mobile_sdk.df2 r7 = r6.b
            r0.a = r6
            r0.d = r5
            java.lang.Object r7 = r7.m(r0)
            if (r7 != r1) goto L51
            goto L77
        L51:
            r2 = r6
        L52:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            r5 = 0
            if (r7 == 0) goto L6b
            ads_mobile_sdk.df2 r7 = r2.b
            r0.a = r5
            r0.d = r4
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L68
            goto L77
        L68:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L6b:
            ads_mobile_sdk.r31 r7 = r2.a
            r0.a = r5
            r0.d = r3
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L78
        L77:
            return r1
        L78:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.d04.a(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
