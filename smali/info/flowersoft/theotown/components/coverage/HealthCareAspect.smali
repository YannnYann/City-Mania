###### Class info.flowersoft.theotown.components.coverage.HealthCareAspect (info.flowersoft.theotown.components.coverage.HealthCareAspect)
.class public Linfo/flowersoft/theotown/components/coverage/HealthCareAspect;
.super Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;
.source "HealthCareAspect.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    const/4 v0, 0x2

    .line 15
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->HEALTH:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-direct {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/coverage/DraftDrivenAspect;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/city/components/InfluenceType;)V

    return-void
.end method


# virtual methods
.method public getNeeders(Linfo/flowersoft/theotown/city/City;)Ljava/util/List;
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

    .line 25
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    return-object p1
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

    .line 20
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    return-object p1
.end method
