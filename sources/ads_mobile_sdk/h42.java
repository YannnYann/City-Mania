package ads_mobile_sdk;

import ads_mobile_sdk.vz0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class h42 extends vz0 implements uw1 {
    private static final h42 DEFAULT_INSTANCE;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    public static final int f = 4;
    public static final int g = 5;
    public static final int h = 6;
    public static final int i = 7;
    public static final int j = 8;
    public static final int k = 9;
    private int bitField0_;
    private boolean disableImageLoading_;
    private boolean isBannerAllowed_;
    private boolean isNativeAllowed_;
    private boolean multipleImages_;
    private String nativeMediaOrientation_ = "";
    private int preferredAdChoicesPosition_;
    private j42 sdkCustomClickGesture_;
    private boolean useCustomMute_;
    private l42 videoOptions_;

    static {
        h42 h42Var = new h42();
        DEFAULT_INSTANCE = h42Var;
        vz0.a((Class<h42>) h42.class, h42Var);
    }

    public static g42 v() {
        return (g42) DEFAULT_INSTANCE.h();
    }

    public final void a(j42 j42Var) {
        Objects.requireNonNull(j42Var);
        this.sdkCustomClickGesture_ = j42Var;
        this.bitField0_ |= 256;
    }

    public final void b(String str) {
        Objects.requireNonNull(str);
        this.bitField0_ |= 32;
        this.nativeMediaOrientation_ = str;
    }

    public final void a(l42 l42Var) {
        Objects.requireNonNull(l42Var);
        this.videoOptions_ = l42Var;
        this.bitField0_ |= 1;
    }

    @Override // ads_mobile_sdk.vz0
    public final Object a(vz0.d dVar, Object obj, Object obj2) {
        int i2 = f42.a[dVar.ordinal()];
        if (i2 == 1) {
            return new h42();
        }
        if (i2 == 2) {
            return new g42();
        }
        if (i2 == 3) {
            return vz0.a(DEFAULT_INSTANCE, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003\u0005ဇ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\bဇ\u0007\tဉ\b", new Object[]{"bitField0_", "videoOptions_", "multipleImages_", "useCustomMute_", "preferredAdChoicesPosition_", "disableImageLoading_", "nativeMediaOrientation_", "isBannerAllowed_", "isNativeAllowed_", "sdkCustomClickGesture_"});
        }
        if (i2 == 4) {
            return DEFAULT_INSTANCE;
        }
        if (i2 != 5) {
            return null;
        }
        return vz0.b(h42.class);
    }
}
