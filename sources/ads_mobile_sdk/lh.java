package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class lh extends vz0 implements uw1 {
    private static final lh DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private du data_;
    private du hash_;
    private du osVersion_;
    private du timestamp_;

    static {
        lh lhVar = new lh();
        DEFAULT_INSTANCE = lhVar;
        vz0.a((Class<lh>) lh.class, lhVar);
    }

    public static kh z() {
        return (kh) DEFAULT_INSTANCE.h();
    }

    public final void b(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 4;
        this.timestamp_ = duVar;
    }

    public lh() {
        du duVar = du.b;
        this.data_ = duVar;
        this.hash_ = duVar;
        this.timestamp_ = duVar;
        this.osVersion_ = duVar;
    }

    public final du v() {
        return this.data_;
    }

    public final du w() {
        return this.hash_;
    }

    public final du y() {
        return this.timestamp_;
    }

    public final du x() {
        return this.osVersion_;
    }

    public final void a(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 8;
        this.osVersion_ = duVar;
    }

    public static lh a(byte[] bArr, er0 er0Var) {
        return (lh) vz0.a(DEFAULT_INSTANCE, bArr, er0Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = wf.a[dVar.ordinal()];
        if (i == 1) {
            return new lh();
        }
        if (i == 2) {
            return new kh();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"bitField0_", "data_", "hash_", "timestamp_", "osVersion_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(lh.class);
    }
}
