package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class hj2 extends vz0 implements uw1 {
    private static final hj2 DEFAULT_INSTANCE;
    public static final int c = 1;
    private yh1.f<ej2> rules_ = vz0.k();

    static {
        hj2 hj2Var = new hj2();
        DEFAULT_INSTANCE = hj2Var;
        vz0.a((Class<hj2>) hj2.class, hj2Var);
    }

    public static hj2 a(byte[] bArr) {
        return (hj2) vz0.a(DEFAULT_INSTANCE, bArr);
    }

    public static hj2 v() {
        return DEFAULT_INSTANCE;
    }

    public static gj2 y() {
        return (gj2) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = fj2.a[dVar.ordinal()];
        if (i == 1) {
            return new hj2();
        }
        if (i == 2) {
            return new gj2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"rules_", ej2.class});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(hj2.class);
    }

    public final yh1.f x() {
        return this.rules_;
    }

    public final int w() {
        return this.rules_.size();
    }
}
