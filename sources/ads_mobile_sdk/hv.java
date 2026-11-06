package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class hv extends vz0 implements uw1 {
    private static final hv DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = 8;
    private int numPreloadedAds_;
    private int numPreloaders_;
    private int preloaderFormat_;
    private boolean preloaderInFlight_;
    private int preloaderMaxBufferSize_;
    private int preloaderNumAdsAvailable_;
    private String preloaderPreloadId_ = "";
    private int totalInflightAdLimit_;

    static {
        hv hvVar = new hv();
        DEFAULT_INSTANCE = hvVar;
        vz0.a((Class<hv>) hv.class, hvVar);
    }

    public static gv v() {
        return (gv) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = fv.a[dVar.ordinal()];
        if (i2 == 1) {
            return new hv();
        }
        if (i2 == 2) {
            return new gv();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\b\u0000\u0000\u0001\b\b\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\f\u0005Ȉ\u0006\u0004\u0007\u0004\b\u0007", new Object[]{"totalInflightAdLimit_", "numPreloadedAds_", "numPreloaders_", "preloaderFormat_", "preloaderPreloadId_", "preloaderMaxBufferSize_", "preloaderNumAdsAvailable_", "preloaderInFlight_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(hv.class);
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.preloaderPreloadId_ = str;
    }
}
