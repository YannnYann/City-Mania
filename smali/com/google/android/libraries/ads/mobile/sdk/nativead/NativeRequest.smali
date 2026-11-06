###### Class com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest (com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest)
.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# virtual methods
.method public abstract getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;
.end method

.method public abstract getCustomClickGestureAllowTaps()Z
.end method

.method public abstract getCustomClickGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;
.end method

.method public abstract getCustomFormatIds()Ljava/util/List;
.end method

.method public abstract getCustomMuteThisAdRequested()Z
.end method

.method public abstract getMediaAspectRatio()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;
.end method

.method public abstract getNativeAdTypes()Ljava/util/List;
.end method

.method public abstract isImageLoadingDisabled()Z
.end method
