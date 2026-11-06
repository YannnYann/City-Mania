package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ej2 extends vz0 implements uw1 {
    private static final ej2 DEFAULT_INSTANCE;
    public static final int c = 9;
    public static final int d = 1;
    public static final int e = 11;
    public static final int f = 12;
    public static final int g = 2;
    public static final int h = 3;
    public static final int i = 4;
    public static final int j = 13;
    public static final int k = 5;
    public static final int l = 6;
    public static final int m = 7;
    public static final int n = 8;
    public static final int o = 10;
    public static final int p = 14;
    private boolean allowCompression_;
    private boolean allowCookies_;
    private int bitField0_;
    private int errorCode_;
    private zt1 pattern_;
    private ju1<String, String> include_ = ju1.b();
    private String ruleLabel_ = "";
    private yh1.f<ej2> andRules_ = vz0.k();
    private yh1.f<ej2> elseRules_ = vz0.k();
    private yh1.f<ia1> includeSignals_ = vz0.k();
    private yh1.f<String> blobUrlKeys_ = vz0.k();
    private yh1.f<String> allowedKeys_ = vz0.k();
    private yh1.f<String> consoleLogs_ = vz0.k();
    private String errorString_ = "";
    private String baseUrl_ = "";

    static {
        ej2 ej2Var = new ej2();
        DEFAULT_INSTANCE = ej2Var;
        vz0.a((Class<ej2>) ej2.class, ej2Var);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = cj2.a[dVar.ordinal()];
        if (i2 == 1) {
            return new ej2();
        }
        if (i2 == 2) {
            return new dj2();
        }
        if (i2 == 3) {
            u24.a aVar = u24.a.k;
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u000e\u0000\u0001\u0001\u000e\u000e\u0001\u0006\u0000\u0001ဉ\u0001\u00022\u0003\u001b\u0004Ț\u0005Ț\u0006ለ\u0002\u0007င\u0003\bለ\u0004\tለ\u0000\nဇ\u0005\u000b\u001b\f\u001b\rȚ\u000eဇ\u0006", new Object[]{"bitField0_", "pattern_", "include_", gu1.a(aVar, "", aVar, ""), "includeSignals_", ia1.class, "blobUrlKeys_", "consoleLogs_", "errorString_", "errorCode_", "baseUrl_", "ruleLabel_", "allowCookies_", "andRules_", ej2.class, "elseRules_", ej2.class, "allowedKeys_", "allowCompression_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(ej2.class);
    }

    public final yh1.f A() {
        return this.blobUrlKeys_;
    }

    public final yh1.f B() {
        return this.consoleLogs_;
    }

    public final yh1.f C() {
        return this.elseRules_;
    }

    public final Map F() {
        return Collections.unmodifiableMap(this.include_);
    }

    public final yh1.f G() {
        return this.includeSignals_;
    }

    public final yh1.f x() {
        return this.allowedKeys_;
    }

    public final yh1.f y() {
        return this.andRules_;
    }

    public final String I() {
        return this.ruleLabel_;
    }

    public final boolean O() {
        return (this.bitField0_ & 2) != 0;
    }

    public final zt1 H() {
        zt1 zt1Var = this.pattern_;
        return zt1Var == null ? zt1.w() : zt1Var;
    }

    public final boolean N() {
        return (this.bitField0_ & 4) != 0;
    }

    public final String E() {
        return this.errorString_;
    }

    public final boolean M() {
        return (this.bitField0_ & 8) != 0;
    }

    public final int D() {
        return this.errorCode_;
    }

    public final boolean L() {
        return (this.bitField0_ & 16) != 0;
    }

    public final String z() {
        return this.baseUrl_;
    }

    public final boolean K() {
        return (this.bitField0_ & 32) != 0;
    }

    public final boolean w() {
        return this.allowCookies_;
    }

    public final boolean J() {
        return (this.bitField0_ & 64) != 0;
    }

    public final boolean v() {
        return this.allowCompression_;
    }
}
