package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class kk2 extends vz0 implements uw1 {
    private static final kk2 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private int clearReason_;
    private int fillDisabledReason_;
    private int numAdsCleared_;

    static {
        kk2 kk2Var = new kk2();
        DEFAULT_INSTANCE = kk2Var;
        vz0.a((Class<kk2>) kk2.class, kk2Var);
    }

    public static hk2 v() {
        return (hk2) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = gk2.a[dVar.ordinal()];
        if (i == 1) {
            return new kk2();
        }
        if (i == 2) {
            return new hk2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002င\u0001\u0003ဌ\u0002", new Object[]{"bitField0_", "clearReason_", "numAdsCleared_", "fillDisabledReason_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(kk2.class);
    }
}
