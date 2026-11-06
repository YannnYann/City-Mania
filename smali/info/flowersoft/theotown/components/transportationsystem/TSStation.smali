###### Class info.flowersoft.theotown.components.transportationsystem.TSStation (info.flowersoft.theotown.components.transportationsystem.TSStation)
.class public Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
.super Ljava/lang/Object;
.source "TSStation.java"


# instance fields
.field public avgReaching:F

.field public avgTransferPerDay:F

.field public avgWaiting:F

.field public busStops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/BusStop;",
            ">;"
        }
    .end annotation
.end field

.field public capacity:I

.field public final cityX:I

.field public final cityY:I

.field public final draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

.field public final id:I

.field public name:Ljava/lang/String;

.field public reaching:F

.field public reachingOverTime:F

.field public roads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field

.field public spawnBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public stationBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public final storage:Lvm2/LuaTable;

.field public tiles:Linfo/flowersoft/theotown/util/TileSet;

.field public transferSinceLastDay:I

.field public waiting:F

.field public waitingOverTime:F

.field public warningMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;ILvm2/LuaTable;Ljava/lang/String;II)V
    .registers 7

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    .line 113
    iput p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->id:I

    .line 114
    iput-object p3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->storage:Lvm2/LuaTable;

    .line 115
    iput-object p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->name:Ljava/lang/String;

    .line 116
    iput p5, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->cityX:I

    .line 117
    iput p6, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->cityY:I

    return-void
.end method


# virtual methods
.method public addReaching(I)I
    .registers 6

    .line 328
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getReaching()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 329
    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reaching:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reaching:F

    .line 330
    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reachingOverTime:F

    add-float/2addr v1, v2

    iget v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reachingOverTime:F

    sub-int/2addr p1, v0

    return p1
.end method

.method public addWaiting(I)I
    .registers 6

    .line 299
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWaiting()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 300
    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waiting:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waiting:F

    .line 301
    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waitingOverTime:F

    add-float/2addr v1, v2

    iget v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waitingOverTime:F

    sub-int/2addr p1, v0

    return p1
.end method

.method public contains(II)Z
    .registers 4

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->tiles:Linfo/flowersoft/theotown/util/TileSet;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/TileSet;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public deliverPassengers(I)I
    .registers 5

    .line 338
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getReaching()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    .line 341
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getReaching()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 342
    iget v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reaching:F

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iput v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reaching:F

    .line 344
    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->transferSinceLastDay:I

    add-int/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->transferSinceLastDay:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getAvgReaching()F
    .registers 2

    .line 240
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgReaching:F

    return v0
.end method

.method public getAvgTransferPerDay()F
    .registers 2

    .line 248
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgTransferPerDay:F

    return v0
.end method

.method public getAvgWaiting()F
    .registers 2

    .line 232
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgWaiting:F

    return v0
.end method

.method public getBusStops()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/BusStop;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->busStops:Ljava/util/List;

    return-object v0
.end method

.method public getCapacity()I
    .registers 2

    .line 212
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    return v0
.end method

.method public getCityX()I
    .registers 2

    .line 163
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->cityX:I

    return v0
.end method

.method public getCityY()I
    .registers 2

    .line 170
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->cityY:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 126
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOrUnnamed()Ljava/lang/String;
    .registers 3

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->name:Ljava/lang/String;

    return-object v0

    .line 136
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unnamed Station "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReaching()I
    .registers 2

    .line 316
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reaching:F

    float-to-int v0, v0

    return v0
.end method

.method public getReachingOverTime()F
    .registers 2

    .line 224
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reachingOverTime:F

    return v0
.end method

.method public getReachingUsage()F
    .registers 4

    .line 276
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgReaching:F

    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getRoads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->roads:Ljava/util/List;

    return-object v0
.end method

.method public getSpawnBuildings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->spawnBuildings:Ljava/util/List;

    return-object v0
.end method

.method public getStationBuildings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->stationBuildings:Ljava/util/List;

    return-object v0
.end method

.method public getStorage()Lvm2/LuaTable;
    .registers 2

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->storage:Lvm2/LuaTable;

    return-object v0
.end method

.method public getTiles()Linfo/flowersoft/theotown/util/TileSet;
    .registers 2

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->tiles:Linfo/flowersoft/theotown/util/TileSet;

    return-object v0
.end method

.method public getTransferSinceLastDay()I
    .registers 2

    .line 256
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->transferSinceLastDay:I

    return v0
.end method

.method public getTransferUsage()F
    .registers 4

    .line 283
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgTransferPerDay:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getWaiting()I
    .registers 2

    .line 287
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waiting:F

    float-to-int v0, v0

    return v0
.end method

.method public getWaitingOverTime()F
    .registers 2

    .line 216
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waitingOverTime:F

    return v0
.end method

