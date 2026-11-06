###### Class info.flowersoft.theotown.store.CityPluginsExtractor (info.flowersoft.theotown.store.CityPluginsExtractor)
.class public Linfo/flowersoft/theotown/store/CityPluginsExtractor;
.super Ljava/lang/Object;
.source "CityPluginsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;
    }
.end annotation


# direct methods
.method public static collectUsedPlugins(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;
    .registers 9

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 53
    monitor-enter p0

    .line 54
    :try_start_14
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v5, :cond_1c

    .line 55
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v5

    invoke-static {v5, v1, v2, v3}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_1c

    :catchall_32
    move-exception v0

    goto/16 :goto_1b1

    .line 57
    :cond_35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz v5, :cond_3d

    .line 59
    iget-object v6, v5, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {v6, v1, v2, v3}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V

    .line 60
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_56
    if-ltz v6, :cond_3d

    .line 61
    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v7

    if-eqz v7, :cond_61

    .line 63
    invoke-static {v7, v1, v2, v3}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V

    :cond_61
    add-int/lit8 v6, v6, -0x1

    goto :goto_56

    .line 67
    :cond_64
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6c
    :goto_6c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Rail;

    if-eqz v5, :cond_6c

    .line 69
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Rail;->getDraft()Linfo/flowersoft/theotown/draft/RailDraft;

    move-result-object v5

    invoke-static {v5, v1, v2, v3}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_6c

    .line 72
    :cond_82
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8a
    :goto_8a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Wire;

    if-eqz v5, :cond_8a

    .line 74
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v5

    invoke-static {v5, v1, v2, v3}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_8a

    .line 77
    :cond_a0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a8
    :goto_a8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_be

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Pipe;

    if-eqz v5, :cond_a8

    .line 79
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Pipe;->getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object v5

    invoke-static {v5, v1, v2, v3}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_a8

    :cond_be
    const/4 v4, 0x0

    move v5, v4

    .line 82
    :goto_c0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_eb

    move v6, v4

    .line 83
    :goto_c7
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_e8

    .line 84
    invoke-virtual {v0, v6, v5}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v7

    if-eqz v7, :cond_da

    .line 85
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Tree;->getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object v7

    invoke-static {v7, v1, v2, v3}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V

    .line 86
    :cond_da
    invoke-virtual {v0, v6, v5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v7

    invoke-static {v7, v1, v2, v3}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c7

    :cond_e8
    add-int/lit8 v5, v5, 0x1

    goto :goto_c0

    :cond_eb
    const/4 v0, 0x7

    .line 90
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultTraffic;

    .line 91
    const-class v4, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCars()Ljava/util/List;

    move-result-object v4

    .line 92
    new-instance v5, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v5, v4}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_107
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_119

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Car;

    .line 93
    iget-object v5, v5, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {v5, v1, v2, v3}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_107

    .line 96
    :cond_119
    const-class v4, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->getFlyingObjects()Ljava/util/List;

    move-result-object v4

    .line 97
    new-instance v5, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v5, v4}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_142

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    .line 98
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move-result-object v5

    invoke-static {v5, v1, v2, v3}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_12e

    .line 101
    :cond_142
    const-class v4, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->getShips()Ljava/util/List;

    move-result-object v0

    .line 102
    new-instance v4, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v4, v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_157
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Ship;

    .line 103
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Ship;->getDraft()Linfo/flowersoft/theotown/draft/ShipDraft;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_157

    .line 105
    :cond_16b
    monitor-exit p0
    :try_end_16c
    .catchall {:try_start_14 .. :try_end_16c} :catchall_32

    .line 107
    new-instance p0, Lio/blueflower/stapel2d/util/IntList;

    iget v0, v1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    .line 108
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntIntMap;->entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    move-result-object v0

    .line 109
    :goto_179
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 110
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->next()Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    move-result-object v1

    .line 111
    iget v4, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-virtual {p0, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 112
    iget v1, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_179

    .line 115
    :cond_18e
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19b

    .line 119
    :cond_1ab
    new-instance v1, Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;

    invoke-direct {v1, p0, v2, v0}, Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;-><init>(Lio/blueflower/stapel2d/util/IntList;Ljava/util/Map;Ljava/util/List;)V

    return-object v1

    .line 105
    :goto_1b1
    :try_start_1b1
    monitor-exit p0
    :try_end_1b2
    .catchall {:try_start_1b1 .. :try_end_1b2} :catchall_32

    throw v0
.end method

.method public static considerDraft(Linfo/flowersoft/theotown/draft/Draft;Lcom/badlogic/gdx/utils/IntIntMap;Ljava/util/Map;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/Draft;",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 127
    iget v0, p0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_18

    .line 128
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object p2

    iget v0, p0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isPermanent(I)Z

    move-result p2

    if-nez p2, :cond_3e

    .line 129
    iget p2, p0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    invoke-virtual {p1, p2, v2, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->getAndIncrement(III)I

    goto :goto_3e

    .line 131
    :cond_18
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/Draft;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    if-eqz p1, :cond_3e

    .line 132
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2c

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 134
    :cond_2c
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_3e
    :goto_3e
    iget-object p1, p0, Linfo/flowersoft/theotown/draft/Draft;->parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz p1, :cond_57

    .line 138
    iget p1, p0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-eqz p1, :cond_52

    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object p1

    iget p2, p0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isPermanent(I)Z

    move-result p1

    if-nez p1, :cond_57

    .line 139
    :cond_52
    iget-object p0, p0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_57
    return-void
.end method

###### Class info.flowersoft.theotown.store.CityPluginsExtractor.Result (info.flowersoft.theotown.store.CityPluginsExtractor$Result)
.class public Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;
.super Ljava/lang/Object;
.source "CityPluginsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/store/CityPluginsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public localPluginOccurrences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public pluginIdsAndOccurrences:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/util/IntList;Ljava/util/Map;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/IntList;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;->pluginIdsAndOccurrences:Lio/blueflower/stapel2d/util/IntList;

    .line 42
    iput-object p2, p0, Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;->localPluginOccurrences:Ljava/util/Map;

    .line 43
    iput-object p3, p0, Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;->ids:Ljava/util/List;

    return-void
.end method
