###### Class com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRefreshCallback (com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRefreshCallback)
.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public onAdFailedToRefresh(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .registers 3

    .line 0
    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAdRefreshed()V
    .registers 1

    .line 0
    return-void
.end method
