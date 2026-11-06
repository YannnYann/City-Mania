package com.unity3d.services.banners;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import com.unity3d.services.core.misc.ViewUtilities;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: compiled from: UnityBannerSize.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class UnityBannerSize {
    private final int height;
    private final int width;
    public static final Companion Companion = new Companion(null);
    private static final UnityBannerSize leaderboard = new UnityBannerSize(728, 90);
    private static final UnityBannerSize iabStandard = new UnityBannerSize(AdSize.FULL_BANNER_WIDTH, 60);
    private static final UnityBannerSize standard = new UnityBannerSize(320, 50);

    public static final UnityBannerSize getDynamicSize(Context context) {
        return Companion.getDynamicSize(context);
    }

    /* JADX INFO: compiled from: UnityBannerSize.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final UnityBannerSize getLeaderboard() {
            return UnityBannerSize.leaderboard;
        }

        public final UnityBannerSize getIabStandard() {
            return UnityBannerSize.iabStandard;
        }

        public final UnityBannerSize getStandard() {
            return UnityBannerSize.standard;
        }

        public final UnityBannerSize getDynamicSize(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            int iRoundToInt = MathKt__MathJVMKt.roundToInt(ViewUtilities.dpFromPx(context, context.getResources().getDisplayMetrics().widthPixels));
            return iRoundToInt >= getLeaderboard().getWidth() ? getLeaderboard() : iRoundToInt >= getIabStandard().getWidth() ? getIabStandard() : getStandard();
        }
    }

    public UnityBannerSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }
}
