package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class lw3 implements r41 {
    public final g30 a;
    public final ur3 b;

    public lw3(g30 consentManager, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = consentManager;
        this.b = traceLogger;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.r41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.r31 r4, java.util.Map r5, kotlin.coroutines.Continuation r6) {
        /*
            r3 = this;
            boolean r4 = r6 instanceof ads_mobile_sdk.kw3
            if (r4 == 0) goto L13
            r4 = r6
            ads_mobile_sdk.kw3 r4 = (ads_mobile_sdk.kw3) r4
            int r0 = r4.d
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r4.d = r0
            goto L18
        L13:
            ads_mobile_sdk.kw3 r4 = new ads_mobile_sdk.kw3
            r4.<init>(r3, r6)
        L18:
            java.lang.Object r6 = r4.b
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.d
            r2 = 1
            if (r1 == 0) goto L35
            if (r1 != r2) goto L2d
            ads_mobile_sdk.lw3 r4 = r4.a
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: ads_mobile_sdk.np1 -> L2b
            goto L7e
        L2b:
            r5 = move-exception
            goto L83
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.String r6 = "allowlist"
            java.lang.Object r6 = r5.get(r6)
            java.lang.String r6 = (java.lang.String) r6
            if (r6 != 0) goto L5b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r6 = "Allowlist is missing from an updateAllowlist GMSG: "
            r4.append(r6)
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r5 = 0
            r6 = 6
            ads_mobile_sdk.xs3.a(r4, r5, r6)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L5b:
            com.google.common.io.BaseEncoding r5 = com.google.common.io.BaseEncoding.base64Url()     // Catch: java.lang.IllegalArgumentException -> L94
            byte[] r5 = r5.decode(r6)     // Catch: java.lang.IllegalArgumentException -> L94
            java.lang.String r6 = "decode(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)     // Catch: java.lang.IllegalArgumentException -> L94
            ads_mobile_sdk.g30 r6 = r3.a     // Catch: ads_mobile_sdk.np1 -> L81
            ads_mobile_sdk.u00 r5 = ads_mobile_sdk.u00.a(r5)     // Catch: ads_mobile_sdk.np1 -> L81
            java.lang.String r1 = "parseFrom(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r1)     // Catch: ads_mobile_sdk.np1 -> L81
            r4.a = r3     // Catch: ads_mobile_sdk.np1 -> L81
            r4.d = r2     // Catch: ads_mobile_sdk.np1 -> L81
            java.lang.Object r4 = r6.b(r5, r4)     // Catch: ads_mobile_sdk.np1 -> L81
            if (r4 != r0) goto L7e
            return r0
        L7e:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L81:
            r5 = move-exception
            r4 = r3
        L83:
            ads_mobile_sdk.xs3 r6 = ads_mobile_sdk.xs3.a
            ads_mobile_sdk.xs3.a(r6, r5)
            ads_mobile_sdk.ur3 r4 = r4.b
            ads_mobile_sdk.as3 r4 = (ads_mobile_sdk.as3) r4
            java.lang.String r6 = "Allowlist proto deserialization failed."
            r4.a(r6, r5)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L94:
            r4 = move-exception
            ads_mobile_sdk.xs3 r5 = ads_mobile_sdk.xs3.a
            ads_mobile_sdk.xs3.a(r5, r4)
            ads_mobile_sdk.ur3 r5 = r3.b
            ads_mobile_sdk.as3 r5 = (ads_mobile_sdk.as3) r5
            java.lang.String r6 = "Allowlist gmsg param is not a valid encoded string."
            r5.a(r6, r4)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.lw3.a(ads_mobile_sdk.r31, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_UPDATE_CONSENT_ALLOWLIST;
    }
}
