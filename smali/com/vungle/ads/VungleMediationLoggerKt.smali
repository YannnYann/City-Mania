###### Class com.vungle.ads.VungleMediationLoggerKt (com.vungle.ads.VungleMediationLoggerKt)
.class public final Lcom/vungle/ads/VungleMediationLoggerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final access$getAdLogEntry(Lcom/vungle/ads/VungleAdType;)Lcom/vungle/ads/internal/util/t;
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/vungle/ads/BaseAd;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/vungle/ads/BaseAd;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object p0

    return-object p0

    .line 2
    :cond_b
    instance-of v0, p0, Lcom/vungle/ads/VungleBannerView;

    if-eqz v0, :cond_16

    check-cast p0, Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {p0}, Lcom/vungle/ads/VungleBannerView;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method
