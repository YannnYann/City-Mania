package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class bu3 extends ou {
    public final g30 l;

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.TRUSTLESS_TOKEN;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0064, code lost:
    
        if (r8 == r1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0084, code lost:
    
        if (r8 == r1) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof ads_mobile_sdk.zt3
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.zt3 r0 = (ads_mobile_sdk.zt3) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            ads_mobile_sdk.zt3 r0 = new ads_mobile_sdk.zt3
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r8)
            goto L87
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L34:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L67
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ex0 r8 = r7.f
            ads_mobile_sdk.x00 r8 = r8.r
            r8.getClass()
            java.lang.String r2 = "key"
            java.lang.String r5 = "gads:trustless_token_caching_in_signal_source_enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r2)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r6 = ads_mobile_sdk.yr.b
            java.lang.Object r8 = r8.a(r5, r2, r6)
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L79
            ads_mobile_sdk.g30 r8 = r7.l
            r0.c = r4
            r8.getClass()
            java.lang.Object r8 = ads_mobile_sdk.g30.j(r8, r0)
            if (r8 != r1) goto L67
            goto L86
        L67:
            ads_mobile_sdk.v01 r8 = (ads_mobile_sdk.v01) r8
            if (r8 == 0) goto L99
            boolean r0 = r8 instanceof ads_mobile_sdk.i01
            if (r0 == 0) goto L72
            ads_mobile_sdk.i01 r8 = (ads_mobile_sdk.i01) r8
            return r8
        L72:
            ads_mobile_sdk.q01 r8 = (ads_mobile_sdk.q01) r8
            java.lang.Object r8 = r8.b
            java.lang.String r8 = (java.lang.String) r8
            goto L9a
        L79:
            ads_mobile_sdk.g30 r8 = r7.l
            r0.c = r3
            r8.getClass()
            java.lang.Object r8 = ads_mobile_sdk.g30.k(r8, r0)
            if (r8 != r1) goto L87
        L86:
            return r1
        L87:
            ads_mobile_sdk.v01 r8 = (ads_mobile_sdk.v01) r8
            if (r8 == 0) goto L99
            boolean r0 = r8 instanceof ads_mobile_sdk.i01
            if (r0 == 0) goto L92
            ads_mobile_sdk.i01 r8 = (ads_mobile_sdk.i01) r8
            return r8
        L92:
            ads_mobile_sdk.q01 r8 = (ads_mobile_sdk.q01) r8
            java.lang.Object r8 = r8.b
            java.lang.String r8 = (java.lang.String) r8
            goto L9a
        L99:
            r8 = 0
        L9a:
            ads_mobile_sdk.q01 r0 = new ads_mobile_sdk.q01
            ads_mobile_sdk.yt3 r1 = new ads_mobile_sdk.yt3
            r1.<init>(r8)
            r0.<init>(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bu3.s(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.ou
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object v(kotlin.coroutines.Continuation r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof ads_mobile_sdk.au3
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.au3 r0 = (ads_mobile_sdk.au3) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.au3 r0 = new ads_mobile_sdk.au3
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2d
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L2d:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L35:
            ads_mobile_sdk.bu3 r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6d
        L3b:
            kotlin.ResultKt.throwOnFailure(r9)
            ads_mobile_sdk.ex0 r9 = r8.f
            ads_mobile_sdk.x00 r9 = r9.r
            r9.getClass()
            java.lang.String r2 = "key"
            java.lang.String r6 = "gads:trustless_token_caching_in_signal_source_enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r2)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            ads_mobile_sdk.ir r7 = ads_mobile_sdk.yr.b
            java.lang.Object r9 = r9.a(r6, r2, r7)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L85
            ads_mobile_sdk.g30 r9 = r8.l
            r0.a = r8
            r0.d = r5
            r9.getClass()
            java.lang.Object r9 = ads_mobile_sdk.g30.m(r9, r0)
            if (r9 != r1) goto L6c
            goto L83
        L6c:
            r2 = r8
        L6d:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 != 0) goto L76
            goto L85
        L76:
            r0.a = r3
            r0.d = r4
            r2.getClass()
            java.lang.Object r9 = ads_mobile_sdk.ou.b(r2, r0)
            if (r9 != r1) goto L84
        L83:
            return r1
        L84:
            return r9
        L85:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.bu3.v(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bu3(g30 consentManager, ex0 flags, f0 activityTracker, g83 rootTraceCreator, tx clock, CoroutineScope backgroundScope) {
        super(clock, backgroundScope, rootTraceCreator, flags, activityTracker);
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        this.l = consentManager;
    }
}
