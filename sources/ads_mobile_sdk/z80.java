package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class z80 extends vz0 implements uw1 {
    private static final z80 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private du uri_;
    private du verb_;
    private du version_;

    static {
        z80 z80Var = new z80();
        DEFAULT_INSTANCE = z80Var;
        vz0.a((Class<z80>) z80.class, z80Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new z80();
        }
        if (i == 2) {
            return new y80();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"bitField0_", "verb_", "uri_", "version_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(z80.class);
    }

    public z80() {
        du duVar = du.b;
        this.verb_ = duVar;
        this.uri_ = duVar;
        this.version_ = duVar;
    }
}
