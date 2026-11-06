package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ia0 extends vz0 implements uw1 {
    private static final ia0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private int hashRealtimeThreatType_;
    private int urlRealtimeThreatType_;

    static {
        ia0 ia0Var = new ia0();
        DEFAULT_INSTANCE = ia0Var;
        vz0.a((Class<ia0>) ia0.class, ia0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new ia0();
        }
        if (i == 2) {
            return new fa0();
        }
        if (i == 3) {
            ga0 ga0Var = ga0.a;
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"bitField0_", "hashRealtimeThreatType_", ga0Var, "urlRealtimeThreatType_", ga0Var});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ia0.class);
    }
}
