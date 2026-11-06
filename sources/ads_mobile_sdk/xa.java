package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class xa extends vz0 implements uw1 {
    private static final xa DEFAULT_INSTANCE;
    public static final int c = 8;
    public static final int d = 21;
    public static final int e = 22;
    public static final int f = 23;
    public static final int g = 24;
    public static final int h = 25;
    public static final int i = 40;
    public static final int j = 41;
    public static final int k = 60;
    public static final int l = 61;
    public static final int m = 62;
    public static final int n = 63;
    public static final int o = 64;
    public static final int p = 65;
    public static final int q = 66;
    private long apiLevel_;
    private long appVersionCode_;
    private int bitField0_;
    private int deviceType_;
    private int hostType_;
    private int osType_;
    private long requestedAdshieldVersion_;
    private long samplingDenominator_;
    private int experimentIdsMemoizedSerializedSize = -1;
    private yh1.f<gt1> logEvents_ = vz0.k();
    private String model_ = "";
    private String locale_ = "";
    private String country_ = "";
    private String appId_ = "";
    private String hostVersion_ = "";
    private String adshieldVersion_ = "";
    private yh1.c experimentIds_ = vz0.i();

    static {
        xa xaVar = new xa();
        DEFAULT_INSTANCE = xaVar;
        vz0.a((Class<xa>) xa.class, xaVar);
    }

    public static wa v() {
        return (wa) DEFAULT_INSTANCE.h();
    }

    public final void a(gt1 gt1Var) {
        Objects.requireNonNull(gt1Var);
        yh1.f<gt1> fVar = this.logEvents_;
        if (!fVar.b()) {
            this.logEvents_ = vz0.a(fVar);
        }
        this.logEvents_.add(gt1Var);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 256;
        this.adshieldVersion_ = str;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = va.a[dVar.ordinal()];
        if (i2 == 1) {
            return new xa();
        }
        if (i2 == 2) {
            return new wa();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u000f\u0000\u0001\bB\u000f\u0000\u0002\u0000\b\u001b\u0015ဂ\u0000\u0016ဈ\u0001\u0017ဈ\u0002\u0018ဈ\u0003\u0019᠌\u0004(ဈ\u0005)ဂ\u0006<ဈ\u0007=ဈ\b>ဂ\t?ဂ\n@'Aဌ\u000bBဌ\f", new Object[]{"bitField0_", "logEvents_", gt1.class, "apiLevel_", "model_", "locale_", "country_", "deviceType_", hn0.a, "appId_", "appVersionCode_", "hostVersion_", "adshieldVersion_", "samplingDenominator_", "requestedAdshieldVersion_", "experimentIds_", "hostType_", "osType_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(xa.class);
    }

    public final void g(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 2;
        this.model_ = str;
    }

    public final void f(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 4;
        this.locale_ = str;
    }

    public final void d(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 8;
        this.country_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 32;
        this.appId_ = str;
    }

    public final void e(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        this.hostVersion_ = str;
    }
}
