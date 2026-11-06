package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ri extends vz0 implements uw1 {
    private static final ri DEFAULT_INSTANCE;
    public static final int c = 1;
    private ju1<String, e11> logs_ = ju1.b();

    static {
        ri riVar = new ri();
        DEFAULT_INSTANCE = riVar;
        vz0.a((Class<ri>) ri.class, riVar);
    }

    public static ri a(InputStream inputStream) {
        return (ri) vz0.a(DEFAULT_INSTANCE, inputStream);
    }

    public static ri v() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = pi.a[dVar.ordinal()];
        if (i == 1) {
            return new ri();
        }
        if (i == 2) {
            return new qi();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"logs_", gu1.a(u24.a.k, "", u24.a.m, e11.v())});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ri.class);
    }

    public final Map w() {
        return Collections.unmodifiableMap(this.logs_);
    }
}
