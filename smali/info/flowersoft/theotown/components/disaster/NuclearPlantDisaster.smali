###### Class info.flowersoft.theotown.components.disaster.NuclearPlantDisaster (info.flowersoft.theotown.components.disaster.NuclearPlantDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/NuclearPlantDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "NuclearPlantDisaster.java"


# instance fields
.field public fireDisaster:Linfo/flowersoft/theotown/components/disaster/FireDisaster;

.field public final nuclearPlantDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final workingPlants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NuclearPlantDisaster;->workingPlants:Ljava/util/List;

    .line 30
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$nuclearplant00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NuclearPlantDisaster;->nuclearPlantDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/Disaster;->bind(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()[I
    .registers 2

    const/4 v0, 0x0

    .line 99
    new-array v0, v0, [I

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoEnabled()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public issue()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public issue(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 36
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_d
    return-void
.end method

.method public prepare()V
    .registers 4

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Catastrophe;

    .line 55
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Catastrophe;->getDisasters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 56
    instance-of v2, v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    if-eqz v2, :cond_11

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    iput-object v1, p0, Linfo/flowersoft/theotown/components/disaster/NuclearPlantDisaster;->fireDisaster:Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    goto :goto_11

    :cond_26
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public update()V
    .registers 9

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/NuclearPlantDisaster;->nuclearPlantDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    .line 64
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Building;

    .line 67
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Linfo/flowersoft/theotown/components/disaster/NuclearPlantDisaster;->workingPlants:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 68
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->hasWater()Z

    move-result v5

    if-nez v5, :cond_16

    .line 69
    iget-object v5, p0, Linfo/flowersoft/theotown/components/disaster/NuclearPlantDisaster;->fireDisaster:Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;)Z

    goto :goto_16

    .line 74
    :cond_3c
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/NuclearPlantDisaster;->workingPlants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    .line 76
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildDay()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-ltz v4, :cond_45

    .line 77
    iget-object v4, p0, Linfo/flowersoft/theotown/components/disaster/NuclearPlantDisaster;->workingPlants:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_69
    return-void
.end method
