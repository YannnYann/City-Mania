package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class nm2 extends vz0 implements uw1 {
    private static final nm2 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    private int bitField0_;
    private boolean cacheHit_;
    private int cacheMissReason_;
    private boolean isFromPreviousSession_;
    private int numAdsInCachedResponse_;
    private int numRequestedAds_;
    private long timeInCacheMs_;

    static {
        nm2 nm2Var = new nm2();
        DEFAULT_INSTANCE = nm2Var;
        vz0.a((Class<nm2>) nm2.class, nm2Var);
    }

    public static lm2 v() {
        return (lm2) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i = km2.a[dVar.ordinal()];
        if (i == 1) {
            return new nm2();
        }
        if (i == 2) {
            return new lm2();
        }
        if (i == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဇ\u0000\u0002ဇ\u0001\u0003ဌ\u0002\u0004င\u0003\u0005င\u0004\u0006ဂ\u0005", new Object[]{"bitField0_", "cacheHit_", "isFromPreviousSession_", "cacheMissReason_", "numRequestedAds_", "numAdsInCachedResponse_", "timeInCacheMs_"});
        }
        if (i == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i != 5) {
            return null;
        }
        return vz0.b(nm2.class);
    }
}
