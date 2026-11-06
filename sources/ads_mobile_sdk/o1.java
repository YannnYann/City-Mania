package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class o1 extends vz0 implements uw1 {
    private static final o1 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    private int androidApiVersion_;
    private int bitField0_;
    private long versionCode_;
    private ju1<String, rx0> pools_ = ju1.b();
    private String packageName_ = "";
    private String deviceModel_ = "";
    private String consentStringHash_ = "";

    static {
        o1 o1Var = new o1();
        DEFAULT_INSTANCE = o1Var;
        vz0.a((Class<o1>) o1.class, o1Var);
    }

    public static o1 a(InputStream inputStream) {
        return (o1) vz0.a(DEFAULT_INSTANCE, inputStream);
    }

    public static o1 x() {
        return DEFAULT_INSTANCE;
    }

    public final Map A() {
        return Collections.unmodifiableMap(this.pools_);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = m1.a[dVar.ordinal()];
        if (i == 1) {
            return new o1();
        }
        if (i == 2) {
            return new n1();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0001\u0000\u0000\u00012\u0002ለ\u0000\u0003ဂ\u0001\u0004ለ\u0002\u0005င\u0003\u0006ለ\u0004", new Object[]{"bitField0_", "pools_", gu1.a(u24.a.k, "", u24.a.m, rx0.w()), "packageName_", "versionCode_", "deviceModel_", "androidApiVersion_", "consentStringHash_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(o1.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 16;
        this.consentStringHash_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 4;
        this.deviceModel_ = str;
    }

    public final void d(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.packageName_ = str;
    }

    public final String z() {
        return this.packageName_;
    }

    public final long B() {
        return this.versionCode_;
    }

    public final String y() {
        return this.deviceModel_;
    }

    public final int v() {
        return this.androidApiVersion_;
    }

    public final String w() {
        return this.consentStringHash_;
    }
}
