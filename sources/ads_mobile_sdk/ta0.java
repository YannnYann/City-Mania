package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ta0 extends vz0 implements uw1 {
    private static final ta0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private String name_ = "";
    private String value_ = "";

    static {
        ta0 ta0Var = new ta0();
        DEFAULT_INSTANCE = ta0Var;
        vz0.a((Class<ta0>) ta0.class, ta0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new ta0();
        }
        if (i == 2) {
            return new sa0();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"bitField0_", "name_", "value_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ta0.class);
    }
}
