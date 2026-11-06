package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class u61 extends vz0 implements uw1 {
    private static final u61 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int action_;
    private String message_ = "";

    static {
        u61 u61Var = new u61();
        DEFAULT_INSTANCE = u61Var;
        vz0.a((Class<u61>) u61.class, u61Var);
    }

    public static s61 v() {
        return (s61) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r61.a[dVar.ordinal()];
        if (i == 1) {
            return new u61();
        }
        if (i == 2) {
            return new s61();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002Ȉ", new Object[]{"action_", "message_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(u61.class);
    }

    public final void b(String str) {
        this.message_ = str;
    }
}
