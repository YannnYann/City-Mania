package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ua3 extends vz0 implements uw1 {
    private static final ua3 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private long jseLastUpdateTimeMs_;
    private long lastUpdateTimeMs_;
    private String cachedSdkCore_ = "";
    private String cachedJseSdkCore_ = "";

    static {
        ua3 ua3Var = new ua3();
        DEFAULT_INSTANCE = ua3Var;
        vz0.a((Class<ua3>) ua3.class, ua3Var);
    }

    public static ua3 a(InputStream inputStream) {
        return (ua3) vz0.a(DEFAULT_INSTANCE, inputStream);
    }

    public static ua3 w() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = sa3.a[dVar.ordinal()];
        if (i == 1) {
            return new ua3();
        }
        if (i == 2) {
            return new ta3();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ለ\u0000\u0002ဂ\u0001\u0003ለ\u0002\u0004ဂ\u0003", new Object[]{"bitField0_", "cachedSdkCore_", "lastUpdateTimeMs_", "cachedJseSdkCore_", "jseLastUpdateTimeMs_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(ua3.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 4;
        this.cachedJseSdkCore_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.cachedSdkCore_ = str;
    }

    public final String v() {
        return this.cachedSdkCore_;
    }

    public final long x() {
        return this.lastUpdateTimeMs_;
    }
}
