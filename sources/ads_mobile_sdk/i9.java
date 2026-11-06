package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class i9 extends vz0.a implements uw1 {
    public final void a(List list) {
        d();
        j9 j9Var = (j9) this.b;
        yh1.f fVar = j9Var.responses_;
        if (!fVar.b()) {
            j9Var.responses_ = vz0.a(fVar);
        }
        f.a(list, j9Var.responses_);
    }

    public final void h() {
        d();
        j9 j9Var = (j9) this.b;
        j9Var.getClass();
        j9Var.responses_ = vz0.k();
    }

    public final void a(d9 d9Var) {
        d();
        ((j9) this.b).a(d9Var);
    }

    public final void a(long j) {
        d();
        j9 j9Var = (j9) this.b;
        j9Var.bitField0_ |= 1;
        j9Var.lastAccessTimeMs_ = j;
    }

    public final void a(int i, d9 d9Var) {
        d();
        ((j9) this.b).a(i, d9Var);
    }

    public i9() {
        super(j9.DEFAULT_INSTANCE);
    }

    public final List i() {
        return Collections.unmodifiableList(((j9) this.b).responses_);
    }
}
