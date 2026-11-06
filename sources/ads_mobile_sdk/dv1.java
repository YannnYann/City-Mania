package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class dv1 extends vz0.a implements uw1 {
    public final void a(ArrayList arrayList) {
        d();
        ev1 ev1Var = (ev1) this.b;
        yh1.f fVar = ev1Var.adapters_;
        if (!fVar.b()) {
            ev1Var.adapters_ = vz0.a(fVar);
        }
        f.a(arrayList, ev1Var.adapters_);
    }

    public final void b(ArrayList arrayList) {
        d();
        ev1 ev1Var = (ev1) this.b;
        yh1.f fVar = ev1Var.waterfallAdapters_;
        if (!fVar.b()) {
            ev1Var.waterfallAdapters_ = vz0.a(fVar);
        }
        f.a(arrayList, ev1Var.waterfallAdapters_);
    }

    public final void a(LinkedHashMap linkedHashMap) {
        d();
        ev1 ev1Var = (ev1) this.b;
        if (!ev1Var.data_.d()) {
            ev1Var.data_ = ev1Var.data_.f();
        }
        ev1Var.data_.putAll(linkedHashMap);
    }

    public dv1() {
        super(ev1.DEFAULT_INSTANCE);
    }

    public final List h() {
        return Collections.unmodifiableList(((ev1) this.b).adapters_);
    }

    public final List j() {
        return Collections.unmodifiableList(((ev1) this.b).waterfallAdapters_);
    }

    public final Map i() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((ev1) this.b).data_));
    }
}
