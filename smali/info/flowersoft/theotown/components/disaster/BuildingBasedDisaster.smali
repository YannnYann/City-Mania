###### Class info.flowersoft.theotown.components.disaster.BuildingBasedDisaster (info.flowersoft.theotown.components.disaster.BuildingBasedDisaster)
.class public abstract Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "BuildingBasedDisaster.java"


# instance fields
.field public buildingDrafts:[Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public buildingLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 6

    .line 27
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingLists:Ljava/util/List;

    .line 28
    array-length v0, p1

    new-array v0, v0, [Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingDrafts:[Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v0, 0x0

    .line 29
    :goto_10
    array-length v1, p1

    if-ge v0, v1, :cond_24

    .line 30
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingDrafts:[Linfo/flowersoft/theotown/draft/BuildingDraft;

    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 36
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/Disaster;->bind(Linfo/flowersoft/theotown/city/City;)V

    const/4 v0, 0x0

    .line 38
    :goto_4
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingDrafts:[Linfo/flowersoft/theotown/draft/BuildingDraft;

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 39
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingLists:Ljava/util/List;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingDrafts:[Linfo/flowersoft/theotown/draft/BuildingDraft;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()[I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 83
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 84
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    .line 85
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v2, :cond_35

    .line 87
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    return-object v0

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_38
    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 64
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 65
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public isAutoEnabled()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public issue(II)Z
    .registers 12

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 73
    new-instance v2, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v8, 0x1

    invoke-direct {v2, v0, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {v2, p1, p2, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(IILvm2/LuaValue;)V

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/BuildingBasedDisaster;->buildingDrafts:[Linfo/flowersoft/theotown/draft/BuildingDraft;

    aget-object v3, v0, v1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    return v8

    :cond_21
    return v1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 46
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_11
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
    .registers 1

    .line 0
    return-void
.end method
