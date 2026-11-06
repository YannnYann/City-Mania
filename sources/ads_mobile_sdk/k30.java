package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class k30 extends vz0 implements uw1 {
    private static final k30 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    private int bitField0_;
    private u00 consentAllowlist_;
    private hj2 patternMatchingFlag_;
    private yp2 preProcessingFlag_;
    private ju1<String, String> concatenatedSignalsMap_ = ju1.b();
    private String consentStringJson_ = "";
    private String consentStateJson_ = "";

    static {
        k30 k30Var = new k30();
        DEFAULT_INSTANCE = k30Var;
        vz0.a((Class<k30>) k30.class, k30Var);
    }

    public static j30 D() {
        return (j30) DEFAULT_INSTANCE.h();
    }

    public static k30 z() {
        return DEFAULT_INSTANCE;
    }

    public final void a(u00 u00Var) {
        Objects.requireNonNull(u00Var);
        this.consentAllowlist_ = u00Var;
        this.bitField0_ |= 16;
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 2;
        this.consentStateJson_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.consentStringJson_ = str;
    }

    public final Map v() {
        return Collections.unmodifiableMap(this.concatenatedSignalsMap_);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = i30.a[dVar.ordinal()];
        if (i == 1) {
            return new k30();
        }
        if (i == 2) {
            return new j30();
        }
        if (i == 3) {
            u24.a aVar = u24.a.k;
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0001\u0000\u0000\u0001ለ\u0000\u0002ለ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u00052\u0006ဉ\u0004", new Object[]{"bitField0_", "consentStringJson_", "consentStateJson_", "patternMatchingFlag_", "preProcessingFlag_", "concatenatedSignalsMap_", gu1.a(aVar, "", aVar, ""), "consentAllowlist_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(k30.class);
    }

    public final String y() {
        return this.consentStringJson_;
    }

    public final String x() {
        return this.consentStateJson_;
    }

    public final boolean C() {
        return (this.bitField0_ & 4) != 0;
    }

    public final hj2 A() {
        hj2 hj2Var = this.patternMatchingFlag_;
        return hj2Var == null ? hj2.v() : hj2Var;
    }

    public final yp2 B() {
        yp2 yp2Var = this.preProcessingFlag_;
        return yp2Var == null ? yp2.v() : yp2Var;
    }

    public final u00 w() {
        u00 u00Var = this.consentAllowlist_;
        return u00Var == null ? u00.y() : u00Var;
    }
}
