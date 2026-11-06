package ads_mobile_sdk;

import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class uh implements yh1.b {
    public static final uh a = new uh();

    @Override // ads_mobile_sdk.yh1.b
    public final boolean a(int i) {
        return (i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : vh.FALLBACK_SIGNALS : vh.PARTNER_SIGNALS : vh.UNITY_SIGNALS : vh.AFMA_SIGNALS : vh.UNKNOWN_PROTO) != null;
    }
}
