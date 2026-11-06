package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ab extends vz0 implements uw1 {
    private static final ab DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = 8;
    private long apiLevel_;
    private long appVersionCode_;
    private int bitField0_;
    private int hostType_;
    private int osType_;
    private du vmVersion_ = du.b;
    private String model_ = "";
    private String appId_ = "";
    private String hostVersion_ = "";

    static {
        ab abVar = new ab();
        DEFAULT_INSTANCE = abVar;
        vz0.a((Class<ab>) ab.class, abVar);
    }

    public static za v() {
        return (za) DEFAULT_INSTANCE.h();
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 8;
        this.appId_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 32;
        this.hostVersion_ = str;
    }

    public final void d(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 4;
        this.model_ = str;
    }

    public final void a(du duVar) {
        Objects.requireNonNull(duVar);
        this.bitField0_ |= 1;
        this.vmVersion_ = duVar;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = ya.a[dVar.ordinal()];
        if (i2 == 1) {
            return new ab();
        }
        if (i2 == 2) {
            return new za();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ည\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဂ\u0004\u0006ဈ\u0005\u0007ဌ\u0006\bဌ\u0007", new Object[]{"bitField0_", "vmVersion_", "apiLevel_", "model_", "appId_", "appVersionCode_", "hostVersion_", "osType_", "hostType_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(ab.class);
    }
}
