package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class hh2 extends vz0 implements uw1 {
    private static final hh2 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private long expirationTimestampMs_;
    private long generationTimestampMs_;
    private du signature_ = du.b;
    private kx3 vmId_;

    static {
        hh2 hh2Var = new hh2();
        DEFAULT_INSTANCE = hh2Var;
        vz0.a((Class<hh2>) hh2.class, hh2Var);
    }

    public static hh2 v() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = fh2.a[dVar.ordinal()];
        if (i == 1) {
            return new hh2();
        }
        if (i == 2) {
            return new gh2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ဂ\u0002\u0004ဂ\u0003", new Object[]{"bitField0_", "vmId_", "signature_", "generationTimestampMs_", "expirationTimestampMs_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(hh2.class);
    }

    public final kx3 y() {
        kx3 kx3Var = this.vmId_;
        return kx3Var == null ? kx3.v() : kx3Var;
    }

    public final du x() {
        return this.signature_;
    }

    public final long w() {
        return this.expirationTimestampMs_;
    }
}
