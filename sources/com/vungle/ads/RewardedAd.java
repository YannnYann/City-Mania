package com.vungle.ads;

import android.content.Context;
import com.vungle.ads.internal.q1;
import com.vungle.ads.internal.r;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class RewardedAd extends BaseFullscreenAd {
    public /* synthetic */ RewardedAd(Context context, String str, AdConfig adConfig, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i & 4) != 0 ? new AdConfig() : adConfig);
    }

    public final void setAlertBodyText(String bodyText) {
        Intrinsics.checkNotNullParameter(bodyText, "bodyText");
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.RewardedAdInternal");
        ((q1) adInternal$vungle_ads_release).a(bodyText);
    }

    public final void setAlertCloseButtonText(String closeButtonText) {
        Intrinsics.checkNotNullParameter(closeButtonText, "closeButtonText");
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.RewardedAdInternal");
        ((q1) adInternal$vungle_ads_release).b(closeButtonText);
    }

    public final void setAlertContinueButtonText(String continueButtonText) {
        Intrinsics.checkNotNullParameter(continueButtonText, "continueButtonText");
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.RewardedAdInternal");
        ((q1) adInternal$vungle_ads_release).c(continueButtonText);
    }

    public final void setAlertTitleText(String titleText) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.RewardedAdInternal");
        ((q1) adInternal$vungle_ads_release).d(titleText);
    }

    public final void setUserId(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.RewardedAdInternal");
        ((q1) adInternal$vungle_ads_release).e(userId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardedAd(Context context, String placementId, AdConfig adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
    }

    @Override // com.vungle.ads.BaseAd
    public q1 constructAdInternal$vungle_ads_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new q1(context);
    }
}