.method public getWaitingUsage()F
    .registers 4

    .line 268
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgWaiting:F

    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getWarningMessage()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->warningMessage:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Linfo/flowersoft/theotown/util/TileSet;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/TileSet;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;)V"
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 388
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->tiles:Linfo/flowersoft/theotown/util/TileSet;

    .line 389
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->stationBuildings:Ljava/util/List;

    .line 390
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->spawnBuildings:Ljava/util/List;

    .line 391
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->busStops:Ljava/util/List;

    .line 392
    iput-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->roads:Ljava/util/List;

    const/4 p1, 0x0

    .line 394
    iput p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    return-void

    .line 386
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public initialize(Linfo/flowersoft/theotown/util/TileSet;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/TileSet;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/BusStop;",
            ">;)V"
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 413
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->tiles:Linfo/flowersoft/theotown/util/TileSet;

    .line 414
    iput-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->stationBuildings:Ljava/util/List;

    .line 415
    iput-object p3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->spawnBuildings:Ljava/util/List;

    .line 416
    iput-object p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->busStops:Ljava/util/List;

    .line 417
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->roads:Ljava/util/List;

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 421
    :goto_15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 422
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 423
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->capacity:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2b
    move p2, p1

    .line 425
    :goto_2c
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_42

    .line 426
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    .line 427
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->capacity:I

    add-int/2addr v1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    .line 429
    :cond_42
    :goto_42
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_58

    .line 430
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 431
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object p2

    iget p2, p2, Linfo/flowersoft/theotown/draft/BusStopDraft;->capacity:I

    add-int/2addr v1, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_42

    .line 434
    :cond_58
    iput v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    return-void

    .line 411
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public isCity()Z
    .registers 2

    .line 156
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->cityX:I

    if-nez v0, :cond_b

    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->cityY:I

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public nextDay()V
    .registers 5

    .line 360
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getConfig()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

    move-result-object v0

    .line 361
    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waitingOverTime:F

    iget v2, v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->waiterDecay:F

    mul-float/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waitingOverTime:F

    .line 362
    iget v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reachingOverTime:F

    iget v0, v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->reacherDecay:F

    mul-float/2addr v2, v0

    iput v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reachingOverTime:F

    .line 364
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waiting:F

    add-float/2addr v0, v1

    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waiting:F

    .line 365
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reaching:F

    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reachingOverTime:F

    add-float/2addr v0, v1

    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reaching:F

    .line 368
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waiting:F

    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgWaiting:F

    const v2, 0x3f733333    # 0.95f

    invoke-static {v0, v1, v2}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgWaiting:F

    .line 369
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reaching:F

    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgReaching:F

    invoke-static {v0, v1, v2}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgReaching:F

    .line 370
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->transferSinceLastDay:I

    int-to-float v0, v0

    iget v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgTransferPerDay:F

    invoke-static {v0, v1, v2}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgTransferPerDay:F

    const/4 v0, 0x0

    .line 371
    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->transferSinceLastDay:I

    .line 373
    :goto_53
    iget-object v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->busStops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6f

    .line 374
    iget-object v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->busStops:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/BusStop;

    iget v2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waiting:F

    iget v3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->capacity:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/BusStop;->setUsage(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_6f
    return-void
.end method

.method public setAvgReaching(F)V
    .registers 2

    .line 244
    iput p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgReaching:F

    return-void
.end method

.method public setAvgTransferPerDay(F)V
    .registers 2

    .line 252
    iput p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgTransferPerDay:F

    return-void
.end method

.method public setAvgWaiting(F)V
    .registers 2

    .line 236
    iput p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->avgWaiting:F

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 140
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->name:Ljava/lang/String;

    return-void
.end method

.method public setReaching(I)V
    .registers 2

    int-to-float p1, p1

    .line 320
    iput p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reaching:F

    return-void
.end method

.method public setReachingOverTime(F)V
    .registers 2

    .line 228
    iput p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->reachingOverTime:F

    return-void
.end method

.method public setTransferSinceLastDay(I)V
    .registers 2

    .line 260
    iput p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->transferSinceLastDay:I

    return-void
.end method

.method public setWaiting(I)V
    .registers 2

    int-to-float p1, p1

    .line 291
    iput p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waiting:F

    return-void
.end method

.method public setWaitingOverTime(F)V
    .registers 2

    .line 220
    iput p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waitingOverTime:F

    return-void
.end method

.method public setWarningMessage(Ljava/lang/String;)V
    .registers 2

    .line 353
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->warningMessage:Ljava/lang/String;

    return-void
.end method

.method public takePassengers(I)I
    .registers 4

    .line 309
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWaiting()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 310
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waiting:F

    int-to-float v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->waiting:F

    .line 311
    iget v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->transferSinceLastDay:I

    add-int/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->transferSinceLastDay:I

    return p1
.end method
