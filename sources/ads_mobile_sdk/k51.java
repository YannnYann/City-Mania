package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class k51 extends vz0 implements uw1 {
    private static final k51 DEFAULT_INSTANCE;
    public static final int c = 1;
    private String action_ = "";

    static {
        k51 k51Var = new k51();
        DEFAULT_INSTANCE = k51Var;
        vz0.a((Class<k51>) k51.class, k51Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = i51.a[dVar.ordinal()];
        if (i == 1) {
            return new k51();
        }
        if (i == 2) {
            return new j51();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"action_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(k51.class);
    }
}
