###### Class com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback (com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback)
.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public onAdClicked()V
    .registers 1

    .line 0
    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .registers 1

    .line 0
    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;)V
    .registers 3

    .line 0
    const-string v0, "fullScreenContentError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 1

    .line 0
    return-void
.end method

.method public onAdPaid(Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;)V
    .registers 3

    .line 0
    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .registers 1

    .line 0
    return-void
.end method
