###### Class com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdRequest (com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenAdRequest)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;
.source "SourceFile"


# instance fields
.field public final n:Z

.field public final o:Z


# virtual methods
.method public final synthetic a()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;->n:Z

    return v0
.end method

.method public final getAdPersistenceEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;->o:Z

    return v0
.end method
