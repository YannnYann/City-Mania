package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class j22 extends vz0.a implements uw1 {
    public final void a(String str, boolean z) {
        Objects.requireNonNull(str);
        d();
        k22 k22Var = (k22) this.b;
        if (!k22Var.adUnitToUseMediaView_.d()) {
            k22Var.adUnitToUseMediaView_ = k22Var.adUnitToUseMediaView_.f();
        }
        k22Var.adUnitToUseMediaView_.put(str, Boolean.valueOf(z));
    }

    public final void a(long j) {
        d();
        ((k22) this.b).appVersionCode_ = j;
    }

    public j22() {
        super(k22.DEFAULT_INSTANCE);
    }

    public final Map h() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((k22) this.b).adUnitToUseMediaView_));
    }
}
