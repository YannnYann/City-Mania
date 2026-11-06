package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class uv0 extends vz0.a implements uw1 {
    public final void a(String str, String str2) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(str2);
        d();
        vv0 vv0Var = (vv0) this.b;
        if (!vv0Var.storedSdkCoreData_.d()) {
            vv0Var.storedSdkCoreData_ = vv0Var.storedSdkCoreData_.f();
        }
        vv0Var.storedSdkCoreData_.put(str, str2);
    }

    public final void b(String str) {
        d();
        ((vv0) this.b).b(str);
    }

    public final void c(String str) {
        d();
        ((vv0) this.b).c(str);
    }

    public final void j() {
        d();
        vv0 vv0Var = (vv0) this.b;
        vv0Var.bitField0_ |= 4;
        vv0Var.hasSdkInitializedPreviously_ = true;
    }

    public final void a(String str) {
        Objects.requireNonNull(str);
        d();
        vv0 vv0Var = (vv0) this.b;
        if (!vv0Var.storedSdkCoreData_.d()) {
            vv0Var.storedSdkCoreData_ = vv0Var.storedSdkCoreData_.f();
        }
        vv0Var.storedSdkCoreData_.remove(str);
    }

    public final void a(k30 k30Var) {
        d();
        ((vv0) this.b).a(k30Var);
    }

    public final void a(int i) {
        d();
        vv0 vv0Var = (vv0) this.b;
        vv0Var.bitField0_ |= 2;
        vv0Var.sessionsSinceUpdate_ = i;
    }

    public uv0() {
        super(vv0.DEFAULT_INSTANCE);
    }

    public final int h() {
        return ((vv0) this.b).sessionsSinceUpdate_;
    }

    public final Map i() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((vv0) this.b).storedSdkCoreData_));
    }
}
