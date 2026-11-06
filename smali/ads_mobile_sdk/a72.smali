###### Class ads_mobile_sdk.a72 (ads_mobile_sdk.a72)
.class public final Lads_mobile_sdk/a72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Z

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Landroid/location/Location;

.field public final g:Lcom/google/android/gms/ads/nativead/NativeAdOptions;


# direct methods
.method public constructor <init>(Ljava/util/Set;ZIILjava/lang/String;Landroid/location/Location;Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V
    .registers 9

    .line 1
    const-string v0, "nativeAdOptions"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lads_mobile_sdk/a72;->a:Ljava/util/Set;

    .line 11
    iput-boolean p2, p0, Lads_mobile_sdk/a72;->b:Z

    .line 12
    iput p3, p0, Lads_mobile_sdk/a72;->c:I

    .line 13
    iput p4, p0, Lads_mobile_sdk/a72;->d:I

    .line 14
    iput-object p5, p0, Lads_mobile_sdk/a72;->e:Ljava/lang/String;

    .line 15
    iput-object p6, p0, Lads_mobile_sdk/a72;->f:Landroid/location/Location;

    .line 16
    iput-object p7, p0, Lads_mobile_sdk/a72;->g:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;ZIILjava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 18
    invoke-direct/range {v0 .. v7}, Lads_mobile_sdk/a72;-><init>(Ljava/util/Set;ZIILjava/lang/String;Landroid/location/Location;Lcom/google/android/gms/ads/nativead/NativeAdOptions;)V

    return-void
.end method


# virtual methods
.method public final getAdVolume()F
    .registers 3

    .line 1
    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "An operation is not implemented: b/304323160 Not yet implemented"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBirthday()Ljava/util/Date;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGender()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .registers 2

    .line 59
    iget-object v0, p0, Lads_mobile_sdk/a72;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    .line 61
    iget-object v0, p0, Lads_mobile_sdk/a72;->f:Landroid/location/Location;

    return-object v0
.end method

.method public final getMaxAdContentRating()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lads_mobile_sdk/a72;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .registers 4

    .line 34
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    .line 35
    iget-object v1, p0, Lads_mobile_sdk/a72;->g:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lads_mobile_sdk/a72;->g:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getMediaAspectRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setMediaAspectRatio(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lads_mobile_sdk/a72;->g:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getMediaAspectRatio()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_28

    const/4 v2, 0x3

    if-eq v1, v2, :cond_27

    const/4 v2, 0x0

    goto :goto_28

    :cond_27
    const/4 v2, 0x1

    .line 38
    :cond_28
    :goto_28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lads_mobile_sdk/a72;->g:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lads_mobile_sdk/a72;->g:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lads_mobile_sdk/a72;->g:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->shouldRequestMultipleImages()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getNativeAdRequestOptions()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
    .registers 2

    .line 43
    iget-object v0, p0, Lads_mobile_sdk/a72;->g:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    return-object v0
.end method

.method public final isAdMuted()Z
    .registers 3

    .line 1
    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "An operation is not implemented: b/304323160 Not yet implemented"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isDesignedForFamilies()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final isTesting()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Lads_mobile_sdk/a72;->b:Z

    return v0
.end method

.method public final isUnifiedNativeAdRequested()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final taggedForChildDirectedTreatment()I
    .registers 2

    .line 63
    iget v0, p0, Lads_mobile_sdk/a72;->c:I

    return v0
.end method

.method public final taggedForUnderAgeTreatment()I
    .registers 2

    .line 69
    iget v0, p0, Lads_mobile_sdk/a72;->d:I

    return v0
.end method
