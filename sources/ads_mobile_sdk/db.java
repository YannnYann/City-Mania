package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class db extends vz0 implements uw1 {
    private static final db DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int activeExperimentIdsMemoizedSerializedSize = -1;
    private yh1.c activeExperimentIds_ = vz0.i();
    private int bitField0_;
    private eh2 program_;

    static {
        db dbVar = new db();
        DEFAULT_INSTANCE = dbVar;
        vz0.a((Class<db>) db.class, dbVar);
    }

    public static db a(byte[] bArr, er0 er0Var) {
        return (db) vz0.a(DEFAULT_INSTANCE, bArr, er0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = bb.a[dVar.ordinal()];
        if (i == 1) {
            return new db();
        }
        if (i == 2) {
            return new cb();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဉ\u0000\u0002'", new Object[]{"bitField0_", "program_", "activeExperimentIds_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(db.class);
    }

    public final yh1.c v() {
        return this.activeExperimentIds_;
    }

    public final eh2 w() {
        eh2 eh2Var = this.program_;
        return eh2Var == null ? eh2.v() : eh2Var;
    }
}
