package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class px3 extends vz0 implements uw1 {
    private static final px3 DEFAULT_INSTANCE;
    public static final int c = 1;
    private yh1.f<nx3> apiCompats_ = vz0.k();

    static {
        px3 px3Var = new px3();
        DEFAULT_INSTANCE = px3Var;
        vz0.a((Class<px3>) px3.class, px3Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = lx3.a[dVar.ordinal()];
        if (i == 1) {
            return new px3();
        }
        if (i == 2) {
            return new ox3();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"apiCompats_", nx3.class});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(px3.class);
    }
}
