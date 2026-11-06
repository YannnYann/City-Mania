package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class vb2 extends vz0 implements uw1 {
    private static final vb2 DEFAULT_INSTANCE;
    public static final int c = 1;
    private boolean deviceOnline_;

    static {
        vb2 vb2Var = new vb2();
        DEFAULT_INSTANCE = vb2Var;
        vz0.a((Class<vb2>) vb2.class, vb2Var);
    }

    public static ub2 v() {
        return (ub2) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = tb2.a[dVar.ordinal()];
        if (i == 1) {
            return new vb2();
        }
        if (i == 2) {
            return new ub2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0007", new Object[]{"deviceOnline_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(vb2.class);
    }
}
