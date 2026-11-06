package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class n1 extends vz0.a implements uw1 {
    public final void a(String str, rx0 rx0Var) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(rx0Var);
        d();
        o1 o1Var = (o1) this.b;
        if (!o1Var.pools_.d()) {
            o1Var.pools_ = o1Var.pools_.f();
        }
        o1Var.pools_.put(str, rx0Var);
    }

    public final void b(String str) {
        d();
        ((o1) this.b).b(str);
    }

    public final void c(String str) {
        d();
        ((o1) this.b).c(str);
    }

    public final void d(String str) {
        d();
        ((o1) this.b).d(str);
    }

    public final void h() {
        d();
        o1 o1Var = (o1) this.b;
        if (!o1Var.pools_.d()) {
            o1Var.pools_ = o1Var.pools_.f();
        }
        o1Var.pools_.clear();
    }

    public final void a(String str) {
        Objects.requireNonNull(str);
        d();
        o1 o1Var = (o1) this.b;
        if (!o1Var.pools_.d()) {
            o1Var.pools_ = o1Var.pools_.f();
        }
        o1Var.pools_.remove(str);
    }

    public final void a(int i) {
        d();
        o1 o1Var = (o1) this.b;
        o1Var.bitField0_ |= 8;
        o1Var.androidApiVersion_ = i;
    }

    public final void a(long j) {
        d();
        o1 o1Var = (o1) this.b;
        o1Var.bitField0_ |= 2;
        o1Var.versionCode_ = j;
    }

    public n1() {
        super(o1.DEFAULT_INSTANCE);
    }

    public final Map i() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((o1) this.b).pools_));
    }
}
