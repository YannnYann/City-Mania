package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class a11 extends vz0 implements uw1 {
    private static final a11 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int count_;
    private int format_;

    static {
        a11 a11Var = new a11();
        DEFAULT_INSTANCE = a11Var;
        vz0.a((Class<a11>) a11.class, a11Var);
    }

    public static z01 v() {
        return (z01) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = y01.a[dVar.ordinal()];
        if (i == 1) {
            return new a11();
        }
        if (i == 2) {
            return new z01();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u0004", new Object[]{"format_", "count_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(a11.class);
    }
}
