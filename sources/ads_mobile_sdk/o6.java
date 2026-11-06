package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import ads_mobile_sdk.yh1;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class o6 extends vz0 implements uw1 {
    private static final o6 DEFAULT_INSTANCE;
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
    public static final int m = 11;
    public static final int n = 12;
    public static final int o = 13;
    private int adBounceCount_;
    private long adClosedTimestampMs_;
    private long adDurationInMs_;
    private long adStartTimestampMs_;
    private long appKillTimestampMs_;
    private int bitField0_;
    private boolean isAdQuit_;
    private boolean isOsKill_;
    private long totalDurationSpentOutsideAppInMs_;
    private int appBackgroundTimestampsMsMemoizedSerializedSize = -1;
    private int appForegroundTimestampsMsMemoizedSerializedSize = -1;
    private int adClickTimestampsMsMemoizedSerializedSize = -1;
    private String gwsQueryId_ = "";
    private yh1.e appBackgroundTimestampsMs_ = vz0.j();
    private yh1.e appForegroundTimestampsMs_ = vz0.j();
    private yh1.e adClickTimestampsMs_ = vz0.j();
    private yh1.f<String> adQualityUrls_ = vz0.k();

    static {
        o6 o6Var = new o6();
        DEFAULT_INSTANCE = o6Var;
        vz0.a((Class<o6>) o6.class, o6Var);
    }

    public static o6 A() {
        return DEFAULT_INSTANCE;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = m6.a[dVar.ordinal()];
        if (i2 == 1) {
            return new o6();
        }
        if (i2 == 2) {
            return new n6();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0004\u0000\u0001Ȉ\u0002ဂ\u0000\u0003င\u0001\u0004ဇ\u0002\u0005ဇ\u0003\u0006ဂ\u0004\u0007\u0002\bဂ\u0005\tဂ\u0006\n%\u000b%\f%\rȚ", new Object[]{"bitField0_", "gwsQueryId_", "adDurationInMs_", "adBounceCount_", "isAdQuit_", "isOsKill_", "totalDurationSpentOutsideAppInMs_", "adStartTimestampMs_", "appKillTimestampMs_", "adClosedTimestampMs_", "appBackgroundTimestampsMs_", "appForegroundTimestampsMs_", "adClickTimestampsMs_", "adQualityUrls_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(o6.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.gwsQueryId_ = str;
    }

    public final yh1.f v() {
        return this.adQualityUrls_;
    }

    public final String B() {
        return this.gwsQueryId_;
    }

    public final boolean C() {
        return this.isAdQuit_;
    }

    public final long z() {
        return this.appKillTimestampMs_;
    }

    public final List x() {
        return this.appBackgroundTimestampsMs_;
    }

    public final int w() {
        return this.appBackgroundTimestampsMs_.size();
    }

    public final int y() {
        return this.appForegroundTimestampsMs_.size();
    }
}
