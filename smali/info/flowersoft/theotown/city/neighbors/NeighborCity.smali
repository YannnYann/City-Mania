###### Class info.flowersoft.theotown.city.neighbors.NeighborCity (info.flowersoft.theotown.city.neighbors.NeighborCity)
.class public abstract Linfo/flowersoft/theotown/city/neighbors/NeighborCity;
.super Ljava/lang/Object;
.source "NeighborCity.java"


# instance fields
.field public final created:Z

.field public final direct:Z

.field public id:Ljava/lang/String;

.field public final ownerId:J

.field public final ownerName:Ljava/lang/String;

.field public final tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/TradingRelation;ZLjava/lang/String;JLjava/lang/String;Z)V
    .registers 8

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    .line 36
    iput-boolean p2, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->created:Z

    .line 37
    iput-object p3, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->id:Ljava/lang/String;

    .line 38
    iput-wide p4, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->ownerId:J

    .line 39
    iput-object p6, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->ownerName:Ljava/lang/String;

    .line 41
    iput-boolean p7, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->direct:Z

    return-void
.end method


# virtual methods
.method public canTrade()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->direct:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->created:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public abstract contains(II)Z
.end method

.method public abstract getAvailableBodyDisposal()J
.end method

.method public abstract getAvailablePower()J
.end method

.method public abstract getAvailableWasteDisposal()J
.end method

.method public abstract getAvailableWater()J
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getInhabitants()I
.end method

.method public abstract getInhabitants(I)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getOwnerId()J
    .registers 3

    .line 53
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->ownerId:J

    return-wide v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->ownerName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getPreviewImage()Lio/blueflower/stapel2d/drawing/Image;
.end method

.method public abstract getSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;
.end method

.method public getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;
    .registers 2

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    return-object v0
.end method

.method public abstract hasInfinityMoney()Z
.end method

.method public abstract hasPowerConnection()Z
.end method

.method public abstract hasRoadConnection()Z
.end method

.method public abstract hasWaterConnection()Z
.end method

.method public isCreated()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->created:Z

    return v0
.end method

.method public isDirect()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->direct:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->id:Ljava/lang/String;

    return-void
.end method
