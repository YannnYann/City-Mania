package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class kw1 extends vz0 implements uw1 {
    private static final kw1 DEFAULT_INSTANCE;
    public static final int c = 1;
    private yh1.f<ev1> adNetworkInfo_ = vz0.k();

    static {
        kw1 kw1Var = new kw1();
        DEFAULT_INSTANCE = kw1Var;
        vz0.a((Class<kw1>) kw1.class, kw1Var);
    }

    public static kw1 w() {
        return DEFAULT_INSTANCE;
    }

    public static jw1 x() {
        return (jw1) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = iw1.a[dVar.ordinal()];
        if (i == 1) {
            return new kw1();
        }
        if (i == 2) {
            return new jw1();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"adNetworkInfo_", ev1.class});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(kw1.class);
    }

    public final List v() {
        return this.adNetworkInfo_;
    }
}
