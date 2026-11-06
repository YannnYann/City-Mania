package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class da3 extends vz0.a implements uw1 {
    public final void a(ba3 ba3Var) {
        d();
        ((ea3) this.b).a(ba3Var);
    }

    public da3() {
        super(ea3.DEFAULT_INSTANCE);
    }

    public final List h() {
        return Collections.unmodifiableList(((ea3) this.b).evictions_);
    }
}
