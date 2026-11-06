###### Class info.flowersoft.theotown.components.management.BuildingWorker (info.flowersoft.theotown.components.management.BuildingWorker)
.class public Linfo/flowersoft/theotown/components/management/BuildingWorker;
.super Lio/blueflower/stapel2d/util/CyclicWorker;
.source "BuildingWorker.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public final buildings:Linfo/flowersoft/theotown/util/SafeListAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SafeListAccessor<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>()V

    .line 43
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->city:Linfo/flowersoft/theotown/city/City;

    .line 44
    new-instance p2, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-direct {p2, v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->buildings:Linfo/flowersoft/theotown/util/SafeListAccessor;

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    .line 47
    new-instance v0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Linfo/flowersoft/theotown/components/buildingcontroller/HasRoadController;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/HasRoadController;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Linfo/flowersoft/theotown/components/buildingcontroller/RangerController;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/RangerController;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/BodyDisposalController;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/FullSchoolController;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/FullHospitalController;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0, p0}, Lio/blueflower/stapel2d/util/CyclicWorker;->setTask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final collectControllersForBuilding(Linfo/flowersoft/theotown/city/objects/Building;)[I
    .registers 5

    .line 124
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    .line 125
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    .line 127
    :goto_a
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 128
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    .line 129
    invoke-interface {v2, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;->canHandle(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 132
    :cond_26
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->reduce()[I

    move-result-object p1

    return-object p1
.end method

.method public getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 115
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 63
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 64
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    .line 65
    invoke-interface {v2}, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 66
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Two controllers with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_3e
    :goto_3e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 71
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "controllers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 88
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3e

    .line 73
    :cond_57
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 74
    :goto_5a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 75
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    if-eqz v1, :cond_76

    .line 78
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 79
    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/util/Saveable;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 80
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_5a

    .line 82
    :cond_76
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_5a

    .line 85
    :cond_7a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_3e

    :cond_7e
    return-void
.end method

.method public prepare()V
    .registers 3

    const/4 v0, 0x0

    .line 108
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 109
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    invoke-interface {v1}, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;->prepare()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public run()V
    .registers 8

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 138
    :goto_5
    :try_start_5
    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 139
    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    invoke-interface {v3}, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;->beforePass()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_1b
    move-exception v1

    goto :goto_6d

    .line 141
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1b

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->buildings:Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 144
    iget-object v3, v2, Linfo/flowersoft/theotown/city/objects/Building;->_BUILDING_CONTROLLERS:[I

    if-nez v3, :cond_3a

    .line 146
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/management/BuildingWorker;->collectControllersForBuilding(Linfo/flowersoft/theotown/city/objects/Building;)[I

    move-result-object v3

    .line 147
    iput-object v3, v2, Linfo/flowersoft/theotown/city/objects/Building;->_BUILDING_CONTROLLERS:[I

    :cond_3a
    move v4, v1

    .line 150
    :goto_3b
    array-length v5, v3

    if-ge v4, v5, :cond_24

    .line 151
    iget-object v5, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    aget v6, v3, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    invoke-interface {v5, v2}, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;->accept(Linfo/flowersoft/theotown/city/objects/Building;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 155
    :cond_4e
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v2

    .line 156
    :goto_51
    :try_start_51
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_69

    .line 157
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    invoke-interface {v0}, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;->afterPass()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :catchall_67
    move-exception v0

    goto :goto_6b

    .line 159
    :cond_69
    monitor-exit v2

    return-void

    :goto_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_51 .. :try_end_6c} :catchall_67

    throw v0

    .line 141
    :goto_6d
    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_1b

    throw v1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const-string v0, "controllers"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 96
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 97
    :goto_9
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 98
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/BuildingWorker;->controllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    .line 99
    invoke-interface {v1}, Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 100
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 101
    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/util/Saveable;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 102
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 104
    :cond_2c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
