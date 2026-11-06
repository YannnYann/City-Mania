package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class a70 extends Lambda implements Function0 {
    public final /* synthetic */ k70 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a70(k70 k70Var) {
        super(0);
        this.a = k70Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invoke() {
        /*
            r6 = this;
            ads_mobile_sdk.k70 r0 = r6.a
            ads_mobile_sdk.cn0 r1 = r0.g
            r2 = 1
            java.lang.String r3 = "key"
            if (r1 != 0) goto L25
            ads_mobile_sdk.ex0 r0 = r0.b
            if (r0 == 0) goto L20
            java.lang.String r1 = "gads:use_cronet_fallback_provider_for_offline_client:enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r3)
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            ads_mobile_sdk.ir r3 = ads_mobile_sdk.yr.b
            java.lang.Object r0 = r0.a(r1, r2, r3)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r2 = r0.booleanValue()
        L20:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)
            return r0
        L25:
            ads_mobile_sdk.ex0 r0 = r0.b
            if (r0 == 0) goto L3e
            java.lang.String r1 = "gads:initialize_device_tier_manager_in_cronet_provider:enabled"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r3)
            java.lang.Boolean r4 = java.lang.Boolean.TRUE
            ads_mobile_sdk.ir r5 = ads_mobile_sdk.yr.b
            java.lang.Object r0 = r0.a(r1, r4, r5)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L45
        L3e:
            ads_mobile_sdk.k70 r0 = r6.a
            ads_mobile_sdk.cn0 r0 = r0.g
            r0.b()
        L45:
            ads_mobile_sdk.k70 r0 = r6.a
            ads_mobile_sdk.ex0 r0 = r0.b
            if (r0 == 0) goto L63
            int r1 = ads_mobile_sdk.ex0.B
            java.lang.String r4 = "gads:cronet_fallback_device_memory_threshold"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r3)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            ads_mobile_sdk.nr r3 = ads_mobile_sdk.yr.f
            java.lang.Object r0 = r0.a(r4, r1, r3)
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            goto L65
        L63:
            int r0 = ads_mobile_sdk.ex0.B
        L65:
            ads_mobile_sdk.k70 r1 = r6.a
            ads_mobile_sdk.cn0 r1 = r1.g
            java.util.concurrent.atomic.AtomicReference r1 = r1.b
            java.lang.Object r1 = r1.get()
            ads_mobile_sdk.mm0 r1 = (ads_mobile_sdk.mm0) r1
            int r1 = r1.getNumber()
            if (r1 > r0) goto L78
            goto L79
        L78:
            r2 = 0
        L79:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.a70.invoke():java.lang.Object");
    }
}
