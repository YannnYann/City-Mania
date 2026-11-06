package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class d90 extends vz0 implements uw1 {
    private static final d90 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private int code_;
    private du message_;
    private du version_;

    static {
        d90 d90Var = new d90();
        DEFAULT_INSTANCE = d90Var;
        vz0.a((Class<d90>) d90.class, d90Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = r70.a[dVar.ordinal()];
        if (i == 1) {
            return new d90();
        }
        if (i == 2) {
            return new c90();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"bitField0_", "code_", "message_", "version_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(d90.class);
    }

    public d90() {
        du duVar = du.b;
        this.message_ = duVar;
        this.version_ = duVar;
    }
}
