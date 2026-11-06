package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class eh2 extends vz0 implements uw1 {
    private static final eh2 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private du encryptedProgram_ = du.b;
    private hh2 metadata_;

    static {
        eh2 eh2Var = new eh2();
        DEFAULT_INSTANCE = eh2Var;
        vz0.a((Class<eh2>) eh2.class, eh2Var);
    }

    public static eh2 v() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ch2.a[dVar.ordinal()];
        if (i == 1) {
            return new eh2();
        }
        if (i == 2) {
            return new dh2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001", new Object[]{"bitField0_", "metadata_", "encryptedProgram_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(eh2.class);
    }

    public final boolean z() {
        return (this.bitField0_ & 1) != 0;
    }

    public final hh2 x() {
        hh2 hh2Var = this.metadata_;
        return hh2Var == null ? hh2.v() : hh2Var;
    }

    public final boolean y() {
        return (this.bitField0_ & 2) != 0;
    }

    public final du w() {
        return this.encryptedProgram_;
    }
}
