package ads_mobile_sdk;

import ads_mobile_sdk.vz0;

/* JADX INFO: loaded from: classes.dex */
public final class eh extends vz0 implements uw1 {
    private static final eh DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = 8;
    private int bitField0_;
    private long percentAdOnScreen_ = -1;
    private long percentScreenCoveredByAd_ = -1;
    private long minAlphaSignal_ = -1;
    private long viewHeight_ = -1;
    private long viewWidth_ = -1;
    private long displayDensity_ = -1;
    private long estimatedOccludedSurface_ = -1;
    private long scaleFactor_ = -1;

    static {
        eh ehVar = new eh();
        DEFAULT_INSTANCE = ehVar;
        vz0.a((Class<eh>) eh.class, ehVar);
    }

    public static dh v() {
        return (dh) DEFAULT_INSTANCE.h();
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = wf.a[dVar.ordinal()];
        if (i2 == 1) {
            return new eh();
        }
        if (i2 == 2) {
            return new dh();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007", new Object[]{"bitField0_", "percentAdOnScreen_", "percentScreenCoveredByAd_", "minAlphaSignal_", "viewHeight_", "viewWidth_", "displayDensity_", "estimatedOccludedSurface_", "scaleFactor_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(eh.class);
    }
}
