###### Class com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest (com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;


# instance fields
.field public final n:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

.field public final o:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Z

.field public final s:Ljava/util/Set;


# virtual methods
.method public getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->o:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object v0
.end method

.method public final getAdPersistenceEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->r:Z

    return v0
.end method

.method public getCorrelator()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getExcludedAppIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->s:Ljava/util/Set;

    return-object v0
.end method

.method public getIconAdPlacement()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->n:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    return-object v0
.end method

.method public isImageLoadingDisabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->q:Z

    return v0
.end method
