package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class xp0 extends vz0 implements uw1 {
    private static final xp0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private String eoid_ = "";
    private long timestampMs_;

    static {
        xp0 xp0Var = new xp0();
        DEFAULT_INSTANCE = xp0Var;
        vz0.a((Class<xp0>) xp0.class, xp0Var);
    }

    public static xp0 v() {
        return DEFAULT_INSTANCE;
    }

    public static wp0 y() {
        return (wp0) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = vp0.a[dVar.ordinal()];
        if (i == 1) {
            return new xp0();
        }
        if (i == 2) {
            return new wp0();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ለ\u0000\u0002ဂ\u0001", new Object[]{"bitField0_", "eoid_", "timestampMs_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(xp0.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.eoid_ = str;
    }

    public final String w() {
        return this.eoid_;
    }

    public final long x() {
        return this.timestampMs_;
    }
}
