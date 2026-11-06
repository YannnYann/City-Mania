package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class t00 extends vz0.a implements uw1 {
    public final void a(ArrayList arrayList) {
        d();
        u00 u00Var = (u00) this.b;
        yh1.c cVar = u00Var.allowedApis_;
        if (!cVar.b()) {
            u00Var.allowedApis_ = vz0.a(cVar);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            u00Var.allowedApis_.b(((s00) it.next()).getNumber());
        }
    }

    public final yh1.d h() {
        u00 u00Var = (u00) this.b;
        u00Var.getClass();
        return new yh1.d(u00Var.allowedApis_, u00.allowedApis_converter_);
    }

    public final void a(s00 s00Var) {
        d();
        ((u00) this.b).a(s00Var);
    }

    public t00() {
        super(u00.DEFAULT_INSTANCE);
    }
}
