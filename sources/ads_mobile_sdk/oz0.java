package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class oz0 extends vz0 implements uw1 {
    private static final oz0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private int bitField0_;
    private du bytecode_;
    private jv2 metadata_;
    private du vm_;

    static {
        oz0 oz0Var = new oz0();
        DEFAULT_INSTANCE = oz0Var;
        vz0.a((Class<oz0>) oz0.class, oz0Var);
    }

    public static oz0 a(byte[] bArr, er0 er0Var) {
        return (oz0) vz0.a(DEFAULT_INSTANCE, bArr, er0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = mz0.a[dVar.ordinal()];
        if (i == 1) {
            return new oz0();
        }
        if (i == 2) {
            return new nz0();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"bitField0_", "metadata_", "vm_", "bytecode_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(oz0.class);
    }

    public oz0() {
        du duVar = du.b;
        this.vm_ = duVar;
        this.bytecode_ = duVar;
    }

    public final jv2 w() {
        jv2 jv2Var = this.metadata_;
        return jv2Var == null ? jv2.w() : jv2Var;
    }

    public final du x() {
        return this.vm_;
    }

    public final du v() {
        return this.bytecode_;
    }
}
