###### Class io.bidmachine.ads.networks.gam.GAMTypeConfig (io.bidmachine.ads.networks.gam.GAMTypeConfig)
.class public Lio/bidmachine/ads/networks/gam/GAMTypeConfig;
.super Ljava/lang/Object;
.source "GAMTypeConfig.java"


# instance fields
.field public final adsFormat:Lio/bidmachine/AdsFormat;

.field public final cacheSize:I

.field public final gamUnitDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam/GAMUnitData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/AdsFormat;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adsFormat",
            "gamUnitDataList",
            "cacheSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdsFormat;",
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam/GAMUnitData;",
            ">;I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->adsFormat:Lio/bidmachine/AdsFormat;

    .line 21
    iput p3, p0, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->cacheSize:I

    .line 22
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->gamUnitDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdsFormat()Lio/bidmachine/AdsFormat;
    .registers 2

    .line 27
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->adsFormat:Lio/bidmachine/AdsFormat;

    return-object v0
.end method

.method public getCacheSize()I
    .registers 2

    .line 36
    iget v0, p0, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->cacheSize:I

    return v0
.end method

.method public getGAMUnitDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/ads/networks/gam/GAMUnitData;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/GAMTypeConfig;->gamUnitDataList:Ljava/util/List;

    return-object v0
.end method
