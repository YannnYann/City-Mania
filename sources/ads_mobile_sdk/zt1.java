package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class zt1 extends vz0 implements uw1 {
    private static final zt1 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private qu1 matchNode_;
    private zt1 notNode_;
    private yh1.f<zt1> andNodes_ = vz0.k();
    private yh1.f<zt1> orNodes_ = vz0.k();

    static {
        zt1 zt1Var = new zt1();
        DEFAULT_INSTANCE = zt1Var;
        vz0.a((Class<zt1>) zt1.class, zt1Var);
    }

    public static zt1 w() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = xt1.a[dVar.ordinal()];
        if (i == 1) {
            return new zt1();
        }
        if (i == 2) {
            return new yt1();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003ဉ\u0000\u0004ဉ\u0001", new Object[]{"bitField0_", "andNodes_", zt1.class, "orNodes_", zt1.class, "notNode_", "matchNode_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(zt1.class);
    }

    public final yh1.f v() {
        return this.andNodes_;
    }

    public final yh1.f z() {
        return this.orNodes_;
    }

    public final boolean B() {
        return (this.bitField0_ & 1) != 0;
    }

    public final zt1 y() {
        zt1 zt1Var = this.notNode_;
        return zt1Var == null ? DEFAULT_INSTANCE : zt1Var;
    }

    public final boolean A() {
        return (this.bitField0_ & 2) != 0;
    }

    public final qu1 x() {
        qu1 qu1Var = this.matchNode_;
        return qu1Var == null ? qu1.x() : qu1Var;
    }
}
