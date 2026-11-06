###### Class info.flowersoft.theotown.city.neighbors.RealNeighborCity (info.flowersoft.theotown.city.neighbors.RealNeighborCity)
.class public Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;
.super Linfo/flowersoft/theotown/city/neighbors/NeighborCity;
.source "RealNeighborCity.java"


# instance fields
.field public final height:I

.field public final lightCityInfo:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

.field public maxBodyDisposal:J

.field public maxPower:J

.field public maxWasteDisposal:J

.field public maxWater:J

.field public previewProvider:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Lio/blueflower/stapel2d/drawing/Image;",
            ">;"
        }
    .end annotation
.end field

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/cityloader/LightCityInfo;IILinfo/flowersoft/theotown/city/TradingRelation;ZLjava/lang/String;JLjava/lang/String;ZLio/blueflower/stapel2d/util/Getter;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/cityloader/LightCityInfo;",
            "II",
            "Linfo/flowersoft/theotown/city/TradingRelation;",
            "Z",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Lio/blueflower/stapel2d/drawing/Image;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p4

    move v2, p5

    move-object v3, p6

    move-wide v4, p7

    move-object/from16 v6, p9

    move/from16 v7, p10

    .line 39
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;-><init>(Linfo/flowersoft/theotown/city/TradingRelation;ZLjava/lang/String;JLjava/lang/String;Z)V

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->lightCityInfo:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    .line 42
    iput p2, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->x:I

    .line 43
    iput p3, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->y:I

    .line 44
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWidth()I

    move-result p2

    iput p2, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->width:I

    .line 45
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHeight()I

    move-result p2

    iput p2, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->height:I

    .line 47
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getProducedPower()J

    move-result-wide p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getUsedPower()J

    move-result-wide p4

    sub-long/2addr p2, p4

    iput-wide p2, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxPower:J

    .line 48
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getProducedWater()J

    move-result-wide p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getUsedWater()J

    move-result-wide p4

    sub-long/2addr p2, p4

    iput-wide p2, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWater:J

    .line 49
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWasteDisposal()I

    move-result p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getUsedWasteDisposal()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    iput-wide p2, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWasteDisposal:J

    .line 50
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getBodyDisposal()I

    move-result p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getUsedBodyDisposal()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    iput-wide p2, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxBodyDisposal:J

    .line 52
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getTradingRelations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_54
    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/city/TradingRelation;

    .line 53
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/TradingRelation;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_54

    .line 54
    iget-wide p3, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxPower:J

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/TradingRelation;->getEnergyExport()J

    move-result-wide v1

    sub-long/2addr p3, v1

    iput-wide p3, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxPower:J

    .line 55
    iget-wide p3, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWater:J

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/TradingRelation;->getWaterExport()J

    move-result-wide v1

    sub-long/2addr p3, v1

    iput-wide p3, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWater:J

    .line 56
    iget-wide p3, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWasteDisposal:J

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/TradingRelation;->getWasteDisposalExport()J

    move-result-wide v1

    sub-long/2addr p3, v1

    iput-wide p3, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWasteDisposal:J

    .line 57
    iget-wide p3, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxBodyDisposal:J

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/TradingRelation;->getBodyDisposalExport()J

    move-result-wide v1

    sub-long/2addr p3, v1

    iput-wide p3, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxBodyDisposal:J

    goto :goto_54

    .line 61
    :cond_8f
    iget-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxPower:J

    const-wide/16 p3, 0x0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxPower:J

    .line 62
    iget-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWater:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWater:J

    .line 63
    iget-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWasteDisposal:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWasteDisposal:J

    .line 64
    iget-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxBodyDisposal:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxBodyDisposal:J

    move-object/from16 p1, p11

    .line 66
    iput-object p1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->previewProvider:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .registers 6

    .line 132
    iget v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->x:I

    if-lt p1, v0, :cond_14

    iget v1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->y:I

    if-lt p2, v1, :cond_14

    iget v2, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->width:I

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_14

    iget p1, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->height:I

    add-int/2addr v1, p1

    if-ge p2, v1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public getAvailableBodyDisposal()J
    .registers 3

    .line 111
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxBodyDisposal:J

    return-wide v0
.end method

.method public getAvailablePower()J
    .registers 3

    .line 96
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxPower:J

    return-wide v0
.end method

.method public getAvailableWasteDisposal()J
    .registers 3

    .line 106
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWasteDisposal:J

    return-wide v0
.end method

.method public getAvailableWater()J
    .registers 3

    .line 101
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->maxWater:J

    return-wide v0
.end method

.method public getHeight()I
    .registers 2

    .line 127
    iget v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->height:I

    return v0
.end method

.method public getInhabitants()I
    .registers 2

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->lightCityInfo:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHabitants()I

    move-result v0

    return v0
.end method

.method public getInhabitants(I)I
    .registers 3

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->lightCityInfo:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getDetailedHabitants()[I

    move-result-object v0

    aget p1, v0, p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->lightCityInfo:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewImage()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->previewProvider:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/drawing/Image;

    return-object v0
.end method

.method public getSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;
    .registers 2

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->lightCityInfo:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 123
    iget v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->width:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 115
    iget v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 119
    iget v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->y:I

    return v0
.end method

.method public hasInfinityMoney()Z
    .registers 2

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->lightCityInfo:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    return v0
.end method

.method public hasPowerConnection()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hasRoadConnection()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hasWaterConnection()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method
