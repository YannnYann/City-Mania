package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class iv2 extends vz0 implements uw1 {
    private static final iv2 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int architecture_;
    private int bitField0_;
    private Object metadata_;
    private int metadataCase_ = 0;
    private int activeExperimentIdsMemoizedSerializedSize = -1;
    private yh1.c activeExperimentIds_ = vz0.i();

    static {
        iv2 iv2Var = new iv2();
        DEFAULT_INSTANCE = iv2Var;
        vz0.a((Class<iv2>) iv2.class, iv2Var);
    }

    public static gv2 A() {
        return (gv2) DEFAULT_INSTANCE.h();
    }

    public static iv2 x() {
        return DEFAULT_INSTANCE;
    }

    public final yh1.c v() {
        return this.activeExperimentIds_;
    }

    public final jv2 y() {
        if (this.metadataCase_ == 1) {
            return (jv2) this.metadata_;
        }
        return jv2.w();
    }

    public final void a(jv2 jv2Var) {
        Objects.requireNonNull(jv2Var);
        this.metadata_ = jv2Var;
        this.metadataCase_ = 1;
    }

    public final hh2 z() {
        if (this.metadataCase_ == 2) {
            return (hh2) this.metadata_;
        }
        return hh2.v();
    }

    public final yn w() {
        yn ynVarA = yn.a(this.architecture_);
        return ynVarA == null ? yn.UNSUPPORTED : ynVarA;
    }

    public final void a(hh2 hh2Var) {
        Objects.requireNonNull(hh2Var);
        this.metadata_ = hh2Var;
        this.metadataCase_ = 2;
    }

    public static iv2 a(du duVar) {
        return (iv2) vz0.a(DEFAULT_INSTANCE, duVar);
    }

    public static iv2 a(byte[] bArr, er0 er0Var) {
        return (iv2) vz0.a(DEFAULT_INSTANCE, bArr, er0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ev2.a[dVar.ordinal()];
        if (i == 1) {
            return new iv2();
        }
        if (i == 2) {
            return new gv2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003᠌\u0000\u0004'", new Object[]{"metadata_", "metadataCase_", "bitField0_", jv2.class, hh2.class, "architecture_", xn.a, "activeExperimentIds_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(iv2.class);
    }
}
