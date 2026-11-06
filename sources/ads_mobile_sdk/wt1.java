package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class wt1 extends vz0 implements uw1 {
    private static final wt1 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    private int bitField0_;
    private float logSampleRate_;
    private String remoteCaptureServiceUrl_ = "https://pagead2.googlesyndication.com/pagead/ping?e=2&f=1";
    private long logBufferSize_ = 1000;
    private long logIntervalMs_ = 60000;

    static {
        wt1 wt1Var = new wt1();
        DEFAULT_INSTANCE = wt1Var;
        vz0.a((Class<wt1>) wt1.class, wt1Var);
    }

    public static vt1 A() {
        return (vt1) DEFAULT_INSTANCE.h();
    }

    public static wt1 v() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = ut1.a[dVar.ordinal()];
        if (i == 1) {
            return new wt1();
        }
        if (i == 2) {
            return new vt1();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ခ\u0001\u0003ဂ\u0002\u0004ဂ\u0003", new Object[]{"bitField0_", "remoteCaptureServiceUrl_", "logSampleRate_", "logBufferSize_", "logIntervalMs_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(wt1.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 1;
        this.remoteCaptureServiceUrl_ = str;
    }

    public final String z() {
        return this.remoteCaptureServiceUrl_;
    }

    public final float y() {
        return this.logSampleRate_;
    }

    public final long w() {
        return this.logBufferSize_;
    }

    public final long x() {
        return this.logIntervalMs_;
    }
}
