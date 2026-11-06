package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class j9 extends vz0 implements uw1 {
    private static final j9 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private int bitField0_;
    private long lastAccessTimeMs_;
    private yh1.f<d9> responses_ = vz0.k();

    static {
        j9 j9Var = new j9();
        DEFAULT_INSTANCE = j9Var;
        vz0.a((Class<j9>) j9.class, j9Var);
    }

    public static j9 v() {
        return DEFAULT_INSTANCE;
    }

    public final void a(d9 d9Var) {
        Objects.requireNonNull(d9Var);
        yh1.f<d9> fVar = this.responses_;
        if (!fVar.b()) {
            this.responses_ = vz0.a(fVar);
        }
        this.responses_.add(d9Var);
    }

    public final void a(int i, d9 d9Var) {
        Objects.requireNonNull(d9Var);
        yh1.f<d9> fVar = this.responses_;
        if (!fVar.b()) {
            this.responses_ = vz0.a(fVar);
        }
        this.responses_.set(i, d9Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = h9.a[dVar.ordinal()];
        if (i == 1) {
            return new j9();
        }
        if (i == 2) {
            return new i9();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဂ\u0000", new Object[]{"bitField0_", "responses_", d9.class, "lastAccessTimeMs_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(j9.class);
    }

    public final List y() {
        return this.responses_;
    }

    public final int x() {
        return this.responses_.size();
    }

    public final long w() {
        return this.lastAccessTimeMs_;
    }
}
