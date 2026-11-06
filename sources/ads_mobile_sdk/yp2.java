package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class yp2 extends vz0 implements uw1 {
    private static final yp2 DEFAULT_INSTANCE;
    public static final int c = 1;
    private yh1.f<vp2> rules_ = vz0.k();

    static {
        yp2 yp2Var = new yp2();
        DEFAULT_INSTANCE = yp2Var;
        vz0.a((Class<yp2>) yp2.class, yp2Var);
    }

    public static yp2 a(byte[] bArr) {
        return (yp2) vz0.a(DEFAULT_INSTANCE, bArr);
    }

    public static yp2 v() {
        return DEFAULT_INSTANCE;
    }

    public static xp2 y() {
        return (xp2) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = wp2.a[dVar.ordinal()];
        if (i == 1) {
            return new yp2();
        }
        if (i == 2) {
            return new xp2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"rules_", vp2.class});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(yp2.class);
    }

    public final yh1.f x() {
        return this.rules_;
    }

    public final int w() {
        return this.rules_.size();
    }
}
