package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class aa0 extends vz0 implements uw1 {
    private static final aa0 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = 8;
    private boolean appVerificationEnabled_;
    private int bitField0_;
    private long googlePlayServicesVersion_;
    private boolean isAsyncCheck_;
    private boolean isInstantApps_;
    private int urlApiType_;
    private String clientVersion_ = "";
    private String clientName_ = "";
    private String updateApiListVersion_ = "";

    static {
        aa0 aa0Var = new aa0();
        DEFAULT_INSTANCE = aa0Var;
        vz0.a((Class<aa0>) aa0.class, aa0Var);
    }

    public static z90 v() {
        return (z90) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = r70.a[dVar.ordinal()];
        if (i2 == 1) {
            return new aa0();
        }
        if (i2 == 2) {
            return new z90();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\bဇ\u0007", new Object[]{"bitField0_", "clientVersion_", "googlePlayServicesVersion_", "isInstantApps_", "urlApiType_", ba0.a, "clientName_", "updateApiListVersion_", "isAsyncCheck_", "appVerificationEnabled_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(aa0.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.clientVersion_ = str;
    }
}
