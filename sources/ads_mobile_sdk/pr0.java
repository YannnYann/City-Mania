package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class pr0 extends vz0 implements uw1 {
    private static final pr0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private du bytecode_;
    private iv2 metadata_;
    private int status_;
    private du vm_;

    static {
        pr0 pr0Var = new pr0();
        DEFAULT_INSTANCE = pr0Var;
        vz0.a((Class<pr0>) pr0.class, pr0Var);
    }

    public static or0 z() {
        return (or0) DEFAULT_INSTANCE.h();
    }

    public pr0() {
        du duVar = du.b;
        this.bytecode_ = duVar;
        this.vm_ = duVar;
    }

    public final iv2 w() {
        iv2 iv2Var = this.metadata_;
        return iv2Var == null ? iv2.x() : iv2Var;
    }

    public final du v() {
        return this.bytecode_;
    }

    public final void a(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 2;
        this.bytecode_ = duVar;
    }

    public final du y() {
        return this.vm_;
    }

    public final void b(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 4;
        this.vm_ = duVar;
    }

    public final void a(iv2 iv2Var) {
        Objects.requireNonNull(iv2Var);
        this.metadata_ = iv2Var;
        this.bitField0_ |= 1;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = nr0.a[dVar.ordinal()];
        if (i == 1) {
            return new pr0();
        }
        if (i == 2) {
            return new or0();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002\u0004᠌\u0003", new Object[]{"bitField0_", "metadata_", "bytecode_", "vm_", "status_", sl3.a});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(pr0.class);
    }

    public final ul3 x() {
        ul3 ul3VarA = ul3.a(this.status_);
        return ul3VarA == null ? ul3.STATUS_UNKNOWN : ul3VarA;
    }
}
