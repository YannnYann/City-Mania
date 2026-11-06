package io.bidmachine;

import android.util.Size;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class BannerAdSize {
    public static final BannerAdSize Banner;
    public static final Companion Companion = new Companion(null);
    private static final BannerAdSize[] FIXED_BANNER_AD_SIZES;
    public static final BannerAdSize Leaderboard;
    public static final BannerAdSize MediumRectangle;
    public static final BannerAdSize Undefined;
    private final int height;
    private final boolean isAdaptive;
    private final int width;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final BannerAdSize adaptive(int i, int i2) {
            return new BannerAdSize(i, i2, true, null);
        }

        public final BannerAdSize firstFixedOrNull(int i, int i2) {
            for (BannerAdSize bannerAdSize : BannerAdSize.FIXED_BANNER_AD_SIZES) {
                if (bannerAdSize.isSuitable(i, i2)) {
                    return bannerAdSize;
                }
            }
            return null;
        }

        public final int getMaxAdaptiveHeight(int i) {
            BannerAdSize bannerAdSize = BannerAdSize.Leaderboard;
            return i >= bannerAdSize.getWidth() ? bannerAdSize.getHeight() : BannerAdSize.Banner.getHeight();
        }

        private Companion() {
        }
    }

    static {
        BannerAdSize bannerAdSize = new BannerAdSize(320, 50, false, 4, null);
        Banner = bannerAdSize;
        BannerAdSize bannerAdSize2 = new BannerAdSize(728, 90, false, 4, null);
        Leaderboard = bannerAdSize2;
        BannerAdSize bannerAdSize3 = new BannerAdSize(300, 250, false, 4, null);
        MediumRectangle = bannerAdSize3;
        Undefined = new BannerAdSize(-1, -1, false, 4, null);
        FIXED_BANNER_AD_SIZES = new BannerAdSize[]{bannerAdSize, bannerAdSize2, bannerAdSize3};
    }

    public /* synthetic */ BannerAdSize(int i, int i2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, z);
    }

    public static final BannerAdSize adaptive(int i, int i2) {
        return Companion.adaptive(i, i2);
    }

    public static final BannerAdSize firstFixedOrNull(int i, int i2) {
        return Companion.firstFixedOrNull(i, i2);
    }

    public static final int getMaxAdaptiveHeight(int i) {
        return Companion.getMaxAdaptiveHeight(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(BannerAdSize.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type io.bidmachine.BannerAdSize");
        BannerAdSize bannerAdSize = (BannerAdSize) obj;
        return this.width == bannerAdSize.width && this.height == bannerAdSize.height && this.isAdaptive == bannerAdSize.isAdaptive;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (((this.width * 31) + this.height) * 31) + Boolean.hashCode(this.isAdaptive);
    }

    public final boolean isAdaptive() {
        return this.isAdaptive;
    }

    public final boolean isSuitable(BannerAdSize other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return isSuitable(other.width, other.height);
    }

    public final Size toSize() {
        return new Size(this.width, this.height);
    }

    public String toString() {
        return "BannerAdSize(width=" + this.width + ", height=" + this.height + ", isAdaptive=" + this.isAdaptive + ')';
    }

    private BannerAdSize(int i, int i2, boolean z) {
        this.width = i;
        this.height = i2;
        this.isAdaptive = z;
    }

    public final boolean isSuitable(int i, int i2) {
        if (!this.isAdaptive) {
            return this.width == i && this.height == i2;
        }
        if (this.width < i) {
            return false;
        }
        int i3 = this.height;
        return i3 == 0 || i3 >= i2;
    }

    public /* synthetic */ BannerAdSize(int i, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? false : z);
    }
}
