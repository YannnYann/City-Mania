package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class a90 extends vz0 implements uw1 {
    private static final a90 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    private int bitField0_;
    private du body_;
    private du bodydigest_;
    private int bodylength_;
    private z80 firstline_;
    private byte memoizedIsInitialized = 2;
    private yh1.f<w80> headers_ = vz0.k();

    static {
        a90 a90Var = new a90();
        DEFAULT_INSTANCE = a90Var;
        vz0.a((Class<a90>) a90.class, a90Var);
    }

    public static x80 v() {
        return (x80) DEFAULT_INSTANCE.h();
    }

    public final void a(w80 w80Var) {
        Objects.requireNonNull(w80Var);
        yh1.f<w80> fVar = this.headers_;
        if (!fVar.b()) {
            this.headers_ = vz0.a(fVar);
        }
        this.headers_.add(w80Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        switch (r70.a[dVar.ordinal()]) {
            case 3:
                break;
            case 7:
                this.memoizedIsInitialized = (byte) (obj == null ? 0 : 1);
                break;
        }
        return null;
    }

    public a90() {
        du duVar = du.b;
        this.body_ = duVar;
        this.bodydigest_ = duVar;
    }
}
