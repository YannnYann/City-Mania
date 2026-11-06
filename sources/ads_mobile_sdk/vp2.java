package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class vp2 extends vz0 implements uw1 {
    private static final vp2 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private ju1<String, ne3> includeSignals_ = ju1.b();
    private zt1 pattern_;

    static {
        vp2 vp2Var = new vp2();
        DEFAULT_INSTANCE = vp2Var;
        vz0.a((Class<vp2>) vp2.class, vp2Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = tp2.a[dVar.ordinal()];
        if (i == 1) {
            return new vp2();
        }
        if (i == 2) {
            return new up2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001ဉ\u0000\u00022", new Object[]{"bitField0_", "pattern_", "includeSignals_", gu1.a(u24.a.k, "", u24.a.m, ne3.w())});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(vp2.class);
    }

    public final Map v() {
        return Collections.unmodifiableMap(this.includeSignals_);
    }

    public final boolean x() {
        return (this.bitField0_ & 1) != 0;
    }

    public final zt1 w() {
        zt1 zt1Var = this.pattern_;
        return zt1Var == null ? zt1.w() : zt1Var;
    }
}
