package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ab0 extends vz0 implements uw1 {
    private static final ab0 DEFAULT_INSTANCE;
    public static final int c = 1;
    private int bitField0_;
    private String url_ = "";

    static {
        ab0 ab0Var = new ab0();
        DEFAULT_INSTANCE = ab0Var;
        vz0.a((Class<ab0>) ab0.class, ab0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new ab0();
        }
        if (i == 2) {
            return new za0();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"bitField0_", "url_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ab0.class);
    }
}
