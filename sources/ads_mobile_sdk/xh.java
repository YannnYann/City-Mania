package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class xh extends vz0 implements uw1 {
    private static final xh DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 3;
    public static final int e = 4;
    private int bitField0_;
    private long timestampMs_;
    private String keyIdentifier_ = "";
    private du encryptedAdAttestationStatemement_ = du.b;

    static {
        xh xhVar = new xh();
        DEFAULT_INSTANCE = xhVar;
        vz0.a((Class<xh>) xh.class, xhVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = wf.a[dVar.ordinal()];
        if (i == 1) {
            return new xh();
        }
        if (i == 2) {
            return new wh();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"bitField0_", "timestampMs_", "keyIdentifier_", "encryptedAdAttestationStatemement_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(xh.class);
    }

    public final boolean A() {
        return (this.bitField0_ & 1) != 0;
    }

    public final long x() {
        return this.timestampMs_;
    }

    public final boolean z() {
        return (this.bitField0_ & 2) != 0;
    }

    public final String w() {
        return this.keyIdentifier_;
    }

    public final boolean y() {
        return (this.bitField0_ & 4) != 0;
    }

    public final du v() {
        return this.encryptedAdAttestationStatemement_;
    }
}
