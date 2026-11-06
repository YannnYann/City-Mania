package ads_mobile_sdk;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pf implements rh3 {
    public final hf a;
    public final List b;

    public pf(ex0 flags, hf adapterInitializer) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(adapterInitializer, "adapterInitializer");
        this.a = adapterInitializer;
        this.b = flags.d0();
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.ADAPTER_VERSIONS;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof ads_mobile_sdk.of
            if (r0 == 0) goto L13
            r0 = r7
            ads_mobile_sdk.of r0 = (ads_mobile_sdk.of) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.of r0 = new ads_mobile_sdk.of
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.util.LinkedHashMap r1 = r0.b
            ads_mobile_sdk.pf r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L69
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            java.util.List r7 = r6.b
            boolean r7 = r7.isEmpty()
            if (r7 == 0) goto L4f
            ads_mobile_sdk.q01 r7 = new ads_mobile_sdk.q01
            ads_mobile_sdk.nf r0 = new ads_mobile_sdk.nf
            java.util.Map r1 = kotlin.collections.MapsKt__MapsKt.emptyMap()
            r0.<init>(r1)
            r7.<init>(r0)
            return r7
        L4f:
            java.util.LinkedHashMap r7 = new java.util.LinkedHashMap
            r7.<init>()
            ads_mobile_sdk.hf r2 = r6.a
            r0.a = r6
            r0.b = r7
            r0.e = r3
            r2.getClass()
            java.lang.Object r0 = ads_mobile_sdk.hf.a(r2, r0)
            if (r0 != r1) goto L66
            return r1
        L66:
            r1 = r7
            r7 = r0
            r0 = r6
        L69:
            java.util.Map r7 = (java.util.Map) r7
            java.util.List r0 = r0.b
            java.util.Iterator r0 = r0.iterator()
        L71:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto La7
            java.lang.Object r2 = r0.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r3 = r7.get(r2)
            ads_mobile_sdk.yd r3 = (ads_mobile_sdk.yd) r3
            if (r3 == 0) goto L8f
            com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus r3 = r3.a
            if (r3 == 0) goto L8f
            com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus$InitializationState r3 = r3.getInitializationState()
            if (r3 != 0) goto L91
        L8f:
            com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus$InitializationState r3 = com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus.InitializationState.NOT_STARTED
        L91:
            java.lang.Object r4 = r7.get(r2)
            ads_mobile_sdk.yd r4 = (ads_mobile_sdk.yd) r4
            if (r4 == 0) goto L9c
            com.google.android.libraries.ads.mobile.sdk.internal.signals.AdapterVersionData r4 = r4.b
            goto L9d
        L9c:
            r4 = 0
        L9d:
            com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus$InitializationState r5 = com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus.InitializationState.COMPLETE
            if (r3 != r5) goto L71
            if (r4 == 0) goto L71
            r1.put(r2, r4)
            goto L71
        La7:
            ads_mobile_sdk.q01 r7 = new ads_mobile_sdk.q01
            ads_mobile_sdk.nf r0 = new ads_mobile_sdk.nf
            r0.<init>(r1)
            r7.<init>(r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pf.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
