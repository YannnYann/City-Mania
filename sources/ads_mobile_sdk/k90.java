package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class k90 extends vz0 implements uw1 {
    private static final k90 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private long displayDurationSec_;
    private String origin_ = "";

    static {
        k90 k90Var = new k90();
        DEFAULT_INSTANCE = k90Var;
        vz0.a((Class<k90>) k90.class, k90Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new k90();
        }
        if (i == 2) {
            return new j90();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"bitField0_", "origin_", "displayDurationSec_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(k90.class);
    }
}
