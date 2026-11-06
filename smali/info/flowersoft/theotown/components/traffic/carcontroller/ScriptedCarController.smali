###### Class info.flowersoft.theotown.components.traffic.carcontroller.ScriptedCarController (info.flowersoft.theotown.components.traffic.carcontroller.ScriptedCarController)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;
.source "ScriptedCarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;
    }
.end annotation


# instance fields
.field public carLibrary:Lvm2/LuaValue;

.field public nextPendingCarOwnerId:I

.field public final pendingCarOwners:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;",
            ">;"
        }
    .end annotation
.end field

.field public transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->nextPendingCarOwnerId:I

    .line 35
    new-instance p1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->pendingCarOwners:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method

.method private emitCarEvent(Linfo/flowersoft/theotown/city/objects/Car;Ljava/lang/String;I)V
    .registers 12

    .line 275
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->getBuildingData(Linfo/flowersoft/theotown/city/objects/Car;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 276
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    if-eqz p1, :cond_12

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onEventTransitions:Ljava/util/List;

    if-nez p1, :cond_1a

    .line 277
    :cond_12
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    if-eqz p1, :cond_6e

    .line 278
    :cond_1a
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter p1

    .line 279
    :try_start_1d
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v7

    .line 280
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    if-eqz v0, :cond_48

    iget-object v1, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->onEventTransitions:Ljava/util/List;

    if-eqz v1, :cond_48

    .line 282
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v3

    iget-object v5, v3, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 284
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v6

    move-object v3, p2

    .line 281
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 285
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    goto :goto_48

    :catchall_45
    move-exception v0

    move-object p2, v0

    goto :goto_6c

    .line 288
    :cond_48
    :goto_48
    iget-object p2, v7, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    if-eqz p2, :cond_6a

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6a

    .line 289
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p2

    const-string v0, "event"

    invoke-virtual {p2, v0, v7}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p2

    if-eqz p2, :cond_6a

    .line 291
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2, p3}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIII)Z

    .line 294
    :cond_6a
    monitor-exit p1

    return-void

    :goto_6c
    monitor-exit p1
    :try_end_6d
    .catchall {:try_start_1d .. :try_end_6d} :catchall_45

    throw p2

    :cond_6e
    return-void
.end method

