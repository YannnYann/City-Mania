package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ea3 extends vz0 implements uw1 {
    private static final ea3 DEFAULT_INSTANCE;
    public static final int c = 1;
    private yh1.f<ba3> evictions_ = vz0.k();

    static {
        ea3 ea3Var = new ea3();
        DEFAULT_INSTANCE = ea3Var;
        vz0.a((Class<ea3>) ea3.class, ea3Var);
    }

    public static da3 v() {
        return (da3) DEFAULT_INSTANCE.h();
    }

    public final void a(ba3 ba3Var) {
        Objects.requireNonNull(ba3Var);
        yh1.f<ba3> fVar = this.evictions_;
        if (!fVar.b()) {
            this.evictions_ = vz0.a(fVar);
        }
        this.evictions_.add(ba3Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ca3.a[dVar.ordinal()];
        if (i == 1) {
            return new ea3();
        }
        if (i == 2) {
            return new da3();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"evictions_", ba3.class});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ea3.class);
    }
}
