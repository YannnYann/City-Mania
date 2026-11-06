package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ep2 extends vz0 implements uw1 {
    private static final ep2 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private yh1.f<li> androidLifecycleEvents_ = vz0.k();
    private long clickTimestampMs_;

    static {
        ep2 ep2Var = new ep2();
        DEFAULT_INSTANCE = ep2Var;
        vz0.a((Class<ep2>) ep2.class, ep2Var);
    }

    public static dp2 v() {
        return (dp2) DEFAULT_INSTANCE.h();
    }

    public final void a(li liVar) {
        Objects.requireNonNull(liVar);
        yh1.f<li> fVar = this.androidLifecycleEvents_;
        if (!fVar.b()) {
            this.androidLifecycleEvents_ = vz0.a(fVar);
        }
        this.androidLifecycleEvents_.add(liVar);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = cp2.a[dVar.ordinal()];
        if (i == 1) {
            return new ep2();
        }
        if (i == 2) {
            return new dp2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0002", new Object[]{"androidLifecycleEvents_", li.class, "clickTimestampMs_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ep2.class);
    }
}
