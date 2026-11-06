package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ev1 extends vz0 implements uw1 {
    private static final ev1 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 3;
    public static final int e = 2;
    private ju1<String, String> data_ = ju1.b();
    private yh1.f<String> adapters_ = vz0.k();
    private yh1.f<String> waterfallAdapters_ = vz0.k();

    static {
        ev1 ev1Var = new ev1();
        DEFAULT_INSTANCE = ev1Var;
        vz0.a((Class<ev1>) ev1.class, ev1Var);
    }

    public static dv1 y() {
        return (dv1) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = cv1.a[dVar.ordinal()];
        if (i == 1) {
            return new ev1();
        }
        if (i == 2) {
            return new dv1();
        }
        if (i == 3) {
            u24.a aVar = u24.a.k;
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0003\u0000\u0000\u0001\u0003\u0003\u0001\u0002\u0000\u0001Ț\u00022\u0003Ț", new Object[]{"adapters_", "data_", gu1.a(aVar, "", aVar, ""), "waterfallAdapters_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ev1.class);
    }

    public final Map w() {
        return Collections.unmodifiableMap(this.data_);
    }

    public final List v() {
        return this.adapters_;
    }

    public final List x() {
        return this.waterfallAdapters_;
    }
}
