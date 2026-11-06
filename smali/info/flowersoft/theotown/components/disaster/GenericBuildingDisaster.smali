###### Class info.flowersoft.theotown.components.disaster.GenericBuildingDisaster (info.flowersoft.theotown.components.disaster.GenericBuildingDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/GenericBuildingDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "GenericBuildingDisaster.java"


# instance fields
.field public disasterBuildingDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/GenericBuildingDisaster;->disasterBuildingDrafts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 25
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/Disaster;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 27
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 28
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->disaster:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/GenericBuildingDisaster;->disasterBuildingDrafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()[I
    .registers 6

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 75
    :goto_5
    :try_start_5
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/GenericBuildingDisaster;->disasterBuildingDrafts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    .line 76
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/components/disaster/GenericBuildingDisaster;->disasterBuildingDrafts:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 77
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/components/disaster/GenericBuildingDisaster;->disasterBuildingDrafts:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 78
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    filled-new-array {v2, v1}, [I

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_4b
    move-exception v1

    goto :goto_53

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 81
    :cond_50
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_4b

    throw v1
.end method

.method public isActive()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 59
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/GenericBuildingDisaster;->disasterBuildingDrafts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 60
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/GenericBuildingDisaster;->disasterBuildingDrafts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v0, 0x1

    return v0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_27
    return v0
.end method

.method public isAutoEnabled()Z
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

    .line 34
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 35
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
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

.method public saveMe()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method
