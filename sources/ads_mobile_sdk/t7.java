package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class t7 extends vz0.a implements uw1 {
    public final void a(String str, o6 o6Var) {
        Objects.requireNonNull(str);
        d();
        u7 u7Var = (u7) this.b;
        if (!u7Var.queryIdToAdQualityDataMap_.d()) {
            u7Var.queryIdToAdQualityDataMap_ = u7Var.queryIdToAdQualityDataMap_.f();
        }
        u7Var.queryIdToAdQualityDataMap_.put(str, o6Var);
    }

    public final void a(String str) {
        Objects.requireNonNull(str);
        d();
        u7 u7Var = (u7) this.b;
        if (!u7Var.queryIdToAdQualityDataMap_.d()) {
            u7Var.queryIdToAdQualityDataMap_ = u7Var.queryIdToAdQualityDataMap_.f();
        }
        u7Var.queryIdToAdQualityDataMap_.remove(str);
    }

    public t7() {
        super(u7.DEFAULT_INSTANCE);
    }

    public final Map h() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((u7) this.b).queryIdToAdQualityDataMap_));
    }
}
