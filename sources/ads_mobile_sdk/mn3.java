package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class mn3 extends vz0.a implements uw1 {
    public mn3() {
        super(on3.DEFAULT_INSTANCE);
    }

    public final mn3 b(int i) {
        d();
        ((on3) this.b).settleCount_ = i;
        return this;
    }

    public final mn3 a(int i) {
        d();
        ((on3) this.b).requiredScreenHoldSec_ = i;
        return this;
    }

    public final mn3 a(boolean z) {
        d();
        ((on3) this.b).settleEndDueToAppBackground_ = z;
        return this;
    }

    public final mn3 a(nn3 nn3Var) {
        d();
        on3 on3Var = (on3) this.b;
        on3Var.getClass();
        on3Var.videoAutoplayStartTime_ = nn3Var.getNumber();
        return this;
    }
}
