package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class jw1 extends vz0.a implements uw1 {
    public final void a(ArrayList arrayList) {
        d();
        kw1 kw1Var = (kw1) this.b;
        yh1.f fVar = kw1Var.adNetworkInfo_;
        if (!fVar.b()) {
            kw1Var.adNetworkInfo_ = vz0.a(fVar);
        }
        f.a(arrayList, kw1Var.adNetworkInfo_);
    }

    public jw1() {
        super(kw1.DEFAULT_INSTANCE);
    }

    public final List h() {
        return Collections.unmodifiableList(((kw1) this.b).adNetworkInfo_);
    }
}
