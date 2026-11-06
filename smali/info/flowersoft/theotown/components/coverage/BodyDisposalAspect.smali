###### Class info.flowersoft.theotown.components.coverage.BodyDisposalAspect (info.flowersoft.theotown.components.coverage.BodyDisposalAspect)
.class public Linfo/flowersoft/theotown/components/coverage/BodyDisposalAspect;
.super Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;
.source "BodyDisposalAspect.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 9

    .line 17
    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->BODY_DISPOSAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x4

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/city/components/InfluenceType;IZZ)V

    return-void
.end method


# virtual methods
.method public getNeeders(Linfo/flowersoft/theotown/city/City;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/BuildingList;->getRciBuildings()Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    return-object p1
.end method

.method public getNeighborTrading(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)J
    .registers 4

    .line 32
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/TradingRelation;->getBodyDisposalExport()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProviders(Linfo/flowersoft/theotown/city/City;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->BODY_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    return-object p1
.end method

.method public setNeighborTrading(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)V
    .registers 4

    .line 37
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/TradingRelation;->setBodyDisposalExport(J)V

    return-void
.end method
