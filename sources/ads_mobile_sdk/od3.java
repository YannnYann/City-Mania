package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class od3 extends vz0 implements uw1 {
    private static final od3 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private xp0 eoidData_;
    private boolean isInstallReferrerReported_;
    private boolean isServingGdprApplicable_;
    private int totalInflightAdLimit_;

    static {
        od3 od3Var = new od3();
        DEFAULT_INSTANCE = od3Var;
        vz0.a((Class<od3>) od3.class, od3Var);
    }

    public static od3 v() {
        return DEFAULT_INSTANCE;
    }

    public final void a(xp0 xp0Var) {
        Objects.requireNonNull(xp0Var);
        this.eoidData_ = xp0Var;
        this.bitField0_ |= 4;
    }

    public static od3 a(InputStream inputStream) {
        return (od3) vz0.a(DEFAULT_INSTANCE, inputStream);
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = md3.a[dVar.ordinal()];
        if (i == 1) {
            return new od3();
        }
        if (i == 2) {
            return new nd3();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဇ\u0000\u0002င\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"bitField0_", "isInstallReferrerReported_", "totalInflightAdLimit_", "eoidData_", "isServingGdprApplicable_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(od3.class);
    }

    public final boolean x() {
        return this.isInstallReferrerReported_;
    }

    public final int z() {
        return this.totalInflightAdLimit_;
    }

    public final boolean A() {
        return (this.bitField0_ & 4) != 0;
    }

    public final xp0 w() {
        xp0 xp0Var = this.eoidData_;
        return xp0Var == null ? xp0.v() : xp0Var;
    }

    public final boolean y() {
        return this.isServingGdprApplicable_;
    }
}
