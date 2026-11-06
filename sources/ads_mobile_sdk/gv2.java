package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;

/* JADX INFO: loaded from: classes.dex */
public final class gv2 extends vz0.a implements uw1 {
    public final gv2 a(yh1.c cVar) {
        d();
        iv2 iv2Var = (iv2) this.b;
        yh1.c cVar2 = iv2Var.activeExperimentIds_;
        if (!cVar2.b()) {
            iv2Var.activeExperimentIds_ = vz0.a(cVar2);
        }
        f.a(cVar, iv2Var.activeExperimentIds_);
        return this;
    }

    public gv2() {
        super(iv2.DEFAULT_INSTANCE);
    }

    public final gv2 a(yn ynVar) {
        d();
        iv2 iv2Var = (iv2) this.b;
        iv2Var.getClass();
        iv2Var.architecture_ = ynVar.a;
        iv2Var.bitField0_ |= 1;
        return this;
    }

    public final gv2 a(jv2 jv2Var) {
        d();
        ((iv2) this.b).a(jv2Var);
        return this;
    }

    public final gv2 a(hh2 hh2Var) {
        d();
        ((iv2) this.b).a(hh2Var);
        return this;
    }
}
