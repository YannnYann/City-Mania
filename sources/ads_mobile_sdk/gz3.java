package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class gz3 extends vz0.a implements uw1 {
    public final void a(List list) {
        d();
        hz3 hz3Var = (hz3) this.b;
        yh1.f fVar = hz3Var.nonUiThreadBlockingStartupLocations_;
        if (!fVar.b()) {
            hz3Var.nonUiThreadBlockingStartupLocations_ = vz0.a(fVar);
        }
        f.a(list, hz3Var.nonUiThreadBlockingStartupLocations_);
    }

    public final void b(List list) {
        d();
        hz3 hz3Var = (hz3) this.b;
        yh1.f fVar = hz3Var.uiThreadBlockingStartupLocations_;
        if (!fVar.b()) {
            hz3Var.uiThreadBlockingStartupLocations_ = vz0.a(fVar);
        }
        f.a(list, hz3Var.uiThreadBlockingStartupLocations_);
    }

    public final void a(long j) {
        d();
        ((hz3) this.b).maxTimePerTaskInUiThreadMs_ = j;
    }

    public final void b(long j) {
        d();
        ((hz3) this.b).totalTimeInUiThreadMs_ = j;
    }

    public gz3() {
        super(hz3.DEFAULT_INSTANCE);
    }

    public final List h() {
        return Collections.unmodifiableList(((hz3) this.b).nonUiThreadBlockingStartupLocations_);
    }

    public final List i() {
        return Collections.unmodifiableList(((hz3) this.b).uiThreadBlockingStartupLocations_);
    }
}
