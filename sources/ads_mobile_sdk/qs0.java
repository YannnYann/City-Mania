package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class qs0 {
    public final ls0 a;
    public final CoroutineScope b;
    public final ex0 c;

    public qs0(ls0 firebaseAnalyticsAdapter, CoroutineScope backgroundScope, ex0 flags) {
        Intrinsics.checkNotNullParameter(firebaseAnalyticsAdapter, "firebaseAnalyticsAdapter");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = firebaseAnalyticsAdapter;
        this.b = backgroundScope;
        this.c = flags;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(android.net.Uri.Builder r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.ns0
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.ns0 r0 = (ads_mobile_sdk.ns0) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.g = r1
            goto L18
        L13:
            ads_mobile_sdk.ns0 r0 = new ads_mobile_sdk.ns0
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.g
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            android.net.Uri r6 = r0.d
            android.net.Uri$Builder r1 = r0.c
            android.net.Uri$Builder r2 = r0.b
            ads_mobile_sdk.qs0 r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5b
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            android.net.Uri r7 = r6.build()
            ads_mobile_sdk.ls0 r2 = r5.a
            r0.a = r5
            r0.b = r6
            r0.c = r6
            r0.d = r7
            r0.g = r3
            r2.getClass()
            java.lang.Object r0 = ads_mobile_sdk.ls0.a(r2, r0)
            if (r0 != r1) goto L56
            return r1
        L56:
            r1 = r6
            r2 = r1
            r6 = r7
            r7 = r0
            r0 = r5
        L5b:
            java.lang.String r7 = (java.lang.String) r7
            if (r7 == 0) goto L6a
            java.lang.String r3 = "gmp_app_id"
            java.lang.String r4 = r6.getQueryParameter(r3)
            if (r4 != 0) goto L6a
            r1.appendQueryParameter(r3, r7)
        L6a:
            ads_mobile_sdk.ls0 r7 = r0.a
            java.lang.String r0 = "getAppInstanceId"
            java.lang.Object r7 = r7.a(r0)
            if (r7 == 0) goto L79
            java.lang.String r7 = r7.toString()
            goto L7a
        L79:
            r7 = 0
        L7a:
            if (r7 == 0) goto L87
            java.lang.String r0 = "fbs_aiid"
            java.lang.String r6 = r6.getQueryParameter(r0)
            if (r6 != 0) goto L87
            r1.appendQueryParameter(r0, r7)
        L87:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.qs0.a(android.net.Uri$Builder, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(android.net.Uri r21, ads_mobile_sdk.is0 r22, android.os.Bundle r23, kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instruction units count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.qs0.a(android.net.Uri, ads_mobile_sdk.is0, android.os.Bundle, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
