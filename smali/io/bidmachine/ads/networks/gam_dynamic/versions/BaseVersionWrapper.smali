###### Class io.bidmachine.ads.networks.gam_dynamic.versions.BaseVersionWrapper (io.bidmachine.ads.networks.gam_dynamic.versions.BaseVersionWrapper)
.class public abstract Lio/bidmachine/ads/networks/gam_dynamic/versions/BaseVersionWrapper;
.super Ljava/lang/Object;
.source "BaseVersionWrapper.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/versions/VersionWrapper;


# instance fields
.field public final minDeviceApiVersion:I

.field public final versionForWhichCompiled:Lio/bidmachine/utils/version/Version;


# direct methods
.method public constructor <init>(ILio/bidmachine/utils/version/Version;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minDeviceApiVersion",
            "versionForWhichCompiled"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/BaseVersionWrapper;->minDeviceApiVersion:I

    .line 15
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/BaseVersionWrapper;->versionForWhichCompiled:Lio/bidmachine/utils/version/Version;

    return-void
.end method


# virtual methods
.method public getMinDeviceApiVersion()I
    .registers 2

    .line 20
    iget v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/BaseVersionWrapper;->minDeviceApiVersion:I

    return v0
.end method

.method public getVersionForWhichCompiled()Lio/bidmachine/utils/version/Version;
    .registers 2

    .line 26
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/versions/BaseVersionWrapper;->versionForWhichCompiled:Lio/bidmachine/utils/version/Version;

    return-object v0
.end method
