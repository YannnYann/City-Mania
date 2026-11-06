package ads_mobile_sdk;

import ads_mobile_sdk.u24;
import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class jm extends vz0 implements uw1 {
    private static final jm DEFAULT_INSTANCE;
    public static final int c = 13;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public static final int g = 4;
    public static final int h = 5;
    public static final int i = 6;
    public static final int j = 7;
    public static final int k = 8;
    public static final int l = 9;
    public static final int m = 10;
    public static final int n = 11;
    public static final int o = 12;
    private int appSettingsVersion_;
    private int bitField0_;
    private long lastUpdateTimeMs_;
    private long serverCacheTtlSecs_;
    private int loggingOnlyExperimentIdsMemoizedSerializedSize = -1;
    private ju1<String, kw1> adUnitAndFormatToMediationConfigs_ = ju1.b();
    private ju1<String, String> adUnitAndFormatToRequestSignals_ = ju1.b();
    private ju1<String, be> adapterInitializationConfigs_ = ju1.b();
    private ju1<String, mc> adUnitPatterns_ = ju1.b();
    private ju1<String, ts> signalAdapterConfigs_ = ju1.b();
    private ju1<String, ts> admobSignalAdapterConfigs_ = ju1.b();
    private ju1<String, ts> adManagerSignalAdapterConfigs_ = ju1.b();
    private String appSettingsJson_ = "";
    private yh1.e loggingOnlyExperimentIds_ = vz0.j();
    private String commonSettingsJson_ = "";

    static {
        jm jmVar = new jm();
        DEFAULT_INSTANCE = jmVar;
        vz0.a((Class<jm>) jm.class, jmVar);
    }

    public static jm E() {
        return DEFAULT_INSTANCE;
    }

    public static im H() {
        return (im) DEFAULT_INSTANCE.h();
    }

    public static jm a(InputStream inputStream) {
        return (jm) vz0.a(DEFAULT_INSTANCE, inputStream);
    }

    public final Map A() {
        return Collections.unmodifiableMap(this.admobSignalAdapterConfigs_);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = hm.a[dVar.ordinal()];
        if (i2 == 1) {
            return new jm();
        }
        if (i2 == 2) {
            return new im();
        }
        if (i2 == 3) {
            u24.a aVar = u24.a.k;
            u24.a aVar2 = u24.a.m;
            return vz0.a(DEFAULT_INSTANCE, "\u0004\r\u0000\u0001\u0001\r\r\u0007\u0001\u0000\u0001ለ\u0001\u0002ဂ\u0002\u0003ဂ\u0003\u0004%\u00052\u0006ለ\u0004\u00072\b2\t2\n2\u000b2\f2\rင\u0000", new Object[]{"bitField0_", "appSettingsJson_", "lastUpdateTimeMs_", "serverCacheTtlSecs_", "loggingOnlyExperimentIds_", "adUnitAndFormatToMediationConfigs_", gu1.a(aVar, "", aVar2, kw1.w()), "commonSettingsJson_", "adUnitAndFormatToRequestSignals_", gu1.a(aVar, "", aVar, ""), "adapterInitializationConfigs_", gu1.a(aVar, "", aVar2, be.v()), "adUnitPatterns_", gu1.a(aVar, "", aVar2, mc.w()), "signalAdapterConfigs_", gu1.a(aVar, "", aVar2, ts.v()), "admobSignalAdapterConfigs_", gu1.a(aVar, "", aVar2, ts.v()), "adManagerSignalAdapterConfigs_", gu1.a(aVar, "", aVar2, ts.v()), "appSettingsVersion_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(jm.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 2;
        this.appSettingsJson_ = str;
    }

    public final void c(String str) {
        this.bitField0_ |= 16;
        this.commonSettingsJson_ = str;
    }

    public final Map v() {
        return Collections.unmodifiableMap(this.adManagerSignalAdapterConfigs_);
    }

    public final Map w() {
        return Collections.unmodifiableMap(this.adUnitAndFormatToMediationConfigs_);
    }

    public final Map x() {
        return Collections.unmodifiableMap(this.adUnitAndFormatToRequestSignals_);
    }

    public final Map y() {
        return Collections.unmodifiableMap(this.adUnitPatterns_);
    }

    public final Map z() {
        return Collections.unmodifiableMap(this.adapterInitializationConfigs_);
    }

    public final int C() {
        return this.appSettingsVersion_;
    }

    public final String B() {
        return this.appSettingsJson_;
    }

    public final long F() {
        return this.lastUpdateTimeMs_;
    }

    public final long G() {
        return this.serverCacheTtlSecs_;
    }

    public final String D() {
        return this.commonSettingsJson_;
    }
}
