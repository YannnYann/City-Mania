package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class kx3 extends vz0 implements uw1 {
    private static final kx3 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private int protocolNumber_;
    private int variant_;

    static {
        kx3 kx3Var = new kx3();
        DEFAULT_INSTANCE = kx3Var;
        vz0.a((Class<kx3>) kx3.class, kx3Var);
    }

    public static kx3 v() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ix3.a[dVar.ordinal()];
        if (i == 1) {
            return new kx3();
        }
        if (i == 2) {
            return new jx3();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"bitField0_", "protocolNumber_", "variant_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(kx3.class);
    }

    public final int w() {
        return this.protocolNumber_;
    }

    public final int x() {
        return this.variant_;
    }
}
