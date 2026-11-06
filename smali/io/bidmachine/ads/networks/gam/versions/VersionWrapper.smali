###### Class io.bidmachine.ads.networks.gam.versions.VersionWrapper (io.bidmachine.ads.networks.gam.versions.VersionWrapper)
.class public interface abstract Lio/bidmachine/ads/networks/gam/versions/VersionWrapper;
.super Ljava/lang/Object;
.source "VersionWrapper.java"


# virtual methods
.method public abstract createAd(Lio/bidmachine/ads/networks/gam/GAMLoader;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/GAMUnitData;)Lio/bidmachine/ads/networks/gam/InternalGAMAd;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gamLoader",
            "adsFormat",
            "gamUnitData"
        }
    .end annotation
.end method

.method public abstract getMinDeviceApiVersion()I
.end method

.method public abstract getVersion()Lio/bidmachine/utils/version/Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract getVersionForWhichCompiled()Lio/bidmachine/utils/version/Version;
.end method

.method public abstract initialize(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract isGAMPresent(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method
