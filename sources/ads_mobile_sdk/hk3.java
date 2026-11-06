package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hk3 implements r41 {
    public final if1 a;
    public final ex0 b;
    public final ur3 c;

    public hk3(if1 inspectorManager, ex0 flags, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = inspectorManager;
        this.b = flags;
        this.c = traceLogger;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.r41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.r31 r8, java.util.Map r9, kotlin.coroutines.Continuation r10) {
        /*
            r7 = this;
            boolean r8 = r10 instanceof ads_mobile_sdk.gk3
            if (r8 == 0) goto L13
            r8 = r10
            ads_mobile_sdk.gk3 r8 = (ads_mobile_sdk.gk3) r8
            int r0 = r8.e
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r8.e = r0
            goto L18
        L13:
            ads_mobile_sdk.gk3 r8 = new ads_mobile_sdk.gk3
            r8.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r8.c
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.e
            r2 = 6
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L39
            if (r1 != r4) goto L31
            java.util.Map r9 = r8.b
            ads_mobile_sdk.hk3 r8 = r8.a
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.NumberFormatException -> L2f
            goto L82
        L2f:
            r10 = move-exception
            goto L85
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlin.ResultKt.throwOnFailure(r10)
            ads_mobile_sdk.ex0 r10 = r7.b
            boolean r10 = r10.a0()
            if (r10 != 0) goto L47
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L47:
            java.lang.String r10 = "extras"
            java.lang.Object r10 = r9.get(r10)
            java.lang.String r10 = (java.lang.String) r10
            if (r10 == 0) goto Laa
            int r1 = r10.length()
            if (r1 != 0) goto L58
            goto Laa
        L58:
            ads_mobile_sdk.if1 r1 = r7.a     // Catch: java.lang.NumberFormatException -> L69
            java.lang.String r5 = "expires"
            java.lang.Object r5 = r9.get(r5)     // Catch: java.lang.NumberFormatException -> L69
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.NumberFormatException -> L69
            if (r5 == 0) goto L6c
            long r5 = java.lang.Long.parseLong(r5)     // Catch: java.lang.NumberFormatException -> L69
            goto L71
        L69:
            r10 = move-exception
            r8 = r7
            goto L85
        L6c:
            r5 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
        L71:
            java.lang.Long r5 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r5)     // Catch: java.lang.NumberFormatException -> L69
            r8.a = r7     // Catch: java.lang.NumberFormatException -> L69
            r8.b = r9     // Catch: java.lang.NumberFormatException -> L69
            r8.e = r4     // Catch: java.lang.NumberFormatException -> L69
            java.lang.Object r8 = ads_mobile_sdk.if1.a(r1, r10, r5, r8)     // Catch: java.lang.NumberFormatException -> L69
            if (r8 != r0) goto L82
            return r0
        L82:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L85:
            java.lang.String r0 = "Invalid expiration in SingleAdSourceTesting GMSG."
            ads_mobile_sdk.f01.c(r0)
            ads_mobile_sdk.ur3 r8 = r8.c
            ads_mobile_sdk.as3 r8 = (ads_mobile_sdk.as3) r8
            java.lang.String r0 = "SingleAdSourceTestingGmsgHandler.onGmsg"
            r8.a(r0, r10)
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r10 = "Invalid expiration in SingleAdSource GMSG: "
            r8.append(r10)
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            ads_mobile_sdk.xs3.a(r8, r3, r2)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        Laa:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r10 = "Network Extras is missing from SingleAdSource GMSG: "
            r8.append(r10)
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            ads_mobile_sdk.xs3.a(r8, r3, r2)
            java.lang.String r8 = "Missing network extras in SingleAdSourceTesting request."
            ads_mobile_sdk.f01.c(r8)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.hk3.a(ads_mobile_sdk.r31, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_INSPECTOR_SINGLE_AD_SOURCE_TEST;
    }
}
