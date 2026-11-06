package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class he extends vz0.a implements uw1 {
    public final void a(Set set) {
        d();
        ie ieVar = (ie) this.b;
        yh1.f fVar = ieVar.allowedAdUnits_;
        if (!fVar.b()) {
            ieVar.allowedAdUnits_ = vz0.a(fVar);
        }
        f.a(set, ieVar.allowedAdUnits_);
    }

    public final void b(Set set) {
        d();
        ie ieVar = (ie) this.b;
        yh1.f fVar = ieVar.allowedAdapterClasses_;
        if (!fVar.b()) {
            ieVar.allowedAdapterClasses_ = vz0.a(fVar);
        }
        f.a(set, ieVar.allowedAdapterClasses_);
    }

    public final void c(Set set) {
        d();
        ie ieVar = (ie) this.b;
        yh1.f fVar = ieVar.excludedAdapterClasses_;
        if (!fVar.b()) {
            ieVar.excludedAdapterClasses_ = vz0.a(fVar);
        }
        f.a(set, ieVar.excludedAdapterClasses_);
    }

    public final void d(Set set) {
        d();
        ie ieVar = (ie) this.b;
        yh1.f fVar = ieVar.initializedAdapterClasses_;
        if (!fVar.b()) {
            ieVar.initializedAdapterClasses_ = vz0.a(fVar);
        }
        f.a(set, ieVar.initializedAdapterClasses_);
    }

    public final void a(ArrayList arrayList) {
        d();
        ie ieVar = (ie) this.b;
        yh1.c cVar = ieVar.allowedFormats_;
        if (!cVar.b()) {
            ieVar.allowedFormats_ = vz0.a(cVar);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ieVar.allowedFormats_.b(((t11) it.next()).getNumber());
        }
    }

    public final void a(long j) {
        d();
        ((ie) this.b).adapterInitializationTimeoutMs_ = j;
    }

    public he() {
        super(ie.DEFAULT_INSTANCE);
    }

    public final List j() {
        ie ieVar = (ie) this.b;
        ieVar.getClass();
        return new yh1.d(ieVar.allowedFormats_, ie.allowedFormats_converter_);
    }

    public final List h() {
        return Collections.unmodifiableList(((ie) this.b).allowedAdUnits_);
    }

    public final List i() {
        return Collections.unmodifiableList(((ie) this.b).allowedAdapterClasses_);
    }

    public final List k() {
        return Collections.unmodifiableList(((ie) this.b).excludedAdapterClasses_);
    }

    public final List l() {
        return Collections.unmodifiableList(((ie) this.b).initializedAdapterClasses_);
    }
}
