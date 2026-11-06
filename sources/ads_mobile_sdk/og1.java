package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class og1 extends vz0 implements uw1 {
    private static final og1 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = 8;
    public static final int k = 9;
    private int gesture_;
    private boolean isGloballyAllowlisted_;
    private boolean isLinkedDevice_;
    private boolean isTestMode_;
    private long networkExtrasExpirationSecs_;
    private String networkExtras_ = "";
    private String deviceIdForDebugging_ = "";
    private String debugAdUnitId_ = "";
    private String uiStorage_ = "";

    static {
        og1 og1Var = new og1();
        DEFAULT_INSTANCE = og1Var;
        vz0.a((Class<og1>) og1.class, og1Var);
    }

    public static ng1 F() {
        return (ng1) DEFAULT_INSTANCE.h();
    }

    public static og1 a(InputStream inputStream) {
        return (og1) vz0.a(DEFAULT_INSTANCE, inputStream);
    }

    public static og1 w() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = mg1.a[dVar.ordinal()];
        if (i2 == 1) {
            return new og1();
        }
        if (i2 == 2) {
            return new ng1();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\t\u0000\u0000\u0001\t\t\u0000\u0000\u0000\u0001\u0007\u0002\u0007\u0003\f\u0004Ȉ\u0005\u0002\u0006Ȉ\u0007Ȉ\bȈ\t\u0007", new Object[]{"isTestMode_", "isLinkedDevice_", "gesture_", "networkExtras_", "networkExtrasExpirationSecs_", "deviceIdForDebugging_", "debugAdUnitId_", "uiStorage_", "isGloballyAllowlisted_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(og1.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.debugAdUnitId_ = str;
    }

    public final void c(String str) {
        Objects.requireNonNull(str);
        this.deviceIdForDebugging_ = str;
    }

    public final void d(String str) {
        Objects.requireNonNull(str);
        this.networkExtras_ = str;
    }

    public final void e(String str) {
        Objects.requireNonNull(str);
        this.uiStorage_ = str;
    }

    public final boolean B() {
        return this.isTestMode_;
    }

    public final boolean A() {
        return this.isLinkedDevice_;
    }

    public final vd1 y() {
        vd1 vd1Var;
        int i2 = this.gesture_;
        if (i2 == 0) {
            vd1Var = vd1.NONE;
        } else if (i2 != 1) {
            vd1Var = i2 != 2 ? null : vd1.FLICK;
        } else {
            vd1Var = vd1.SHAKE;
        }
        return vd1Var == null ? vd1.UNRECOGNIZED : vd1Var;
    }

    public final String C() {
        return this.networkExtras_;
    }

    public final long D() {
        return this.networkExtrasExpirationSecs_;
    }

    public final String x() {
        return this.deviceIdForDebugging_;
    }

    public final String v() {
        return this.debugAdUnitId_;
    }

    public final String E() {
        return this.uiStorage_;
    }

    public final boolean z() {
        return this.isGloballyAllowlisted_;
    }
}
