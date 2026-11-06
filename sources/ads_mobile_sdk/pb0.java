package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class pb0 extends vz0.a implements uw1 {
    public final void a(Map map) {
        d();
        qb0 qb0Var = (qb0) this.b;
        if (!qb0Var.concatenatedSignalsMap_.d()) {
            qb0Var.concatenatedSignalsMap_ = qb0Var.concatenatedSignalsMap_.f();
        }
        qb0Var.concatenatedSignalsMap_.putAll(map);
    }

    public final void a(hj2 hj2Var) {
        d();
        ((qb0) this.b).a(hj2Var);
    }

    public final void a(yp2 yp2Var) {
        d();
        ((qb0) this.b).a(yp2Var);
    }

    public pb0() {
        super(qb0.DEFAULT_INSTANCE);
    }

    public final Map h() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((qb0) this.b).concatenatedSignalsMap_));
    }
}
