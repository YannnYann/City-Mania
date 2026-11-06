package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class rx0 extends vz0 implements uw1 {
    private static final rx0 DEFAULT_INSTANCE;
    public static final int c = 1;
    private ju1<String, j9> adResponseLists_ = ju1.b();

    static {
        rx0 rx0Var = new rx0();
        DEFAULT_INSTANCE = rx0Var;
        vz0.a((Class<rx0>) rx0.class, rx0Var);
    }

    public static rx0 w() {
        return DEFAULT_INSTANCE;
    }

    public static qx0 x() {
        return (qx0) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = px0.a[dVar.ordinal()];
        if (i == 1) {
            return new rx0();
        }
        if (i == 2) {
            return new qx0();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"adResponseLists_", gu1.a(u24.a.k, "", u24.a.m, j9.v())});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(rx0.class);
    }

    public final Map v() {
        return Collections.unmodifiableMap(this.adResponseLists_);
    }
}
