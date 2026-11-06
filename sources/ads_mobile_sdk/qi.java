package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class qi extends vz0.a implements uw1 {
    public final void a(String str, e11 e11Var) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(e11Var);
        d();
        ri riVar = (ri) this.b;
        if (!riVar.logs_.d()) {
            riVar.logs_ = riVar.logs_.f();
        }
        riVar.logs_.put(str, e11Var);
    }

    public final void a(String str) {
        Objects.requireNonNull(str);
        d();
        ri riVar = (ri) this.b;
        if (!riVar.logs_.d()) {
            riVar.logs_ = riVar.logs_.f();
        }
        riVar.logs_.remove(str);
    }

    public qi() {
        super(ri.DEFAULT_INSTANCE);
    }

    public final Map h() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((ri) this.b).logs_));
    }
}
