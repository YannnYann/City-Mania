###### Class com.google.android.libraries.ads.mobile.sdk.iconad.IconSignalRequest (com.google.android.libraries.ads.mobile.sdk.iconad.IconSignalRequest)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;
.super Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;


# instance fields
.field public final o:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public final p:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field public final q:Ljava/lang/String;

.field public final r:Z


# virtual methods
.method public getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;->p:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object v0
.end method

.method public getCorrelator()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getIconAdPlacement()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;->o:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    return-object v0
.end method

.method public isImageLoadingDisabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;->r:Z

    return v0
.end method
