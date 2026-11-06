package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class hx extends vz0 implements uw1 {
    private static final hx DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private String releaseVersion_ = "";
    private yh1.f<fx> plugins_ = vz0.k();

    static {
        hx hxVar = new hx();
        DEFAULT_INSTANCE = hxVar;
        vz0.a((Class<hx>) hx.class, hxVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = fw.a[dVar.ordinal()];
        if (i == 1) {
            return new hx();
        }
        if (i == 2) {
            return new gx();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"bitField0_", "releaseVersion_", "plugins_", fx.class});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(hx.class);
    }
}
