package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k81 implements r41 {
    public final e01 a;

    public k81(e01 httpClient) {
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.a = httpClient;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.r41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.r31 r5, java.util.Map r6, kotlin.coroutines.Continuation r7) {
        /*
            r4 = this;
            boolean r5 = r7 instanceof ads_mobile_sdk.j81
            if (r5 == 0) goto L13
            r5 = r7
            ads_mobile_sdk.j81 r5 = (ads_mobile_sdk.j81) r5
            int r0 = r5.c
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r5.c = r0
            goto L18
        L13:
            ads_mobile_sdk.j81 r5 = new ads_mobile_sdk.j81
            r5.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r5.a
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.c
            r2 = 1
            if (r1 == 0) goto L33
            if (r1 != r2) goto L2b
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L29
            goto L70
        L29:
            r5 = move-exception
            goto L6b
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.String r7 = "u"
            java.lang.Object r7 = r6.get(r7)
            java.lang.String r7 = (java.lang.String) r7
            r1 = 0
            if (r7 != 0) goto L59
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r7 = "URL is missing from an httpTrack GMSG: "
            r5.append(r7)
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            r6 = 6
            ads_mobile_sdk.xs3.a(r5, r1, r6)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L59:
            ads_mobile_sdk.e01 r6 = r4.a     // Catch: java.lang.Exception -> L29
            java.net.URL r3 = new java.net.URL     // Catch: java.lang.Exception -> L29
            r3.<init>(r7)     // Catch: java.lang.Exception -> L29
            r5.c = r2     // Catch: java.lang.Exception -> L29
            r7 = 30
            java.lang.Object r5 = ads_mobile_sdk.e01.a(r6, r3, r1, r5, r7)     // Catch: java.lang.Exception -> L29
            if (r5 != r0) goto L70
            return r0
        L6b:
            ads_mobile_sdk.xs3 r6 = ads_mobile_sdk.xs3.a
            ads_mobile_sdk.xs3.a(r6, r5)
        L70:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.k81.a(ads_mobile_sdk.r31, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_NAME_HTTP_TRACK;
    }
}
