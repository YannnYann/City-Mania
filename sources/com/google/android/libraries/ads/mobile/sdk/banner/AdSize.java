package com.google.android.libraries.ads.mobile.sdk.banner;

import ads_mobile_sdk.f01;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.google.common.base.Splitter;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: loaded from: classes3.dex */
public final class AdSize {
    public static final AdSize BANNER;
    public static final AdSize FLUID;
    public final int a;
    public final int b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final String f;
    public static final Companion Companion = new Companion(0);
    public static final AdSize FULL_BANNER = new AdSize(com.google.android.gms.ads.AdSize.FULL_BANNER_WIDTH, 60);
    public static final AdSize LARGE_BANNER = new AdSize(320, 100);
    public static final AdSize LEADERBOARD = new AdSize(728, 90);
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250);

    public static final class Companion {
        public /* synthetic */ Companion(int i) {
            this();
        }

        public static AdSize a(Context context, int i, int i2) {
            return new AdSize(i, Math.max(Math.min(i > 655 ? MathKt__MathJVMKt.roundToInt((i / 728.0f) * 90) : i > 632 ? 81 : i > 526 ? MathKt__MathJVMKt.roundToInt((i / 468.0f) * 60) : i > 432 ? 68 : MathKt__MathJVMKt.roundToInt((i / 320.0f) * 50), Math.min(90, MathKt__MathJVMKt.roundToInt(((double) a(context, i2)) * 0.15d))), 50), null, true, false, false, 52);
        }

        public static AdSize b(Context context, int i, int i2) {
            return new AdSize(i, Math.max(Math.min(Math.max(100, MathKt__MathJVMKt.roundToInt((i / 320.0f) * 100)), Math.min(150, MathKt__MathJVMKt.roundToInt(((double) a(context, i2)) * 0.2d))), 50), null, false, false, true, 28);
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
                return new AdSize(i, i2, null, false, true, false, 44);
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

        public final AdSize getLargeAnchoredAdaptiveBannerAdSize(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            return b(context, i, 0);
        }

        public final AdSize getLargeLandscapeAnchoredAdaptiveBannerAdSize(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            return b(context, i, 2);
        }

        public final AdSize getLargePortraitAnchoredAdaptiveBannerAdSize(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            return b(context, i, 1);
        }

        public final AdSize getPortraitAnchoredAdaptiveBannerAdSize(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            return a(context, i, 1);
        }

        public final AdSize getPortraitInlineAdaptiveBannerAdSize(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
            return getInlineAdaptiveBannerAdSize(i, a(context, 1));
        }

        public Companion() {
        }

        public static int a(Context context, int i) {
            Resources resources = context.getApplicationContext().getResources();
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            if (i != resources.getConfiguration().orientation && i != 0) {
                return MathKt__MathJVMKt.roundToInt(displayMetrics.widthPixels / displayMetrics.density);
            }
            return MathKt__MathJVMKt.roundToInt(displayMetrics.heightPixels / displayMetrics.density);
        }
    }

    static {
        boolean z = false;
        boolean z2 = false;
        BANNER = new AdSize(320, 50, "320x50_mb", false, z2, z, 56);
        FLUID = new AdSize(-3, -4, "320x50_mb", z2, z, false, 56);
    }

    public AdSize(int i, int i2, String str, boolean z, boolean z2, boolean z3) {
        this.a = i;
        this.b = i2;
        this.c = z;
        this.d = z2;
        this.e = z3;
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
        if (z2 && z) {
            throw new IllegalArgumentException("AdSize cannot be both inline and anchored adaptive");
        }
        if (z2 && z3) {
            throw new IllegalArgumentException("AdSize cannot be both inline and large anchored adaptive");
        }
        if (z && z3) {
            throw new IllegalArgumentException("AdSize cannot be both anchored and large anchored adaptive");
        }
        if (z2 && i2 < 1) {
            throw new IllegalArgumentException("An inline AdSize must have a positive height");
        }
    }

    public static int a(Context context, int i) {
        if (i == -4 || i == -3) {
            return -1;
        }
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullExpressionValue(context.getResources().getDisplayMetrics(), "getDisplayMetrics(...)");
        return (int) Math.ceil(TypedValue.applyDimension(1, i, r1));
    }

    public static final AdSize getLargeAnchoredAdaptiveBannerAdSize(Context context, int i) {
        return Companion.getLargeAnchoredAdaptiveBannerAdSize(context, i);
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

    public final int getWidth() {
        return this.a;
    }

    public final int getWidthInPixels(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return a(context, this.a);
    }

    public int hashCode() {
        return Objects.hash(this.f, Boolean.valueOf(isFluid()));
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

    public final boolean isLargeAnchoredAdaptiveBanner() {
        return this.e;
    }

    public String toString() {
        return this.f + " " + (isFluid() ? "fluid" : "");
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException
        */
    public /* synthetic */ AdSize(int r8, int r9, java.lang.String r10, boolean r11, boolean r12, boolean r13, int r14) {
        /*
            r7 = this;
            r0 = r14 & 4
            if (r0 == 0) goto L5
            r10 = 0
        L5:
            r3 = r10
            r10 = r14 & 8
            r0 = 0
            if (r10 == 0) goto Ld
            r4 = r0
            goto Le
        Ld:
            r4 = r11
        Le:
            r10 = r14 & 16
            if (r10 == 0) goto L14
            r5 = r0
            goto L15
        L14:
            r5 = r12
        L15:
            r10 = r14 & 32
            if (r10 == 0) goto L1e
            r6 = r0
            r1 = r8
            r2 = r9
            r0 = r7
            goto L22
        L1e:
            r6 = r13
            r0 = r7
            r1 = r8
            r2 = r9
        L22:
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.ads.mobile.sdk.banner.AdSize.<init>(int, int, java.lang.String, boolean, boolean, boolean, int):void");
    }

    public AdSize(int i, int i2) {
        this(i, i2, null, false, false, false, 56);
    }
}
