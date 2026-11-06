package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class n80 extends vz0 implements uw1 {
    private static final n80 DEFAULT_INSTANCE;
    public static final int c = 1;
    private int bitField0_;
    private du sha256_ = du.b;

    static {
        n80 n80Var = new n80();
        DEFAULT_INSTANCE = n80Var;
        vz0.a((Class<n80>) n80.class, n80Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new n80();
        }
        if (i == 2) {
            return new m80();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ည\u0000", new Object[]{"bitField0_", "sha256_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(n80.class);
    }
}
