package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class gf3 extends vz0 implements uw1 {
    private static final gf3 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private boolean automaticRefresh_;
    private boolean staleResultAllowed_;

    static {
        gf3 gf3Var = new gf3();
        DEFAULT_INSTANCE = gf3Var;
        vz0.a((Class<gf3>) gf3.class, gf3Var);
    }

    public static ff3 v() {
        return (ff3) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ef3.a[dVar.ordinal()];
        if (i == 1) {
            return new gf3();
        }
        if (i == 2) {
            return new ff3();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0002\u0007", new Object[]{"automaticRefresh_", "staleResultAllowed_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(gf3.class);
    }
}
