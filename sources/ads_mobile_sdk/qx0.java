package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class qx0 extends vz0.a implements uw1 {
    public final void a(String str, j9 j9Var) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(j9Var);
        d();
        rx0 rx0Var = (rx0) this.b;
        if (!rx0Var.adResponseLists_.d()) {
            rx0Var.adResponseLists_ = rx0Var.adResponseLists_.f();
        }
        rx0Var.adResponseLists_.put(str, j9Var);
    }

    public final void h() {
        d();
        rx0 rx0Var = (rx0) this.b;
        if (!rx0Var.adResponseLists_.d()) {
            rx0Var.adResponseLists_ = rx0Var.adResponseLists_.f();
        }
        rx0Var.adResponseLists_.clear();
    }

    public final void a(Map map) {
        d();
        rx0 rx0Var = (rx0) this.b;
        if (!rx0Var.adResponseLists_.d()) {
            rx0Var.adResponseLists_ = rx0Var.adResponseLists_.f();
        }
        rx0Var.adResponseLists_.putAll(map);
    }

    public final void a(String str) {
        Objects.requireNonNull(str);
        d();
        rx0 rx0Var = (rx0) this.b;
        if (!rx0Var.adResponseLists_.d()) {
            rx0Var.adResponseLists_ = rx0Var.adResponseLists_.f();
        }
        rx0Var.adResponseLists_.remove(str);
    }

    public qx0() {
        super(rx0.DEFAULT_INSTANCE);
    }

    public final Map i() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((rx0) this.b).adResponseLists_));
    }
}
