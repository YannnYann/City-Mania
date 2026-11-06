package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class wt2 extends vz0 implements uw1 {
    private static final wt2 DEFAULT_INSTANCE;
    public static final int c = 1;
    private int violationReason_;

    static {
        wt2 wt2Var = new wt2();
        DEFAULT_INSTANCE = wt2Var;
        vz0.a((Class<wt2>) wt2.class, wt2Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = tt2.a[dVar.ordinal()];
        if (i == 1) {
            return new wt2();
        }
        if (i == 2) {
            return new ut2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\f", new Object[]{"violationReason_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(wt2.class);
    }
}
