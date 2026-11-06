package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class vv0 extends vz0 implements uw1 {
    private static final vv0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 8;
    public static final int f = 5;
    public static final int g = 6;
    public static final int h = 7;
    private int bitField0_;
    private k30 consentState_;
    private boolean hasSdkInitializedPreviously_;
    private int sessionsSinceUpdate_;
    private ju1<String, String> storedSdkCoreData_ = ju1.b();
    private String flagJson_ = "";
    private String cachedUserAgent_ = "";

    static {
        vv0 vv0Var = new vv0();
        DEFAULT_INSTANCE = vv0Var;
        vz0.a((Class<vv0>) vv0.class, vv0Var);
    }

    public static uv0 C() {
        return (uv0) DEFAULT_INSTANCE.h();
    }

    public static vv0 x() {
        return DEFAULT_INSTANCE;
    }

    public final Map B() {
        return Collections.unmodifiableMap(this.storedSdkCoreData_);
    }

    public final void a(k30 k30Var) {
        Objects.requireNonNull(k30Var);
        this.consentState_ = k30Var;
        this.bitField0_ |= 8;
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 16;
        this.cachedUserAgent_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.flagJson_ = str;
    }

    public static vv0 a(InputStream inputStream) {
        return (vv0) vz0.a(DEFAULT_INSTANCE, inputStream);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = tv0.a[dVar.ordinal()];
        if (i == 1) {
            return new vv0();
        }
        if (i == 2) {
            return new uv0();
        }
        if (i == 3) {
            u24.a aVar = u24.a.k;
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0006\u0000\u0001\u0001\b\u0006\u0001\u0000\u0000\u0001ለ\u0000\u0002င\u0001\u00052\u0006ဉ\u0003\u0007ለ\u0004\bဇ\u0002", new Object[]{"bitField0_", "flagJson_", "sessionsSinceUpdate_", "storedSdkCoreData_", gu1.a(aVar, "", aVar, ""), "consentState_", "cachedUserAgent_", "hasSdkInitializedPreviously_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(vv0.class);
    }

    public final String y() {
        return this.flagJson_;
    }

    public final int A() {
        return this.sessionsSinceUpdate_;
    }

    public final boolean z() {
        return this.hasSdkInitializedPreviously_;
    }

    public final k30 w() {
        k30 k30Var = this.consentState_;
        return k30Var == null ? k30.z() : k30Var;
    }

    public final String v() {
        return this.cachedUserAgent_;
    }
}