.method private getBuildingData(Linfo/flowersoft/theotown/city/objects/Car;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 6

    .line 262
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/16 v2, 0x20

    const/16 v3, 0xa

    invoke-static {v0, v1, v3, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 263
    iget-wide v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/16 p1, 0x2a

    invoke-static {v1, v2, v3, p1}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v1

    long-to-int p1, v1

    add-int/lit8 p1, p1, -0x1

    .line 264
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 265
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 267
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    if-ne v2, v0, :cond_35

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    if-ne v0, p1, :cond_35

    return-object v1

    :cond_35
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public driveTo(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;)V
    .registers 4

    .line 231
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    invoke-interface {v0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->driveTo(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;)V

    return-void
.end method

.method public foundNoWay(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 5

    .line 169
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->foundNoWay(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 171
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getOwner()Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 174
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "onCarFoundNoWay"

    .line 175
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 178
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v1

    .line 179
    :try_start_1c
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getLuaRepr()Lvm2/LuaTable;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/LuaValue;)Z

    .line 180
    monitor-exit v1

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_25

    throw p1

    :cond_28
    return-void
.end method

.method public foundWay(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 5

    .line 151
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->foundWay(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 153
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getOwner()Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 156
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "onCarFoundWay"

    .line 157
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 160
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v1

    .line 161
    :try_start_1c
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getLuaRepr()Lvm2/LuaTable;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/LuaValue;)Z

    .line 162
    monitor-exit v1

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_25

    throw p1

    :cond_28
    return-void
.end method

.method public getCarLuaReprs(Linfo/flowersoft/theotown/draft/Draft;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ")",
            "Ljava/util/List<",
            "Lvm2/LuaValue;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v1, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getCars()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Car;

    .line 46
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Car;->getOwner()Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object v3

    .line 47
    iget-boolean v2, v2, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-nez v2, :cond_12

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    if-ne v2, p1, :cond_12

    .line 48
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getLuaRepr()Lvm2/LuaTable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_36
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 300
    const-string v0, "scripted car controller"

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->load(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public onNotSpawn(J)V
    .registers 7

    long-to-int v0, p1

    .line 113
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->pendingCarOwners:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;

    if-eqz v0, :cond_2a

    .line 117
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    const-string v2, "onCarNotSpawned"

    .line 118
    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;->access$000(Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 121
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v2

    .line 122
    :try_start_1e
    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;->access$100(Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;)Lvm2/LuaTable;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/LuaValue;)Z

    .line 123
    monitor-exit v2

    goto :goto_2a

    :catchall_27
    move-exception p1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_27

    throw p1

    .line 126
    :cond_2a
    :goto_2a
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->onNotSpawn(J)V

    return-void
.end method

.method public onSpawn(Linfo/flowersoft/theotown/city/objects/Car;)Z
    .registers 6

    .line 88
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    long-to-int v0, v0

    .line 89
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->pendingCarOwners:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;

    .line 90
    const-string v1, "car spawned"

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->emitCarEvent(Linfo/flowersoft/theotown/city/objects/Car;Ljava/lang/String;I)V

    if-eqz v0, :cond_47

    .line 92
    new-instance v1, Linfo/flowersoft/theotown/city/objects/CarOwner;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;->access$000(Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;->access$100(Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;)Lvm2/LuaTable;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Linfo/flowersoft/theotown/city/objects/CarOwner;-><init>(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/city/objects/Car;Lvm2/LuaTable;)V

    .line 93
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/objects/Car;->setOwner(Linfo/flowersoft/theotown/city/objects/CarOwner;)V

    .line 95
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->carLibrary:Lvm2/LuaValue;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/CarOwner;->setupRepr(Lvm2/LuaValue;)V

    .line 98
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    const-string v3, "onCarSpawned"

    .line 99
    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;->access$000(Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 102
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v2

    .line 103
    :try_start_3b
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getLuaRepr()Lvm2/LuaTable;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/LuaValue;)Z

    .line 104
    monitor-exit v2

    goto :goto_47

    :catchall_44
    move-exception p1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_44

    throw p1

    .line 107
    :cond_47
    :goto_47
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->onSpawn(Linfo/flowersoft/theotown/city/objects/Car;)Z

    move-result p1

    return p1
.end method

.method public onTarget(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 6

    .line 131
    const-string p2, "car reached"

    const/4 p3, 0x3

    invoke-direct {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->emitCarEvent(Linfo/flowersoft/theotown/city/objects/Car;Ljava/lang/String;I)V

    .line 133
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getOwner()Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p2

    if-eqz p2, :cond_2b

    .line 136
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p3

    const-string p4, "onCarReached"

    .line 137
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p3

    if-eqz p3, :cond_2b

    .line 140
    iget-object p4, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter p4

    .line 141
    :try_start_1f
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getLuaRepr()Lvm2/LuaTable;

    move-result-object p2

    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/LuaValue;)Z

    .line 142
    monitor-exit p4

    goto :goto_2b

    :catchall_28
    move-exception p1

    monitor-exit p4
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw p1

    .line 145
    :cond_2b
    :goto_2b
    iget-boolean p2, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    if-nez p2, :cond_37

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->isWaiting()Z

    move-result p1

    if-nez p1, :cond_37

    const/4 p1, 0x1

    return p1

    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method public prepare(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 76
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->prepare(Linfo/flowersoft/theotown/city/City;)V

    .line 78
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    return-void
.end method

.method public register(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 2

    .line 83
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->register(Linfo/flowersoft/theotown/city/objects/Car;)V

    return-void
.end method

.method public resolvePoint(IIILinfo/flowersoft/theotown/city/MapArea;)V
    .registers 6

    .line 210
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_46

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_38

    .line 212
    iget-object p3, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p3

    if-eqz p3, :cond_19

    const/4 p1, 0x0

    .line 215
    invoke-virtual {p4, p3, p1}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;Z)V

    return-void

    .line 217
    :cond_19
    iget-object p3, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    if-eqz p3, :cond_28

    .line 218
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBottomRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    if-eqz p3, :cond_46

    if-eqz v0, :cond_46

    .line 220
    iget p3, p3, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    invoke-virtual {p4, p1, p2, p3}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    .line 221
    iget p3, v0, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    invoke-virtual {p4, p1, p2, p3}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    return-void

    .line 225
    :cond_38
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p4, p1, p2, p3}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    :cond_46
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    return-void
.end method

.method public setCarLibrary(Lvm2/LuaValue;)V
    .registers 4

    .line 55
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->carLibrary:Lvm2/LuaValue;

    .line 56
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getCars()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Car;

    .line 57
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getOwner()Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 59
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->setupRepr(Lvm2/LuaValue;)V

    goto :goto_a

    :cond_20
    return-void
.end method

.method public spawnCar(Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;IIILinfo/flowersoft/theotown/draft/Draft;Lvm2/LuaTable;)V
    .registers 30

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p7

    if-gez p6, :cond_19

    .line 241
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v6, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v6, v6

    iget v7, v4, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    goto :goto_1b

    :cond_19
    move/from16 v5, p6

    .line 242
    :goto_1b
    iget v6, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->nextPendingCarOwnerId:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->nextPendingCarOwnerId:I

    if-eqz v2, :cond_35

    .line 243
    invoke-virtual/range {p8 .. p8}, Lvm2/LuaValue;->isnil()Z

    move-result v7

    if-nez v7, :cond_35

    .line 244
    iget-object v7, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->pendingCarOwners:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v8, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;

    move-object/from16 v9, p8

    invoke-direct {v8, v2, v9}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;-><init>(Linfo/flowersoft/theotown/draft/Draft;Lvm2/LuaTable;)V

    invoke-virtual {v7, v6, v8}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_35
    int-to-long v9, v6

    .line 249
    iget-object v2, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 250
    iget-object v2, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 253
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v13, v1

    const/16 v11, 0xa

    const/16 v12, 0x20

    invoke-static/range {v9 .. v14}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v15

    .line 254
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    const/16 v17, 0xa

    const/16 v18, 0x2a

    move-wide/from16 v19, v0

    invoke-static/range {v15 .. v20}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v9

    :cond_66
    move-wide v6, v9

    .line 258
    iget-object v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    const/4 v8, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface/range {v0 .. v8}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->spawn(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;Linfo/flowersoft/theotown/draft/CarDraft;IJI)V

    return-void
.end method

.method public unregister(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 5

    .line 189
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->unregister(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 190
    const-string v0, "car despawned"

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->emitCarEvent(Linfo/flowersoft/theotown/city/objects/Car;Ljava/lang/String;I)V

    .line 192
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getOwner()Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 195
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "onCarDespawned"

    .line 196
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 199
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v1

    .line 200
    :try_start_22
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getLuaRepr()Lvm2/LuaTable;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/LuaValue;)Z

    .line 201
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw p1

    :cond_2e
    return-void
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.components.traffic.carcontroller.ScriptedCarController.PendingCarOwner (info.flowersoft.theotown.components.traffic.carcontroller.ScriptedCarController$PendingCarOwner)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;
.super Ljava/lang/Object;
.source "ScriptedCarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingCarOwner"
.end annotation


# instance fields
.field public final owner:Linfo/flowersoft/theotown/draft/Draft;

.field public final storage:Lvm2/LuaTable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/Draft;Lvm2/LuaTable;)V
    .registers 3

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;->owner:Linfo/flowersoft/theotown/draft/Draft;

    .line 308
    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;->storage:Lvm2/LuaTable;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;)Linfo/flowersoft/theotown/draft/Draft;
    .registers 1

    .line 303
    iget-object p0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;->owner:Linfo/flowersoft/theotown/draft/Draft;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;)Lvm2/LuaTable;
    .registers 1

    .line 303
    iget-object p0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController$PendingCarOwner;->storage:Lvm2/LuaTable;

    return-object p0
.end method
