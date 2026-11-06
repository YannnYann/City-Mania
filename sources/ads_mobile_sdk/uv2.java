package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class uv2 extends vz0 implements uw1 {
    private static final uv2 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = 8;
    public static final int k = 9;
    public static final int l = 10;
    private long appStartProgramUpdateDelayMs_;
    private int bitField0_;
    private boolean enableRetryDownload_;
    private boolean reinitializeAfterUpdate_;
    private boolean updateBeforeInitialization_;
    private boolean updateOnInitializationOnly_ = true;
    private long minUpdateIntervalMs_ = 600000;
    private long programAlmostExpiredMs_ = 3600000;
    private String programRequestUrl_ = "https://pagead2.googlesyndication.com/mads/asp";
    private long maxRetryCount_ = 5;
    private long retryBaseIntervalMs_ = 60000;

    static {
        uv2 uv2Var = new uv2();
        DEFAULT_INSTANCE = uv2Var;
        vz0.a((Class<uv2>) uv2.class, uv2Var);
    }

    public static tv2 D() {
        return (tv2) DEFAULT_INSTANCE.h();
    }

    public static uv2 w() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = sv2.a[dVar.ordinal()];
        if (i2 == 1) {
            return new uv2();
        }
        if (i2 == 2) {
            return new tv2();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဈ\u0005\u0007ဂ\u0006\bဇ\u0007\tဂ\b\nဂ\t", new Object[]{"bitField0_", "updateOnInitializationOnly_", "reinitializeAfterUpdate_", "updateBeforeInitialization_", "minUpdateIntervalMs_", "programAlmostExpiredMs_", "programRequestUrl_", "appStartProgramUpdateDelayMs_", "enableRetryDownload_", "maxRetryCount_", "retryBaseIntervalMs_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(uv2.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 32;
        this.programRequestUrl_ = str;
    }

    public final boolean C() {
        return this.updateBeforeInitialization_;
    }

    public final long z() {
        return this.programAlmostExpiredMs_;
    }

    public final String A() {
        return this.programRequestUrl_;
    }

    public final long v() {
        return this.appStartProgramUpdateDelayMs_;
    }

    public final boolean x() {
        return this.enableRetryDownload_;
    }

    public final long y() {
        return this.maxRetryCount_;
    }

    public final long B() {
        return this.retryBaseIntervalMs_;
    }
}
