package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class qx1 extends vz0 implements uw1 {
    private static final qx1 DEFAULT_INSTANCE;
    public static final int c = 1;
    private String action_ = "";

    static {
        qx1 qx1Var = new qx1();
        DEFAULT_INSTANCE = qx1Var;
        vz0.a((Class<qx1>) qx1.class, qx1Var);
    }

    public static px1 v() {
        return (px1) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ox1.a[dVar.ordinal()];
        if (i == 1) {
            return new qx1();
        }
        if (i == 2) {
            return new px1();
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
        return vz0.b(qx1.class);
    }

    public final void b(String str) {
        this.action_ = str;
    }
}
