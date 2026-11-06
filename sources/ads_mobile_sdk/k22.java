package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class k22 extends vz0 implements uw1 {
    private static final k22 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    private ju1<String, Boolean> adUnitToUseMediaView_ = ju1.b();
    private long appVersionCode_;

    static {
        k22 k22Var = new k22();
        DEFAULT_INSTANCE = k22Var;
        vz0.a((Class<k22>) k22.class, k22Var);
    }

    public static k22 a(InputStream inputStream) {
        return (k22) vz0.a(DEFAULT_INSTANCE, inputStream);
    }

    public static k22 x() {
        return DEFAULT_INSTANCE;
    }

    public static j22 y() {
        return (j22) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = i22.a[dVar.ordinal()];
        if (i == 1) {
            return new k22();
        }
        if (i == 2) {
            return new j22();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0001\u0002\u00022", new Object[]{"appVersionCode_", "adUnitToUseMediaView_", gu1.a(u24.a.k, "", u24.a.j, Boolean.FALSE)});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(k22.class);
    }

    public final Map v() {
        return Collections.unmodifiableMap(this.adUnitToUseMediaView_);
    }

    public final long w() {
        return this.appVersionCode_;
    }
}
