package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class qu1 extends vz0 implements uw1 {
    private static final qu1 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 5;
    public static final int g = 4;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = 8;
    public static final int k = 9;
    private int bitField0_;
    private Object comparisonOperator_;
    private boolean equalsTo_;
    private Object matchValue_;
    private int matchValueCase_ = 0;
    private int comparisonOperatorCase_ = 0;
    private yh1.f<String> path_ = vz0.k();

    static {
        qu1 qu1Var = new qu1();
        DEFAULT_INSTANCE = qu1Var;
        vz0.a((Class<qu1>) qu1.class, qu1Var);
    }

    public static qu1 x() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = ou1.a[dVar.ordinal()];
        if (i2 == 1) {
            return new qu1();
        }
        if (i2 == 2) {
            return new pu1();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\t\u0002\u0001\u0001\t\t\u0000\u0001\u0000\u0001Ț\u0002Ȼ\u0000\u0003:\u0000\u0004<\u0000\u00053\u0000\u0006:\u0001\u0007:\u0001\b:\u0001\tဇ\u0000", new Object[]{"matchValue_", "matchValueCase_", "comparisonOperator_", "comparisonOperatorCase_", "bitField0_", "path_", qu1.class, "equalsTo_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(qu1.class);
    }

    public final yh1.f A() {
        return this.path_;
    }

    public final boolean I() {
        return this.matchValueCase_ == 2;
    }

    public final String B() {
        return this.matchValueCase_ == 2 ? (String) this.matchValue_ : "";
    }

    public final boolean E() {
        return this.matchValueCase_ == 3;
    }

    public final boolean w() {
        if (this.matchValueCase_ == 3) {
            return ((Boolean) this.matchValue_).booleanValue();
        }
        return false;
    }

    public final boolean H() {
        return this.matchValueCase_ == 5;
    }

    public final double z() {
        if (this.matchValueCase_ == 5) {
            return ((Double) this.matchValue_).doubleValue();
        }
        return 0.0d;
    }

    public final boolean C() {
        return this.matchValueCase_ == 4;
    }

    public final qu1 v() {
        if (this.matchValueCase_ == 4) {
            return (qu1) this.matchValue_;
        }
        return DEFAULT_INSTANCE;
    }

    public final boolean F() {
        return this.comparisonOperatorCase_ == 6;
    }

    public final boolean G() {
        return this.comparisonOperatorCase_ == 7;
    }

    public final boolean D() {
        return this.comparisonOperatorCase_ == 8;
    }

    public final boolean y() {
        return this.equalsTo_;
    }
}
