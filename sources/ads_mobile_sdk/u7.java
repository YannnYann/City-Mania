package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class u7 extends vz0 implements uw1 {
    private static final u7 DEFAULT_INSTANCE;
    public static final int c = 1;
    private ju1<String, o6> queryIdToAdQualityDataMap_ = ju1.b();

    static {
        u7 u7Var = new u7();
        DEFAULT_INSTANCE = u7Var;
        vz0.a((Class<u7>) u7.class, u7Var);
    }

    public static u7 a(InputStream inputStream) {
        return (u7) vz0.a(DEFAULT_INSTANCE, inputStream);
    }

    public static u7 v() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = s7.a[dVar.ordinal()];
        if (i == 1) {
            return new u7();
        }
        if (i == 2) {
            return new t7();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"queryIdToAdQualityDataMap_", gu1.a(u24.a.k, "", u24.a.m, o6.A())});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(u7.class);
    }

    public final int w() {
        return this.queryIdToAdQualityDataMap_.size();
    }

    public final Map x() {
        return Collections.unmodifiableMap(this.queryIdToAdQualityDataMap_);
    }
}
