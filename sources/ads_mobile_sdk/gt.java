package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class gt extends vz0.a implements uw1 {
    public final void a(wt wtVar) {
        d();
        ((xt) this.b).a(wtVar);
    }

    public gt() {
        super(xt.DEFAULT_INSTANCE);
    }

    public final List h() {
        return Collections.unmodifiableList(((xt) this.b).thirdPartySdk_);
    }
}
