###### Class info.flowersoft.theotown.components.transportationsystem.TSSystemDraft (info.flowersoft.theotown.components.transportationsystem.TSSystemDraft)
.class public Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;
.super Ljava/lang/Object;
.source "TSSystemDraft.java"


# instance fields
.field public final busStopSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/draft/BusStopDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final busStopsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BusStopDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final config:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

.field public final depotBuildingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final depotBuildingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final id:Ljava/lang/String;

.field public final impl:Lvm2/LuaTable;

.field public luaRepr:Lvm2/LuaValue;

.field public final onAddedStation:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final onEnterCity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final onLeaveCity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final onRemovedStation:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final owner:Linfo/flowersoft/theotown/scripting/Script;

.field public final roadFlags:J

.field public final roadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final roadSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final spawnBuildingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final spawnBuildingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final stationBuildingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final stationBuildingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final tsLibrary:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;Ljava/lang/String;Lvm2/LuaTable;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/scripting/Script;Linfo/flowersoft/theotown/scripting/ScriptMethod;Linfo/flowersoft/theotown/scripting/ScriptMethod;Linfo/flowersoft/theotown/scripting/ScriptMethod;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;",
            "Ljava/lang/String;",
            "Lvm2/LuaTable;",
            "J",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BusStopDraft;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            ">;",
            "Linfo/flowersoft/theotown/scripting/Script;",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ")V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->config:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->stationBuildingSet:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->spawnBuildingSet:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->depotBuildingSet:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->busStopSet:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->roadSet:Ljava/util/Set;

    .line 146
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->tsLibrary:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    .line 147
    iput-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->id:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->impl:Lvm2/LuaTable;

    .line 149
    iput-wide p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->roadFlags:J

    .line 150
    iput-object p11, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->owner:Linfo/flowersoft/theotown/scripting/Script;

    .line 151
    iput-object p12, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->onEnterCity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 152
    iput-object p13, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->onLeaveCity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 153
    iput-object p14, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->onAddedStation:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-object/from16 p1, p15

    .line 154
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->onRemovedStation:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 156
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-nez p2, :cond_54

    goto :goto_45

    .line 158
    :cond_54
    iget-object p3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->stationBuildingSet:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 160
    :cond_5a
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_73

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-nez p2, :cond_6d

    goto :goto_5e

    .line 162
    :cond_6d
    iget-object p3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->spawnBuildingSet:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 164
    :cond_73
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_77
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-nez p2, :cond_86

    goto :goto_77

    .line 166
    :cond_86
    iget-object p3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->depotBuildingSet:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 168
    :cond_8c
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_90
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/BusStopDraft;

    if-nez p2, :cond_9f

    goto :goto_90

    .line 170
    :cond_9f
    iget-object p3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->busStopSet:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 172
    :cond_a5
    invoke-interface {p10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_be

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-nez p2, :cond_b8

    goto :goto_a9

    .line 174
    :cond_b8
    iget-object p3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->roadSet:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    .line 176
    :cond_be
    iget-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->stationBuildingSet:Ljava/util/Set;

    iget-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->spawnBuildingSet:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->stationBuildingSet:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->stationBuildingList:Ljava/util/List;

    .line 179
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->spawnBuildingSet:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->spawnBuildingList:Ljava/util/List;

    .line 180
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->depotBuildingSet:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->depotBuildingList:Ljava/util/List;

    .line 181
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->busStopSet:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->busStopsList:Ljava/util/List;

    .line 182
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->roadSet:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->roadList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addStation(II)V
    .registers 4

    .line 194
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->tsLibrary:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->getCityComponent()Linfo/flowersoft/theotown/components/DefaultTSComponent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->onAddedStation:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    if-ltz p2, :cond_15

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    goto :goto_17

    :cond_15
    sget-object p2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :goto_17
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    :cond_1a
    return-void
.end method

.method public countBusStops()I
    .registers 2

    .line 243
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->busStopsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public countSpawnBuildings()I
    .registers 2

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->spawnBuildingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public countStationBuildings()I
    .registers 2

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->stationBuildingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBusStops()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BusStopDraft;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->busStopsList:Ljava/util/List;

    return-object v0
.end method

.method public getConfig()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;
    .registers 2

    .line 301
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->config:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

    return-object v0
.end method

.method public getDepotBuildings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->depotBuildingList:Ljava/util/List;

    return-object v0
.end method

.method public getIcon()I
    .registers 4

    .line 224
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 225
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->iconFrames:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 226
    aget v0, v1, v2

    return v0

    .line 227
    :cond_c
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_13

    .line 228
    aget v0, v0, v2

    return v0

    :cond_13
    return v2
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImpl()Lvm2/LuaTable;
    .registers 2

    .line 208
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->impl:Lvm2/LuaTable;

    return-object v0
.end method

.method public getLuaRepr()Lvm2/LuaValue;
    .registers 2

    .line 289
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->luaRepr:Lvm2/LuaValue;

    return-object v0
.end method

.method public getOwner()Linfo/flowersoft/theotown/scripting/Script;
    .registers 2

    .line 216
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->owner:Linfo/flowersoft/theotown/scripting/Script;

    return-object v0
.end method

.method public getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 220
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->owner:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    return-object v0
.end method

.method public getRoadFlags()J
    .registers 3

    .line 212
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->roadFlags:J

    return-wide v0
.end method

.method public getRoads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->roadList:Ljava/util/List;

    return-object v0
.end method

.method public getSpawnBuildings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->spawnBuildingList:Ljava/util/List;

    return-object v0
.end method

.method public getStationBuildings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->stationBuildingList:Ljava/util/List;

    return-object v0
.end method

.method public isBusStop(Linfo/flowersoft/theotown/draft/BusStopDraft;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 265
    :cond_4
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->busStopSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isDepotBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 3

    .line 255
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->depotBuildingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSpawnBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 3

    .line 251
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->spawnBuildingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isStationBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 3

    .line 247
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->stationBuildingSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSupportedRoad(Linfo/flowersoft/theotown/city/objects/Road;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 260
    :cond_4
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getFlags()J

    move-result-wide v1

    iget-wide v3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->roadFlags:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    return v0
.end method

.method public onEnterCity()V
    .registers 2

    .line 186
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->onEnterCity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call()Lvm2/LuaValue;

    return-void
.end method

.method public onLeaveCity()V
    .registers 2

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->onLeaveCity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call()Lvm2/LuaValue;

    return-void
.end method

.method public removeStation(II)V
    .registers 4

    .line 199
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->tsLibrary:Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->getCityComponent()Linfo/flowersoft/theotown/components/DefaultTSComponent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->onRemovedStation:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    if-ltz p2, :cond_15

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    goto :goto_17

    :cond_15
    sget-object p2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :goto_17
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    :cond_1a
    return-void
.end method

.method public setLuaRepr(Lvm2/LuaValue;)V
    .registers 2

    .line 293
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->luaRepr:Lvm2/LuaValue;

    return-void
.end method
