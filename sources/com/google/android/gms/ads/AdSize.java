package com.google.android.gms.ads;

import ads_mobile_sdk.f01;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.google.common.base.Splitter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: loaded from: classes3.dex */
public final class AdSize {
    public static final AdSize BANNER;
    public static final int BANNER_HEIGHT = 50;
    public static final int BANNER_WIDTH = 320;
    public static final AdSize FLUID;
    public static final int FULL_BANNER_HEIGHT = 60;
    public static final AdSize INVALID;
    public static final int LARGE_BANNER_HEIGHT = 100;
    public static final int LARGE_BANNER_WIDTH = 320;
    public static final int LEADERBOARD_HEIGHT = 90;
    public static final int LEADERBOARD_WIDTH = 728;
    public static final int MEDIUM_RECTANGLE_HEIGHT = 250;
    public static final int MEDIUM_RECTANGLE_WIDTH = 300;
    public static final AdSize SEARCH;
    public static final int WIDE_SKYSCRAPER_HEIGHT = 600;
    private final int a;
    private final int b;
    private final boolean c;
    private final boolean d;
    private final int e;
    private final String f;
    public static final Companion Companion = new Companion(0);
    public static final int FULL_BANNER_WIDTH = 468;
    public static final AdSize FULL_BANNER = new AdSize(FULL_BANNER_WIDTH, 60);
    public static final AdSize LARGE_BANNER = new AdSize(320, 100);
    public static final AdSize LEADERBOARD = new AdSize(728, 90);
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250);
    public static final int WIDE_SKYSCRAPER_WIDTH = 160;
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(WIDE_SKYSCRAPER_WIDTH, 600, "160x600_as", 0 == true ? 1 : 0, 0 == true ? 1 : 0, 0, 56);

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        private static AdSize a(Context context, int i, int i2) {
            return new AdSize(i, Math.max(Math.min(i > 655 ? MathKt__MathJVMKt.roundToInt((i / 728.0f) * 90) : i > 632 ? 81 : i > 526 ? MathKt__MathJVMKt.roundToInt((i / 468.0f) * 60) : i > 432 ? 68 : MathKt__MathJVMKt.roundToInt((i / 320.0f) * 50), Math.min(90, MathKt__MathJVMKt.roundToInt(((double) a(context, i2)) * 0.15d))), 50), null, true, false, 0, 52);
        }

        public final AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            return a(context, i, 0);
        }

        public final AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            return getInlineAdaptiveBannerAdSize(i, a(context, 0));
        }

        public final AdSize getInlineAdaptiveBannerAdSize(int i, int i2) {
            if (i2 < 50) {
                Splitter splitter = f01.a;
                f01.c("The maximum height set for the inline adaptive ad size was " + i2 + " dp, which is below the minimum recommended value of 50 dp.", null);
            }
            if (i2 >= 1) {
                return new AdSize(i, i2, null, false, true, i2, 12);
            }
            throw new IllegalArgumentException(("Invalid maxHeight for inline adaptive banner: " + i2).toString());
        }

        public final AdSize getLandscapeAnchoredAdaptiveBannerAdSize(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            return a(context, i, 2);
        }

        public final AdSize getLandscapeInlineAdaptiveBannerAdSize(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            return getInlineAdaptiveBannerAdSize(i, a(context, 2));
        }

        public final AdSize getPortraitAnchoredAdaptiveBannerAdSize(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            return a(context, i, 1);
        }

        public final AdSize getPortraitInlineAdaptiveBannerAdSize(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            return getInlineAdaptiveBannerAdSize(i, a(context, 1));
        }

        private Companion() {
        }

        private static int a(Context context, int i) {
            Resources resources = context.getApplicationContext().getResources();
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            if (i != resources.getConfiguration().orientation && i != 0) {
                return MathKt__MathJVMKt.roundToInt(displayMetrics.widthPixels / displayMetrics.density);
            }
            return MathKt__MathJVMKt.roundToInt(displayMetrics.heightPixels / displayMetrics.density);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        boolean z = false;
        BANNER = new AdSize(320, 50, "320x50_mb", false, z, 0, 56);
        FLUID = new AdSize(-3, -4, "fluid", z, 0 == true ? 1 : 0, 0, 56);
        int i = 0;
        SEARCH = new AdSize(-3, i, "search_v2", 0 == true ? 1 : 0, 0 == true ? 1 : 0, 0, 56);
        INVALID = new AdSize(i, 0, "invalid", 0 == true ? 1 : 0, 0 == true ? 1 : 0, 0, 56);
    }

    public AdSize(int i, int i2, String str, boolean z, boolean z2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = z;
        this.d = z2;
        this.e = i3;
        if (str == null) {
            str = i + "x" + i2 + "_as";
        }
        this.f = str;
        if (i < 0 && i != -3) {
            throw new IllegalArgumentException(("Invalid width for AdSize: " + i).toString());
        }
        if (i2 < 0 && i2 != -4) {
            throw new IllegalArgumentException(("Invalid height for AdSize: " + i2).toString());
        }
        if (z && z2) {
            throw new IllegalArgumentException("AdSize cannot be both inline and anchored adaptive");
        }
        if (z2 && i2 < 1) {
            throw new IllegalArgumentException("An inline AdSize must have a positive height");
        }
    }

    private static int a(Context context, int i) {
        if (i == -4 || i == -3) {
            return -1;
        }
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullExpressionValue(context.getResources().getDisplayMetrics(), "getDisplayMetrics(...)");
        return (int) Math.ceil(TypedValue.applyDimension(1, i, r1));
    }

    public static final AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(Context context, int i) {
        return Companion.getCurrentOrientationAnchoredAdaptiveBannerAdSize(context, i);
    }

    public static final AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(Context context, int i) {
        return Companion.getCurrentOrientationInlineAdaptiveBannerAdSize(context, i);
    }

    public static final AdSize getInlineAdaptiveBannerAdSize(int i, int i2) {
        return Companion.getInlineAdaptiveBannerAdSize(i, i2);
    }

    public static final AdSize getLandscapeAnchoredAdaptiveBannerAdSize(Context context, int i) {
        return Companion.getLandscapeAnchoredAdaptiveBannerAdSize(context, i);
    }

    public static final AdSize getLandscapeInlineAdaptiveBannerAdSize(Context context, int i) {
        return Companion.getLandscapeInlineAdaptiveBannerAdSize(context, i);
    }

    public static final AdSize getPortraitAnchoredAdaptiveBannerAdSize(Context context, int i) {
        return Companion.getPortraitAnchoredAdaptiveBannerAdSize(context, i);
    }

    public static final AdSize getPortraitInlineAdaptiveBannerAdSize(Context context, int i) {
        return Companion.getPortraitInlineAdaptiveBannerAdSize(context, i);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.a == adSize.a && this.b == adSize.b && Intrinsics.areEqual(this.f, adSize.f);
    }

    public final String getFormatString() {
        return this.f;
    }

    public final int getHeight() {
        return this.b;
    }

    public final int getHeightInPixels(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return a(context, this.b);
    }

    public final int getInlineMaxHeight() {
        return this.e;
    }

    public final int getWidth() {
        return this.a;
    }

    public final int getWidthInPixels(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return a(context, this.a);
    }

    public int hashCode() {
        return this.f.hashCode();
    }

    public final boolean isAnchoredAdaptiveBanner() {
        return this.c;
    }

    public final boolean isFluid() {
        return this.a == -3 && this.b == -4;
    }

    public final boolean isInlineAdaptiveBanner() {
        return this.d;
    }

    public String toString() {
        return this.f;
    }

    public /* synthetic */ AdSize(int i, int i2, String str, boolean z, boolean z2, int i3, int i4) {
        this(i, i2, (i4 & 4) != 0 ? null : str, (i4 & 8) != 0 ? false : z, (i4 & 16) != 0 ? false : z2, (i4 & 32) != 0 ? -1 : i3);
    }

    public AdSize(int i, int i2) {
        this(i, i2, null, false, false, 0, 56);
    }
}
