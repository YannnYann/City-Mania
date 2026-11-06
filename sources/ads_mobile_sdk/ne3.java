package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class ne3 extends vz0 implements uw1 {
    private static final ne3 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int valueCase_ = 0;
    private Object value_;

    static {
        ne3 ne3Var = new ne3();
        DEFAULT_INSTANCE = ne3Var;
        vz0.a((Class<ne3>) ne3.class, ne3Var);
    }

    public static ne3 w() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = le3.a[dVar.ordinal()];
        if (i == 1) {
            return new ne3();
        }
        if (i == 2) {
            return new me3();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȼ\u0000\u0002:\u0000\u00035\u0000\u00043\u0000", new Object[]{"value_", "valueCase_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ne3.class);
    }

    public final boolean D() {
        return this.valueCase_ == 1;
    }

    public final String z() {
        return this.valueCase_ == 1 ? (String) this.value_ : "";
    }

    public final boolean A() {
        return this.valueCase_ == 2;
    }

    public final boolean v() {
        if (this.valueCase_ == 2) {
            return ((Boolean) this.value_).booleanValue();
        }
        return false;
    }

    public final boolean C() {
        return this.valueCase_ == 3;
    }

    public final long y() {
        if (this.valueCase_ == 3) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }

    public final boolean B() {
        return this.valueCase_ == 4;
    }

    public final double x() {
        if (this.valueCase_ == 4) {
            return ((Double) this.value_).doubleValue();
        }
        return 0.0d;
    }
}
