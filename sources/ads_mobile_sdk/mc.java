package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class mc extends vz0 implements uw1 {
    private static final mc DEFAULT_INSTANCE;
    public static final int c = 1;
    private yh1.f<hc> adUnitPatterns_ = vz0.k();

    static {
        mc mcVar = new mc();
        DEFAULT_INSTANCE = mcVar;
        vz0.a((Class<mc>) mc.class, mcVar);
    }

    public static mc w() {
        return DEFAULT_INSTANCE;
    }

    public static lc x() {
        return (lc) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = kc.a[dVar.ordinal()];
        if (i == 1) {
            return new mc();
        }
        if (i == 2) {
            return new lc();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"adUnitPatterns_", hc.class});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(mc.class);
    }

    public final List v() {
        return this.adUnitPatterns_;
    }
}
