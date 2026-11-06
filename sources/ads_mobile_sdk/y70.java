package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class y70 extends vz0 implements uw1 {
    private static final y70 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private int tokenSource_;
    private long tokenTimeMsec_;
    private du tokenValue_ = du.b;

    static {
        y70 y70Var = new y70();
        DEFAULT_INSTANCE = y70Var;
        vz0.a((Class<y70>) y70.class, y70Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new y70();
        }
        if (i == 2) {
            return new v70();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003ည\u0002", new Object[]{"bitField0_", "tokenSource_", w70.a, "tokenTimeMsec_", "tokenValue_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(y70.class);
    }
}
