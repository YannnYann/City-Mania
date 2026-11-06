###### Class com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAdEventCallback (com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAdEventCallback)
.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialAdEventCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/OnAppEventListener;


# virtual methods
.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
