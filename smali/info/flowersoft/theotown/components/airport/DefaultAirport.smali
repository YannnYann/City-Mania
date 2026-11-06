###### Class info.flowersoft.theotown.components.airport.DefaultAirport (info.flowersoft.theotown.components.airport.DefaultAirport)
.class public Linfo/flowersoft/theotown/components/airport/DefaultAirport;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultAirport.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public airplaneCounter:I

.field public final airplanes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/airport/Airplane;",
            ">;"
        }
    .end annotation
.end field

.field public laneCounter:I

.field public final laneRoadDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final lanes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/airport/Lane;",
            ">;"
        }
    .end annotation
.end field

.field public launchedAirplanes:I

.field public transferredPassengers:I

.field public final virtualLanes:[Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 32
    const-string v0, "airport lane"

    const-class v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->laneRoadDrafts:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplanes:Ljava/util/List;

    .line 38
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    filled-new-array {v0, v1}, [Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->virtualLanes:[Lio/blueflower/stapel2d/util/IntList;

    .line 51
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 53
    new-instance p1, Lio/blueflower/stapel2d/util/CyclicWorker;

    new-instance v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport$1;-><init>(Linfo/flowersoft/theotown/components/airport/DefaultAirport;)V

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/airport/DefaultAirport;)V
    .registers 1

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->updateAirport()V

    return-void
.end method

.method public static isInLine(IIIIII)Z
    .registers 8

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p4, :cond_c

    if-ne p2, p0, :cond_13

    if-lt p1, p3, :cond_b

    if-gt p1, p5, :cond_b

    return v0

    :cond_b
    return v1

    :cond_c
    if-ne p3, p1, :cond_13

    if-lt p0, p2, :cond_13

    if-gt p0, p4, :cond_13

    return v0

    :cond_13
    return v1
.end method


# virtual methods
.method public addAirplane(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;I)Linfo/flowersoft/theotown/components/airport/Airplane;
    .registers 6

    .line 393
    new-instance v0, Linfo/flowersoft/theotown/components/airport/Airplane;

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplaneCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplaneCounter:I

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1, p1, p2, v2}, Linfo/flowersoft/theotown/components/airport/Airplane;-><init>(ILinfo/flowersoft/theotown/draft/FlyingObjectDraft;ILinfo/flowersoft/theotown/city/City;)V

    .line 394
    iget-object p1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplanes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addLane()Linfo/flowersoft/theotown/components/airport/Lane;
    .registers 4

    .line 384
    new-instance v0, Linfo/flowersoft/theotown/components/airport/Lane;

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->laneCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->laneCounter:I

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/components/airport/Lane;-><init>(ILinfo/flowersoft/theotown/city/City;)V

    const/4 v1, 0x0

    .line 385
    iput-boolean v1, v0, Linfo/flowersoft/theotown/components/airport/Lane;->realLane:Z

    .line 386
    iget-object v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    monitor-enter v1

    .line 387
    :try_start_13
    iget-object v2, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    monitor-exit v1

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public assignAirplaneToLane(Linfo/flowersoft/theotown/components/airport/Lane;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 3

    .line 366
    iput-object p2, p1, Linfo/flowersoft/theotown/components/airport/Lane;->airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

    return-void
.end method

.method public assignLane(Linfo/flowersoft/theotown/components/airport/Lane;II)Z
    .registers 6

    .line 348
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->virtualLanes:[Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 349
    invoke-virtual {p0, p2, p3, v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->isTileInVirtualLanes(IILio/blueflower/stapel2d/util/IntList;)I

    move-result p2

    if-ltz p2, :cond_2d

    .line 351
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p3

    iput p3, p1, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    add-int/lit8 p3, p2, 0x1

    .line 352
    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p3

    iput p3, p1, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    add-int/lit8 p3, p2, 0x2

    .line 353
    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p3

    iput p3, p1, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    add-int/lit8 p2, p2, 0x3

    .line 354
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    iput p2, p1, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    const/4 p2, 0x1

    .line 355
    iput-boolean p2, p1, Linfo/flowersoft/theotown/components/airport/Lane;->realLane:Z

    return p2

    :cond_2d
    return v1
.end method

.method public final collectVirtualLanes()V
    .registers 22

    move-object/from16 v0, p0

    .line 263
    iget-object v1, v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->virtualLanes:[Lio/blueflower/stapel2d/util/IntList;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    const/4 v3, 0x0

    .line 265
    :goto_b
    iget-object v4, v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->laneRoadDrafts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ea

    .line 266
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v4

    iget-object v5, v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->laneRoadDrafts:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/city/RoadList;->getRoadsOfDraft(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v4

    .line 267
    new-instance v5, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v5, v4}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Road;

    .line 268
    iget v6, v5, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iget v7, v5, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    iget-object v8, v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->virtualLanes:[Lio/blueflower/stapel2d/util/IntList;

    aget-object v8, v8, v2

    invoke-virtual {v0, v6, v7, v8}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->isTileInVirtualLanes(IILio/blueflower/stapel2d/util/IntList;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_d8

    .line 269
    iget v6, v5, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    .line 270
    iget v8, v5, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    .line 271
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Road;->getOnewayDir()I

    move-result v5

    .line 272
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v9

    .line 273
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v5

    move v10, v6

    move v11, v10

    move v12, v8

    move v13, v12

    :goto_5d
    if-gt v7, v2, :cond_ad

    mul-int v14, v7, v9

    add-int v15, v6, v14

    mul-int v16, v7, v5

    add-int v17, v8, v16

    move/from16 v20, v17

    move/from16 v17, v2

    move/from16 v2, v20

    .line 283
    :goto_6d
    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v15, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 284
    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    move/from16 v19, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v15, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 285
    iget-object v3, v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->laneRoadDrafts:Ljava/util/List;

    iget-object v1, v1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    goto :goto_93

    :cond_8b
    add-int/2addr v15, v14

    add-int v2, v2, v16

    move/from16 v3, v19

    goto :goto_6d

    :cond_91
    move/from16 v19, v3

    :cond_93
    :goto_93
    sub-int/2addr v15, v14

    sub-int v2, v2, v16

    .line 292
    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 293
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 294
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 295
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v7, v7, 0x2

    move/from16 v2, v17

    move/from16 v3, v19

    goto :goto_5d

    :cond_ad
    move/from16 v17, v2

    move/from16 v19, v3

    sub-int v1, v10, v11

    add-int/2addr v1, v12

    sub-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_dc

    .line 300
    iget-object v1, v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->virtualLanes:[Lio/blueflower/stapel2d/util/IntList;

    aget-object v1, v1, v17

    invoke-virtual {v1, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 301
    iget-object v1, v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->virtualLanes:[Lio/blueflower/stapel2d/util/IntList;

    aget-object v1, v1, v17

    invoke-virtual {v1, v13}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 302
    iget-object v1, v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->virtualLanes:[Lio/blueflower/stapel2d/util/IntList;

    aget-object v1, v1, v17

    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 303
    iget-object v1, v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->virtualLanes:[Lio/blueflower/stapel2d/util/IntList;

    aget-object v1, v1, v17

    invoke-virtual {v1, v12}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_dc

    :cond_d8
    move/from16 v17, v2

    move/from16 v19, v3

    :cond_dc
    :goto_dc
    move/from16 v2, v17

    move/from16 v3, v19

    goto/16 :goto_2e

    :cond_e2
    move/from16 v17, v2

    move/from16 v19, v3

    add-int/lit8 v3, v19, 0x1

    goto/16 :goto_b

    :cond_ea
    move/from16 v17, v2

    .line 309
    iget-object v1, v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->virtualLanes:[Lio/blueflower/stapel2d/util/IntList;

    const/16 v18, 0x0

    aget-object v2, v1, v18

    .line 310
    aget-object v3, v1, v17

    aput-object v3, v1, v18

    .line 311
    aput-object v2, v1, v17

    return-void
.end method

.method public countActivePassengerTransport()I
    .registers 6

    .line 406
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 407
    :goto_5
    :try_start_5
    iget-object v3, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 408
    iget-object v3, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/airport/Lane;

    .line 409
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/airport/Lane;->isActive()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 410
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/airport/Lane;->getAirplane()Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 412
    iget-object v3, v3, Linfo/flowersoft/theotown/components/airport/Airplane;->airplaneDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->capacity:I

    add-int/2addr v2, v3

    goto :goto_29

    :catchall_27
    move-exception v1

    goto :goto_2e

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 416
    :cond_2c
    monitor-exit v0

    return v2

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_27

    throw v1
.end method

.method public getAirplaneOfId(I)Linfo/flowersoft/theotown/components/airport/Airplane;
    .registers 4

    const/4 v0, 0x0

    .line 432
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplanes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 433
    iget-object v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplanes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/airport/Airplane;

    iget v1, v1, Linfo/flowersoft/theotown/components/airport/Airplane;->id:I

    if-ne v1, p1, :cond_1e

    iget-object p1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplanes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/airport/Airplane;

    return-object p1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAirplanes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/airport/Airplane;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplanes:Ljava/util/List;

    return-object v0
.end method

.method public getLaneOfAirplane(Linfo/flowersoft/theotown/components/airport/Airplane;)Linfo/flowersoft/theotown/components/airport/Lane;
    .registers 5

    .line 375
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/airport/Lane;

    iget-object v2, v1, Linfo/flowersoft/theotown/components/airport/Lane;->airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

    if-ne v2, p1, :cond_6

    return-object v1

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLaneOfId(I)Linfo/flowersoft/theotown/components/airport/Lane;
    .registers 4

    const/4 v0, 0x0

    .line 425
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 426
    iget-object v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/airport/Lane;

    iget v1, v1, Linfo/flowersoft/theotown/components/airport/Lane;->id:I

    if-ne v1, p1, :cond_1e

    iget-object p1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/airport/Lane;

    return-object p1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLanes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/airport/Lane;",
            ">;"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    return-object v0
.end method

.method public getLaunchedAirplanes()I
    .registers 2

    .line 170
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->launchedAirplanes:I

    return v0
.end method

.method public getTransferredPassengers()I
    .registers 2

    .line 178
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->transferredPassengers:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0x13

    return v0
.end method

.method public isAirplaneAssigned(Linfo/flowersoft/theotown/components/airport/Airplane;)Z
    .registers 2

    .line 380
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLaneOfAirplane(Linfo/flowersoft/theotown/components/airport/Airplane;)Linfo/flowersoft/theotown/components/airport/Lane;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public isTileInLanes(II)Z
    .registers 13

    const/4 v0, 0x0

    move v1, v0

    .line 315
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 316
    iget-object v2, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/airport/Lane;

    .line 317
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/airport/Lane;->hasRealLane()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 318
    iget v6, v2, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    .line 319
    iget v7, v2, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    .line 320
    iget v8, v2, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    .line 321
    iget v9, v2, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    move v4, p1

    move v5, p2

    .line 322
    invoke-static/range {v4 .. v9}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->isInLine(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    return p1

    :cond_2a
    move v4, p1

    move v5, p2

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    move p1, v4

    move p2, v5

    goto :goto_2

    :cond_31
    return v0
.end method

.method public final isTileInVirtualLanes(IILio/blueflower/stapel2d/util/IntList;)I
    .registers 12

    const/4 v0, 0x0

    .line 335
    :goto_1
    invoke-virtual {p3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 336
    invoke-virtual {p3, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    add-int/lit8 v1, v0, 0x1

    .line 337
    invoke-virtual {p3, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    add-int/lit8 v1, v0, 0x2

    .line 338
    invoke-virtual {p3, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    add-int/lit8 v1, v0, 0x3

    .line 339
    invoke-virtual {p3, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v7

    move v2, p1

    move v3, p2

    .line 340
    invoke-static/range {v2 .. v7}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->isInLine(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_26

    return v0

    :cond_26
    add-int/lit8 v0, v0, 0x4

    move p1, v2

    move p2, v3

    goto :goto_1

    :cond_2b
    const/4 p1, -0x1

    return p1
.end method

.method public isTileInVirtualLanes(II)Z
    .registers 5

    .line 331
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->virtualLanes:[Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->isTileInVirtualLanes(IILio/blueflower/stapel2d/util/IntList;)I

    move-result p1

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    return v1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 63
    :goto_1
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_123

    .line 64
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_124

    :goto_15
    move v1, v0

    goto :goto_63

    :sswitch_17
    const-string v2, "assignments"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_15

    :cond_20
    const/4 v1, 0x6

    goto :goto_63

    :sswitch_22
    const-string v2, "launched airplanes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_15

    :cond_2b
    const/4 v1, 0x5

    goto :goto_63

    :sswitch_2d
    const-string v2, "airplane ctr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_15

    :cond_36
    const/4 v1, 0x4

    goto :goto_63

    :sswitch_38
    const-string v2, "airplanes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_15

    :cond_41
    const/4 v1, 0x3

    goto :goto_63

    :sswitch_43
    const-string v2, "lanes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_15

    :cond_4c
    const/4 v1, 0x2

    goto :goto_63

    :sswitch_4e
    const-string v2, "transferred passengers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_15

    :cond_57
    const/4 v1, 0x1

    goto :goto_63

    :sswitch_59
    const-string v2, "lane ctr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    goto :goto_15

    :cond_62
    const/4 v1, 0x0

    :goto_63
    packed-switch v1, :pswitch_data_142

    .line 126
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_1

    .line 90
    :pswitch_6a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 91
    :goto_6d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 92
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    move v1, v0

    move v2, v1

    .line 95
    :goto_78
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 96
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "lane id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9e

    const-string v4, "airplane id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    .line 104
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_78

    .line 101
    :cond_99
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    goto :goto_78

    .line 98
    :cond_9e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    goto :goto_78

    .line 107
    :cond_a3
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLaneOfId(I)Linfo/flowersoft/theotown/components/airport/Lane;

    move-result-object v1

    .line 108
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getAirplaneOfId(I)Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object v2

    iput-object v2, v1, Linfo/flowersoft/theotown/components/airport/Lane;->airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

    .line 109
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_6d

    .line 111
    :cond_b1
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_1

    .line 120
    :pswitch_b6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->launchedAirplanes:I

    goto/16 :goto_1

    .line 117
    :pswitch_be
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplaneCounter:I

    goto/16 :goto_1

    .line 76
    :pswitch_c6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 77
    :goto_c9
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 78
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 80
    :try_start_d2
    new-instance v1, Linfo/flowersoft/theotown/components/airport/Airplane;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/components/airport/Airplane;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V

    .line 81
    iget-object v2, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplanes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d2 .. :try_end_de} :catch_df

    goto :goto_e9

    .line 83
    :catch_df
    :goto_df
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_df

    .line 85
    :cond_e9
    :goto_e9
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_c9

    .line 87
    :cond_ed
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_1

    .line 66
    :pswitch_f2
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 67
    :goto_f5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 68
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 69
    new-instance v1, Linfo/flowersoft/theotown/components/airport/Lane;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/components/airport/Lane;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V

    .line 70
    iget-object v2, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_f5

    .line 73
    :cond_10e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_1

    .line 123
    :pswitch_113
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->transferredPassengers:I

    goto/16 :goto_1

    .line 114
    :pswitch_11b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->laneCounter:I

    goto/16 :goto_1

    :cond_123
    return-void

    :sswitch_data_124
    .sparse-switch
        -0x60703613 -> :sswitch_59
        -0x5d9d754d -> :sswitch_4e
        0x61fac07 -> :sswitch_43
        0x1d0e4b61 -> :sswitch_38
        0x4251b453 -> :sswitch_2d
        0x4882b053 -> :sswitch_22
        0x68455346 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_11b
        :pswitch_113
        :pswitch_f2
        :pswitch_c6
        :pswitch_be
        :pswitch_b6
        :pswitch_6a
    .end packed-switch
.end method

.method public final mergeLanes()V
    .registers 18

    move-object/from16 v1, p0

    .line 192
    iget-object v0, v1, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->virtualLanes:[Lio/blueflower/stapel2d/util/IntList;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 194
    new-instance v3, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v3}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 196
    iget-object v4, v1, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    monitor-enter v4

    move v5, v2

    .line 197
    :goto_10
    :try_start_10
    iget-object v6, v1, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_116

    .line 198
    iget-object v6, v1, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/airport/Lane;

    .line 200
    iget-boolean v7, v6, Linfo/flowersoft/theotown/components/airport/Lane;->realLane:Z

    if-eqz v7, :cond_112

    move v7, v2

    .line 202
    :goto_25
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5c

    .line 203
    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v8

    add-int/lit8 v10, v7, 0x1

    .line 204
    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v10

    add-int/lit8 v11, v7, 0x2

    .line 205
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v11

    add-int/lit8 v12, v7, 0x3

    .line 206
    invoke-virtual {v0, v12}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v12

    .line 207
    iget v13, v6, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    if-ne v13, v8, :cond_59

    iget v8, v6, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    if-ne v8, v10, :cond_59

    iget v8, v6, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    if-ne v8, v11, :cond_59

    iget v8, v6, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    if-ne v8, v12, :cond_59

    .line 209
    invoke-virtual {v3, v7}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/4 v7, 0x1

    goto :goto_5d

    :catchall_56
    move-exception v0

    goto/16 :goto_118

    :cond_59
    add-int/lit8 v7, v7, 0x4

    goto :goto_25

    :cond_5c
    move v7, v2

    :goto_5d
    if-nez v7, :cond_101

    .line 215
    sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v10, "Airport"

    const-string v11, "Could not match lane"

    invoke-interface {v8, v10, v11}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v2

    move v10, v8

    move v11, v10

    .line 220
    :goto_6b
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v12

    if-ge v8, v12, :cond_ce

    .line 221
    invoke-virtual {v3, v8}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v12

    if-nez v12, :cond_c8

    .line 222
    invoke-virtual {v0, v8}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v12

    add-int/lit8 v13, v8, 0x1

    .line 223
    invoke-virtual {v0, v13}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v13

    add-int/lit8 v14, v8, 0x2

    .line 224
    invoke-virtual {v0, v14}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v14

    add-int/lit8 v15, v8, 0x3

    .line 225
    invoke-virtual {v0, v15}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v15

    if-ne v12, v14, :cond_a9

    const/16 v16, 0x1

    .line 227
    iget v9, v6, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    iget v2, v6, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    if-ne v9, v2, :cond_ab

    if-ne v12, v9, :cond_ab

    .line 228
    iget v2, v6, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v9, v6, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_a5
    sub-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_c3

    :cond_a9
    const/16 v16, 0x1

    :cond_ab
    if-ne v13, v15, :cond_c2

    .line 229
    iget v2, v6, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    iget v9, v6, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    if-ne v2, v9, :cond_c2

    if-ne v13, v2, :cond_c2

    .line 230
    iget v2, v6, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v9, v6, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_a5

    :cond_c2
    const/4 v2, 0x0

    :goto_c3
    if-le v2, v10, :cond_ca

    move v10, v2

    move v11, v8

    goto :goto_ca

    :cond_c8
    const/16 v16, 0x1

    :cond_ca
    :goto_ca
    add-int/lit8 v8, v8, 0x4

    const/4 v2, 0x0

    goto :goto_6b

    :cond_ce
    const/16 v16, 0x1

    const/16 v2, 0xc

    if-lt v10, v2, :cond_101

    .line 239
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "Airport"

    const-string v8, "But found alternative lane"

    invoke-interface {v2, v7, v8}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    add-int/lit8 v7, v11, 0x1

    .line 241
    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v7

    add-int/lit8 v8, v11, 0x2

    .line 242
    invoke-virtual {v0, v8}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v8

    add-int/lit8 v9, v11, 0x3

    .line 243
    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v9

    .line 244
    iput v2, v6, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    .line 245
    iput v7, v6, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    .line 246
    iput v8, v6, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    .line 247
    iput v9, v6, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    .line 249
    invoke-virtual {v3, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    move/from16 v9, v16

    goto :goto_102

    :cond_101
    move v9, v7

    :goto_102
    if-nez v9, :cond_111

    .line 254
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v7, "Airport"

    const-string v8, "Found no alternative lane, so will disable it"

    invoke-interface {v2, v7, v8}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 255
    iput-boolean v2, v6, Linfo/flowersoft/theotown/components/airport/Lane;->realLane:Z

    goto :goto_112

    :cond_111
    const/4 v2, 0x0

    :cond_112
    :goto_112
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_10

    .line 259
    :cond_116
    monitor-exit v4

    return-void

    :goto_118
    monitor-exit v4
    :try_end_119
    .catchall {:try_start_10 .. :try_end_119} :catchall_56

    throw v0
.end method

.method public removeLane(Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 4

    .line 399
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    monitor-enter v0

    .line 400
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 401
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    const-string v0, "lanes"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 135
    :goto_b
    iget-object v2, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 136
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 137
    iget-object v2, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/airport/Lane;

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/components/airport/Lane;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 138
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 140
    :cond_27
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 142
    const-string v1, "airplanes"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v1, v0

    .line 143
    :goto_34
    iget-object v2, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplanes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 144
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 145
    iget-object v2, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplanes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/airport/Airplane;

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/components/airport/Airplane;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 146
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 148
    :cond_50
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 150
    const-string v1, "assignments"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 151
    :goto_5c
    iget-object v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_91

    .line 152
    iget-object v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->lanes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/airport/Lane;

    .line 153
    iget-object v2, v1, Linfo/flowersoft/theotown/components/airport/Lane;->airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

    if-eqz v2, :cond_8e

    .line 154
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 155
    const-string v2, "lane id"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget v3, v1, Linfo/flowersoft/theotown/components/airport/Lane;->id:I

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 156
    const-string v2, "airplane id"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget-object v1, v1, Linfo/flowersoft/theotown/components/airport/Lane;->airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

    iget v1, v1, Linfo/flowersoft/theotown/components/airport/Airplane;->id:I

    invoke-interface {v2, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 157
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 160
    :cond_91
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 162
    const-string v0, "lane ctr"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->laneCounter:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 163
    const-string v0, "airplane ctr"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->airplaneCounter:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 165
    const-string v0, "launched airplanes"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->launchedAirplanes:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 166
    const-string v0, "transferred passengers"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->transferredPassengers:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setLaunchedAirplanes(I)V
    .registers 2

    .line 174
    iput p1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->launchedAirplanes:I

    return-void
.end method

.method public setTransferredPassengers(I)V
    .registers 2

    .line 182
    iput p1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->transferredPassengers:I

    return-void
.end method

.method public unassignAirplaneToLane(Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 3

    .line 370
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLaneOfAirplane(Linfo/flowersoft/theotown/components/airport/Airplane;)Linfo/flowersoft/theotown/components/airport/Lane;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 371
    iput-object v0, p1, Linfo/flowersoft/theotown/components/airport/Lane;->airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

    :cond_9
    return-void
.end method

.method public unassignLane(Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 3

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p1, Linfo/flowersoft/theotown/components/airport/Lane;->realLane:Z

    return-void
.end method

.method public final updateAirport()V
    .registers 1

    .line 186
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->collectVirtualLanes()V

    .line 188
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->mergeLanes()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.airport.DefaultAirport.AnonymousClass1 (info.flowersoft.theotown.components.airport.DefaultAirport$1)
.class Linfo/flowersoft/theotown/components/airport/DefaultAirport$1;
.super Ljava/lang/Object;
.source "DefaultAirport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/airport/DefaultAirport;-><init>(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/airport/DefaultAirport;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/airport/DefaultAirport;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport$1;->this$0:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/DefaultAirport$1;->this$0:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->access$000(Linfo/flowersoft/theotown/components/airport/DefaultAirport;)V

    return-void
.end method
