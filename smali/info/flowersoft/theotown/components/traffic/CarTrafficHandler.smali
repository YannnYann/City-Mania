###### Class info.flowersoft.theotown.components.traffic.CarTrafficHandler (info.flowersoft.theotown.components.traffic.CarTrafficHandler)
.class public final Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;
.super Linfo/flowersoft/theotown/components/traffic/TrafficHandler;
.source "CarTrafficHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;,
        Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingTask;
    }
.end annotation


# static fields
.field public static final CAR_DRAWING_DIRS:[I

.field public static final CAR_DRAWING_XY:[I

.field public static final CAR_FRAME_MAPPING:[I

.field public static final NUMBER_OF_PATHFINDING_THREADS:I


# instance fields
.field public final IMPORTANT_CARS_RULE:Z

.field public final carControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;",
            ">;"
        }
    .end annotation
.end field

.field public carIdCounter:I

.field public final cars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Car;",
            ">;"
        }
    .end annotation
.end field

.field public final height:I

.field public lastAnimationTime:I

.field public final pathfindingTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingTask;",
            ">;"
        }
    .end annotation
.end field

.field public stopPathfindingCalculation:Z

.field public trafficAmountWorker:Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;

.field public updateCounter:I

.field public final width:I


# direct methods
.method public static synthetic $r8$lambda$-yubETPgBrdHhpaQO2MJaEaeb4M(Lcom/badlogic/gdx/utils/IntMap;I)Linfo/flowersoft/theotown/city/objects/Car;
    .registers 2

    .line 170
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/city/objects/Car;

    return-object p0
.end method

.method public static synthetic $r8$lambda$KTTHofMoksoAA2QyxQeRVw0pKuE(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;ZLinfo/flowersoft/theotown/city/Pathfinding;Z)V
    .registers 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 969
    iget-boolean v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-nez v2, :cond_9f

    .line 970
    iget-object v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v2

    .line 971
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    .line 972
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v2

    .line 973
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    iget v5, p1, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    .line 974
    iget-object v4, p1, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-wide v4, v4, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    invoke-virtual {p4, v4, v5}, Linfo/flowersoft/theotown/city/Pathfinding;->setRoadFlags(J)V

    .line 975
    invoke-virtual {p4, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->addTarget(Linfo/flowersoft/theotown/city/MapArea;)V

    .line 976
    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    add-int/2addr v4, v3

    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    add-int/2addr v3, v2

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    invoke-virtual {p4, v4, v3, v2}, Linfo/flowersoft/theotown/city/Pathfinding;->addStartParcel(III)V

    if-eqz p3, :cond_3c

    const/16 v2, 0xc8

    goto :goto_3e

    :cond_3c
    const/16 v2, 0x32

    .line 977
    :goto_3e
    invoke-virtual {p4, v2}, Linfo/flowersoft/theotown/city/Pathfinding;->calculate(I)V

    if-nez p5, :cond_44

    goto :goto_9f

    .line 982
    :cond_44
    iget-object v7, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    monitor-enter v7

    .line 983
    :try_start_47
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/Pathfinding;->hasResult()Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_75

    .line 984
    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iget v5, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V

    .line 985
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/Pathfinding;->getResult()Linfo/flowersoft/theotown/city/objects/Way;

    move-result-object v0

    .line 986
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Car;->driveTo(Linfo/flowersoft/theotown/city/objects/Way;)V

    .line 987
    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iget v5, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V

    .line 988
    iput-boolean v8, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    .line 989
    invoke-virtual {v6, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->foundWay(Linfo/flowersoft/theotown/city/objects/Car;)V

    goto :goto_9b

    :catchall_73
    move-exception v0

    goto :goto_9d

    .line 990
    :cond_75
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/Pathfinding;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 991
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->wait(Linfo/flowersoft/theotown/city/objects/Car;)V

    goto :goto_9b

    .line 993
    :cond_7f
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-eqz v0, :cond_8c

    .line 994
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "Pathfinding"

    const-string v3, "Found no way"

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :cond_8c
    iput-boolean v8, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    .line 997
    invoke-virtual {v6, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->foundNoWay(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 998
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    if-nez v0, :cond_99

    .line 999
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->unregisterCarFromList(Linfo/flowersoft/theotown/city/objects/Car;)V

    goto :goto_9b

    .line 1001
    :cond_99
    iput-boolean v8, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    .line 1004
    :goto_9b
    monitor-exit v7

    return-void

    :goto_9d
    monitor-exit v7
    :try_end_9e
    .catchall {:try_start_47 .. :try_end_9e} :catchall_73

    throw v0

    :cond_9f
    :goto_9f
    return-void
.end method

.method public static synthetic $r8$lambda$KnGYsweIBgFHXGA6r2EE9hfz_qQ(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)V
    .registers 4

    const/4 v0, 0x0

    .line 322
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    .line 322
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 323
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    .line 324
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    monitor-enter v2

    .line 325
    :try_start_14
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->update()V

    .line 326
    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_1b
    move-exception p0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    return-void
.end method

.method public static synthetic $r8$lambda$bj9u9xkVEZtL8LoamxrfctLzFu8(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;ZLinfo/flowersoft/theotown/components/traffic/carcontroller/CarController;IJILinfo/flowersoft/theotown/city/Pathfinding;Z)V
    .registers 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 935
    iget-wide v0, p1, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    invoke-virtual {p10, v0, v1}, Linfo/flowersoft/theotown/city/Pathfinding;->setRoadFlags(J)V

    .line 936
    invoke-virtual {p10, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->addTarget(Linfo/flowersoft/theotown/city/MapArea;)V

    .line 937
    invoke-virtual {p10, p3}, Linfo/flowersoft/theotown/city/Pathfinding;->addStart(Linfo/flowersoft/theotown/city/MapArea;)V

    if-eqz p4, :cond_13

    const/16 p2, 0xc8

    goto :goto_15

    :cond_13
    const/16 p2, 0x32

    .line 938
    :goto_15
    invoke-virtual {p10, p2}, Linfo/flowersoft/theotown/city/Pathfinding;->calculate(I)V

    if-nez p11, :cond_1b

    return-void

    .line 943
    :cond_1b
    invoke-virtual {p10}, Linfo/flowersoft/theotown/city/Pathfinding;->hasResult()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 944
    invoke-virtual {p10}, Linfo/flowersoft/theotown/city/Pathfinding;->getResult()Linfo/flowersoft/theotown/city/objects/Way;

    move-result-object p4

    move-object p3, p0

    move p10, p9

    move-wide p8, p7

    move p7, p6

    move-object p6, p5

    move-object p5, p1

    .line 945
    invoke-virtual/range {p3 .. p10}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->spawnCar(Linfo/flowersoft/theotown/city/objects/Way;Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;IJI)Z

    return-void

    :cond_2f
    move-object p6, p5

    move-wide p8, p7

    .line 947
    invoke-virtual {p6, p8, p9}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->onNotSpawn(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$jeU5_KWetYrejwSzWVNqyYGwjBg(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/components/DefaultDate;Linfo/flowersoft/theotown/components/DefaultWeather;)V
    .registers 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v3

    .line 334
    iget p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->lastAnimationTime:I

    sub-int p1, v3, p1

    .line 335
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/WinterManager;->isWinter()Z

    move-result v4

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    .line 336
    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v6

    .line 338
    iput v3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->lastAnimationTime:I

    .line 341
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/DefaultWeather;->isFogEnabled()Z

    move-result p1

    const v1, 0x3f333333    # 0.7f

    if-eqz p1, :cond_27

    move p1, v1

    goto :goto_29

    :cond_27
    const/high16 p1, 0x3f800000    # 1.0f

    .line 342
    :goto_29
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/DefaultWeather;->getRain()F

    move-result p2

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_35

    mul-float/2addr p1, v1

    :cond_35
    move v5, p1

    move v1, v0

    .line 346
    :goto_37
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_5e

    .line 347
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    monitor-enter p1

    add-int/lit16 v2, v1, 0x3e8

    .line 348
    :try_start_44
    iget v7, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->updateCounter:I

    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    .line 349
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getLod()Linfo/flowersoft/theotown/city/components/LODController;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/components/LODController;->drawCars()Z

    move-result p2

    xor-int/lit8 v8, p2, 0x1

    move-object v0, p0

    .line 348
    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->updateCars(IIIIFIIZ)V

    .line 350
    monitor-exit p1

    move-object p0, v0

    move v1, v2

    goto :goto_37

    :catchall_5a
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_44 .. :try_end_5d} :catchall_5a

    throw p0

    :cond_5e
    move-object v0, p0

    .line 352
    iget p0, v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->updateCounter:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->updateCounter:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 77
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->NUMBER_OF_PATHFINDING_THREADS:I

    const/4 v0, 0x0

    const/16 v3, 0x10

    .line 79
    new-array v3, v3, [I

    fill-array-data v3, :array_2c

    sput-object v3, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->CAR_DRAWING_XY:[I

    const/16 v3, 0x8

    .line 80
    new-array v3, v3, [I

    fill-array-data v3, :array_50

    sput-object v3, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->CAR_DRAWING_DIRS:[I

    const/4 v3, 0x3

    .line 86
    filled-new-array {v2, v0, v3, v1}, [I

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->CAR_FRAME_MAPPING:[I

    return-void

    :array_2c
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_50
    .array-data 4
        0x4
        0x2
        0x8
        0x2
        0x1
        0x4
        0x1
        0x8
    .end array-data
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 10

    .line 111
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->IMPORTANT_CARS_RULE:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    .line 113
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->width:I

    .line 114
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->height:I

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carIdCounter:I

    .line 118
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/DefaultCarController;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/DefaultCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    .line 119
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/BusController;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/BusController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    .line 120
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/FireEngineController;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/FireEngineController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    .line 121
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/PoliceCarController;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/PoliceCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    .line 122
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/SWATCarController;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/SWATCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    .line 123
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/MedicCarController;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/MedicCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    .line 124
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/GarbageTruckController;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/GarbageTruckController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    .line 125
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/HearseCarController;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/HearseCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    .line 126
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    .line 127
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/AirportTaxiCarController;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/AirportTaxiCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    .line 128
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    move v1, v0

    .line 130
    :goto_83
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e3

    .line 131
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 132
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    if-eqz v3, :cond_ad

    move v3, v0

    .line 133
    :goto_98
    iget-object v4, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    array-length v4, v4

    if-ge v3, v4, :cond_ad

    .line 134
    new-instance v4, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;

    iget-object v5, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    aget-object v5, v5, v3

    const/4 v6, 0x0

    invoke-direct {v4, p0, v2, v6, v5}, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;Linfo/flowersoft/theotown/draft/BuildingDraft;Linfo/flowersoft/theotown/draft/UpgradeDraft;Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;)V

    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    .line 137
    :cond_ad
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingDraft;->hasUpgrades()Z

    move-result v3

    if-eqz v3, :cond_e0

    move v3, v0

    .line 138
    :goto_b4
    iget-object v4, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e0

    .line 139
    iget-object v4, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 140
    iget-object v5, v4, Linfo/flowersoft/theotown/draft/UpgradeDraft;->carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    if-eqz v5, :cond_dd

    move v5, v0

    .line 141
    :goto_c9
    iget-object v6, v4, Linfo/flowersoft/theotown/draft/UpgradeDraft;->carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    array-length v6, v6

    if-ge v5, v6, :cond_dd

    .line 142
    new-instance v6, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;

    iget-object v7, v4, Linfo/flowersoft/theotown/draft/UpgradeDraft;->carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    aget-object v7, v7, v5

    invoke-direct {v6, p0, v2, v4, v7}, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;Linfo/flowersoft/theotown/draft/BuildingDraft;Linfo/flowersoft/theotown/draft/UpgradeDraft;Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;)V

    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c9

    :cond_dd
    add-int/lit8 v3, v3, 0x1

    goto :goto_b4

    :cond_e0
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 149
    :cond_e3
    :goto_e3
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f9

    .line 150
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    .line 151
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->setCity(Linfo/flowersoft/theotown/city/City;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e3

    :cond_f9
    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->stopPathfindingCalculation:Z

    return p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)Ljava/util/ArrayDeque;
    .registers 1

    .line 72
    iget-object p0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    return-object p0
.end method


# virtual methods
.method public final addCarController(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;)V
    .registers 3

    .line 914
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->setId(I)V

    .line 915
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTailCar(Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/objects/Car;I)Linfo/flowersoft/theotown/city/objects/Car;
    .registers 9

    .line 1538
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    monitor-enter v0

    if-gez p3, :cond_14

    .line 1540
    :try_start_5
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    iget v2, p1, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v1, v2

    invoke-virtual {p3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    goto :goto_14

    :catchall_12
    move-exception p1

    goto :goto_51

    .line 1541
    :cond_14
    :goto_14
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v1

    .line 1542
    new-instance v2, Linfo/flowersoft/theotown/city/objects/Car;

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    iget v4, p1, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v3, v4

    rem-int/2addr p3, v3

    iget v3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carIdCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carIdCounter:I

    invoke-direct {v2, p2, p1, p3, v3}, Linfo/flowersoft/theotown/city/objects/Car;-><init>(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/draft/CarDraft;II)V

    .line 1545
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Car;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 1547
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/city/objects/Car;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1550
    :cond_37
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->registerCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    if-eqz v1, :cond_4f

    .line 1552
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/Car;->setParent(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 1553
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1554
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1555
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {p2, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1557
    :cond_4f
    monitor-exit v0

    return-object v2

    .line 1558
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_12

    throw p1
.end method

.method public final buildTail(Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/objects/Car;I)V
    .registers 7

    .line 1529
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/CarDraft;->tail:[Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz v0, :cond_16

    array-length v0, v0

    if-lez v0, :cond_16

    const/4 v0, 0x0

    .line 1531
    :goto_8
    iget-object v1, p1, Linfo/flowersoft/theotown/draft/CarDraft;->tail:[Linfo/flowersoft/theotown/draft/CarDraft;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 1532
    aget-object v1, v1, v0

    invoke-virtual {p0, v1, p2, p3}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addTailCar(Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/objects/Car;I)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    return-void
.end method

.method public final canDrive(IIIII)Z
    .registers 10

    .line 1484
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 1485
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v1

    add-int/2addr v1, p2

    const/4 v2, 0x2

    .line 1486
    div-int/2addr v0, v2

    .line 1487
    div-int/2addr v1, v2

    .line 1489
    div-int/2addr p1, v2

    const/4 v3, 0x1

    if-ne p1, v0, :cond_14

    div-int/2addr p2, v2

    if-eq p2, v1, :cond_50

    :cond_14
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 1490
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, v0, v1, p5}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-nez p1, :cond_32

    .line 1492
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    sub-int/2addr p5, v3

    invoke-virtual {p1, v0, v1, p5}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 1493
    iget p2, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez p2, :cond_32

    const/4 p1, 0x0

    :cond_32
    if-eqz p1, :cond_50

    .line 1496
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->hasTrafficLights()Z

    move-result p2

    if-eqz p2, :cond_50

    .line 1497
    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/city/objects/Road;->getTrafficLightFrame(I)I

    move-result p1

    if-eq p3, v3, :cond_43

    const/4 p2, 0x4

    if-ne p3, p2, :cond_45

    :cond_43
    if-eqz p1, :cond_50

    :cond_45
    if-eq p3, v2, :cond_4b

    const/16 p2, 0x8

    if-ne p3, p2, :cond_4e

    :cond_4b
    if-ne p1, v2, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 p1, 0x0

    return p1

    :cond_50
    :goto_50
    return v3
.end method

.method public final carIsVisible(Linfo/flowersoft/theotown/city/objects/Car;)Z
    .registers 7

    .line 363
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v0

    .line 364
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v1

    .line 365
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v2

    .line 366
    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v3

    .line 367
    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v0

    .line 368
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    mul-int/lit8 p1, p1, 0xc

    int-to-float p1, p1

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    sub-int/2addr v0, p1

    .line 370
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object p1

    .line 371
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v2, v3, v1

    int-to-float v2, v2

    .line 372
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_7c

    add-int v2, v0, v1

    int-to-float v2, v2

    .line 373
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_7c

    sub-int/2addr v3, v1

    int-to-float v2, v3

    .line 374
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v3

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v4

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7c

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 375
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result p1

    add-float/2addr v1, p1

    cmpg-float p1, v0, v1

    if-gez p1, :cond_7c

    const/4 p1, 0x1

    return p1

    :cond_7c
    const/4 p1, 0x0

    return p1
.end method

.method public changePath(Linfo/flowersoft/theotown/city/objects/Car;I)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1064
    new-instance v2, Linfo/flowersoft/theotown/city/objects/Way;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/city/objects/Way;-><init>(I)V

    .line 1065
    iget v4, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    .line 1066
    iget v5, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    .line 1067
    iget v6, v1, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    .line 1068
    iget v7, v1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    .line 1069
    invoke-virtual {v2, v4, v5, v7}, Linfo/flowersoft/theotown/city/objects/Way;->setStart(III)V

    .line 1070
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Way;->startFromFront()V

    .line 1071
    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/city/objects/Way;->addDirToFront(I)V

    move v10, v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    move v7, v6

    move v6, v5

    move v5, v4

    move/from16 v4, p2

    :goto_24
    if-ge v11, v3, :cond_dc

    .line 1075
    div-int/lit8 v13, v5, 0x2

    .line 1076
    div-int/lit8 v14, v6, 0x2

    .line 1077
    iget-object v15, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v15, v13, v14, v10}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v15

    .line 1078
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v16

    add-int v5, v5, v16

    .line 1079
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v16

    add-int v6, v6, v16

    .line 1080
    div-int/lit8 v3, v5, 0x2

    .line 1081
    div-int/lit8 v8, v6, 0x2

    if-ltz v3, :cond_dc

    if-ltz v8, :cond_dc

    .line 1082
    iget-object v9, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9, v3, v8}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v9

    if-eqz v9, :cond_dc

    if-eqz v15, :cond_dc

    if-ne v3, v13, :cond_52

    if-eq v8, v14, :cond_76

    .line 1085
    :cond_52
    iget v9, v15, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-ne v9, v7, :cond_58

    add-int/lit8 v10, v10, 0x1

    .line 1086
    :cond_58
    iget-object v9, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v3, v8, v10}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v15

    if-nez v15, :cond_76

    .line 1088
    iget-object v9, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v9, v3, v8, v13}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v15

    if-eqz v15, :cond_75

    .line 1089
    iget v3, v15, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v8

    if-ne v3, v8, :cond_75

    add-int/lit8 v10, v10, -0x1

    goto :goto_76

    :cond_75
    const/4 v15, 0x0

    :cond_76
    :goto_76
    if-eqz v15, :cond_dc

    .line 1100
    rem-int/lit8 v3, v5, 0x2

    rem-int/lit8 v8, v6, 0x2

    invoke-virtual {v15, v3, v8}, Linfo/flowersoft/theotown/city/objects/Road;->getDirs(II)I

    move-result v3

    .line 1102
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v8

    invoke-static {v8, v3}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v8

    .line 1103
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->turnCW(I)I

    move-result v9

    invoke-static {v9, v3}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v9

    const/4 v13, -0x1

    if-ne v4, v13, :cond_9d

    if-eqz v8, :cond_9d

    .line 1105
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v7

    move v12, v11

    const/4 v4, 0x0

    const/4 v13, 0x1

    goto :goto_a8

    :cond_9d
    const/4 v13, 0x1

    if-ne v4, v13, :cond_a8

    if-eqz v9, :cond_a8

    .line 1109
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->turnCW(I)I

    move-result v7

    move v12, v11

    const/4 v4, 0x0

    .line 1114
    :cond_a8
    :goto_a8
    invoke-static {v7, v3}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v3

    if-nez v3, :cond_d3

    if-eqz v8, :cond_c5

    if-eqz v9, :cond_c5

    .line 1116
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextBoolean()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 1117
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v3

    :goto_be
    move v7, v3

    goto :goto_d3

    .line 1119
    :cond_c0
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->turnCW(I)I

    move-result v3

    goto :goto_be

    :cond_c5
    if-eqz v8, :cond_cc

    .line 1122
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v3

    goto :goto_be

    :cond_cc
    if-eqz v9, :cond_d3

    .line 1124
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->turnCW(I)I

    move-result v3

    goto :goto_be

    .line 1127
    :cond_d3
    :goto_d3
    invoke-virtual {v2, v7}, Linfo/flowersoft/theotown/city/objects/Way;->addDirToFront(I)V

    add-int/lit8 v11, v11, 0x1

    const/16 v3, 0x80

    goto/16 :goto_24

    .line 1136
    :cond_dc
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Way;->startFromFront()V

    const/4 v3, 0x0

    .line 1137
    iput v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    .line 1138
    iput-object v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    return v12
.end method

.method public countCars()I
    .registers 2

    .line 1593
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public countCars(III)I
    .registers 6

    .line 1597
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1598
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-nez p1, :cond_13

    return v1

    :cond_13
    move p2, v1

    move p3, p2

    :goto_15
    const/4 v0, 0x4

    if-ge p2, v0, :cond_25

    .line 1603
    iget-object v0, p1, Linfo/flowersoft/theotown/city/objects/Road;->CarArray:[Linfo/flowersoft/theotown/city/objects/Car;

    aget-object v0, v0, p2

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    add-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    :cond_25
    return p3
.end method

.method public dispose()V
    .registers 5

    .line 1610
    invoke-super {p0}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->dispose()V

    const/4 v0, 0x1

    .line 1612
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->stopPathfindingCalculation:Z

    .line 1613
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 1614
    :try_start_9
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 1615
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1616
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_32

    .line 1618
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    monitor-enter v2

    .line 1619
    :try_start_17
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Car;

    .line 1620
    iput-boolean v0, v3, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    goto :goto_1d

    :catchall_2c
    move-exception v0

    goto :goto_30

    .line 1622
    :cond_2e
    monitor-exit v2

    return-void

    :goto_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_2c

    throw v0

    :catchall_32
    move-exception v0

    .line 1616
    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public draw(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v5, p4

    .line 1143
    iget v8, v7, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    .line 1145
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Road;->getFlags()J

    move-result-wide v3

    const-wide/16 v9, 0x40

    and-long/2addr v3, v9

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    const/16 v4, 0x60

    const/16 v6, 0x20

    const/4 v9, 0x0

    if-eqz v3, :cond_26

    mul-int/lit8 v3, v8, 0xc

    rsub-int/lit8 v3, v3, -0x2e

    .line 1146
    invoke-virtual {v5, v9, v3, v6, v4}, Linfo/flowersoft/theotown/city/Drawer;->setClipRect(IIII)V

    goto :goto_2d

    :cond_26
    mul-int/lit8 v3, v8, 0xc

    rsub-int/lit8 v3, v3, -0xe

    .line 1148
    invoke-virtual {v5, v9, v3, v6, v4}, Linfo/flowersoft/theotown/city/Drawer;->setClipRect(IIII)V

    :goto_2d
    move v10, v9

    :goto_2e
    const/16 v3, 0x8

    if-ge v10, v3, :cond_120

    .line 1152
    sget-object v3, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->CAR_DRAWING_DIRS:[I

    aget v11, v3, v10

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-eq v11, v13, :cond_43

    const/4 v3, 0x4

    if-ne v11, v3, :cond_3e

    goto :goto_43

    :cond_3e
    const/4 v3, 0x3

    move v14, v3

    move v3, v9

    move v15, v12

    goto :goto_47

    :cond_43
    :goto_43
    const/4 v3, -0x1

    move v14, v3

    move v15, v14

    move v3, v13

    :goto_47
    if-eq v3, v14, :cond_113

    .line 1162
    sget-object v4, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->CAR_DRAWING_XY:[I

    mul-int/lit8 v6, v10, 0x2

    aget v16, v4, v6

    mul-int/lit8 v16, v16, 0x2

    add-int/lit8 v9, v16, -0x1

    add-int/2addr v6, v12

    .line 1163
    aget v4, v4, v6

    mul-int/2addr v4, v13

    sub-int/2addr v4, v12

    .line 1166
    iget v6, v5, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    if-eqz v6, :cond_6c

    if-eq v6, v12, :cond_6a

    if-eq v6, v13, :cond_67

    neg-int v9, v9

    :goto_61
    move/from16 v20, v9

    move v9, v4

    move/from16 v4, v20

    goto :goto_6c

    :cond_67
    neg-int v9, v9

    neg-int v4, v4

    goto :goto_6c

    :cond_6a
    neg-int v4, v4

    goto :goto_61

    :cond_6c
    :goto_6c
    add-int/2addr v9, v12

    .line 1184
    div-int/2addr v9, v13

    add-int/2addr v4, v12

    .line 1185
    div-int/2addr v4, v13

    .line 1186
    invoke-static {v11, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v6

    mul-int/lit8 v16, v1, 0x2

    add-int v16, v16, v9

    .line 1187
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v9

    mul-int/2addr v9, v3

    add-int v16, v16, v9

    mul-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v4

    .line 1188
    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v9, v4

    .line 1189
    div-int/lit8 v4, v16, 0x2

    .line 1190
    div-int/lit8 v12, v9, 0x2

    if-ne v1, v4, :cond_93

    if-ne v2, v12, :cond_93

    const/16 v17, 0x1

    goto :goto_95

    :cond_93
    const/16 v17, 0x0

    :goto_95
    if-ltz v16, :cond_100

    if-ltz v9, :cond_100

    move/from16 v18, v13

    .line 1192
    iget-object v13, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v13, v4, v12}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v13

    if-eqz v13, :cond_e1

    .line 1193
    iget-object v13, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v4, v12}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v13

    if-eqz v13, :cond_e1

    .line 1195
    iget v1, v7, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-ne v1, v6, :cond_b4

    if-nez v17, :cond_b4

    const/16 v19, 0x1

    goto :goto_b6

    :cond_b4
    const/16 v19, 0x0

    .line 1197
    :goto_b6
    iget v1, v13, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    add-int v2, v8, v19

    if-ne v1, v2, :cond_bd

    goto :goto_c3

    .line 1199
    :cond_bd
    iget-object v1, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v4, v12, v2}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v13

    :goto_c3
    if-nez v13, :cond_d8

    .line 1202
    iget-object v1, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v12, v2}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v13

    if-eqz v13, :cond_d7

    iget v1, v13, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v2

    if-eq v1, v2, :cond_d8

    :cond_d7
    const/4 v13, 0x0

    :cond_d8
    if-eqz v13, :cond_e1

    if-nez v17, :cond_e3

    .line 1206
    iget v1, v13, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-ltz v1, :cond_e1

    goto :goto_e3

    :cond_e1
    :goto_e1
    move v13, v3

    goto :goto_103

    .line 1207
    :cond_e3
    :goto_e3
    iget-object v1, v13, Linfo/flowersoft/theotown/city/objects/Road;->CarArray:[Linfo/flowersoft/theotown/city/objects/Car;

    rem-int/lit8 v16, v16, 0x2

    rem-int/lit8 v9, v9, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int v16, v16, v9

    aget-object v4, v1, v16

    if-eqz v4, :cond_e1

    .line 1209
    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v6

    move-object v1, v13

    move v13, v3

    move-object v3, v1

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->drawCar(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/Drawer;I)V

    goto :goto_103

    :cond_100
    move/from16 v18, v13

    goto :goto_e1

    :goto_103
    add-int v3, v13, v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p4

    move/from16 v13, v18

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto/16 :goto_47

    :cond_113
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p4

    const/4 v9, 0x0

    goto/16 :goto_2e

    .line 1218
    :cond_120
    invoke-virtual/range {p4 .. p4}, Linfo/flowersoft/theotown/city/Drawer;->resetClipping()V

    return-void
.end method

.method public final drawCar(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/Drawer;I)V
    .registers 33

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 1222
    iget-object v3, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 1223
    iget-boolean v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-eqz v3, :cond_1e

    .line 1224
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    const/4 v4, 0x0

    iget v5, v1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V

    return-void

    .line 1228
    :cond_1e
    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    .line 1229
    iget v4, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_39

    .line 1230
    iget-object v7, v1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    if-eqz v7, :cond_39

    .line 1231
    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    sub-int/2addr v3, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v7, v3}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v3

    .line 1233
    :cond_39
    iget v7, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v3, v7}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v7

    move/from16 v8, p6

    .line 1235
    invoke-static {v7, v8}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v8

    if-eqz v8, :cond_353

    if-nez v3, :cond_4b

    goto/16 :goto_353

    .line 1237
    :cond_4b
    iget v8, v1, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1238
    iget-object v10, v1, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    .line 1240
    iget v11, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    rem-int/lit8 v12, v11, 0x2

    .line 1241
    iget v13, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    rem-int/lit8 v14, v13, 0x2

    const/4 v15, 0x2

    .line 1242
    div-int/2addr v11, v15

    sub-int v11, v11, p1

    .line 1243
    div-int/2addr v13, v15

    sub-int v13, v13, p2

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v8, v8, v16

    move/from16 p6, v9

    .line 1244
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    .line 1245
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    move/from16 v17, v6

    int-to-float v6, v12

    const/high16 v18, 0x40000000    # 2.0f

    div-float v6, v6, v18

    int-to-float v15, v14

    div-float v15, v15, v18

    .line 1252
    iget-object v5, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v5, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalCars:Z

    if-eqz v5, :cond_d1

    .line 1253
    iget-object v5, v1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    move/from16 p1, v4

    if-eqz v5, :cond_a1

    iget v4, v1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    add-int/lit8 v4, v4, -0x1

    move/from16 p2, v6

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v4

    goto :goto_a5

    :cond_a1
    move/from16 p2, v6

    iget v4, v1, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    .line 1254
    :goto_a5
    iget v5, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v5

    if-eqz v5, :cond_cd

    if-eq v5, v7, :cond_cd

    .line 1256
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v6

    if-eq v5, v6, :cond_cd

    .line 1257
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v6

    sub-int v6, v12, v6

    .line 1258
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v4

    sub-int v4, v14, v4

    add-int/2addr v6, v12

    int-to-float v6, v6

    const/high16 v12, 0x40800000    # 4.0f

    div-float/2addr v6, v12

    add-int/2addr v4, v14

    int-to-float v4, v4

    div-float v15, v4, v12

    move/from16 v4, v17

    goto :goto_d7

    :cond_cd
    move/from16 v6, p2

    const/4 v4, 0x0

    goto :goto_d7

    :cond_d1
    move/from16 p1, v4

    move/from16 p2, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d7
    const v21, 0x3ecccccd    # 0.4f

    const p2, 0x3dcccccd    # 0.1f

    const/4 v12, 0x4

    const/high16 v22, 0x3e800000    # 0.25f

    const/4 v14, 0x2

    if-ne v7, v14, :cond_e8

    sub-float v9, v9, v16

    sub-float v14, p1, v22

    goto :goto_fe

    :cond_e8
    if-ne v7, v12, :cond_ef

    sub-float v14, p1, v16

    sub-float v9, v9, v22

    goto :goto_fe

    :cond_ef
    move/from16 v14, v17

    if-ne v7, v14, :cond_f8

    sub-float v9, v9, v21

    :cond_f5
    move/from16 v14, p1

    goto :goto_fe

    :cond_f8
    const/16 v14, 0x8

    if-ne v7, v14, :cond_f5

    sub-float v14, p1, p2

    .line 1277
    :goto_fe
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v23

    .line 1278
    sget-object v24, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->CAR_FRAME_MAPPING:[I

    aget v25, v24, v23

    if-eqz v4, :cond_15d

    .line 1282
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v4

    if-ne v4, v7, :cond_10f

    move v7, v5

    :cond_10f
    const/4 v4, 0x2

    if-ne v5, v4, :cond_11b

    sub-float v9, v9, v16

    sub-float v14, v14, v22

    :goto_116
    move/from16 p1, v12

    const/16 v4, 0x8

    goto :goto_130

    :cond_11b
    if-ne v5, v12, :cond_122

    sub-float v14, v14, v16

    sub-float v9, v9, v22

    goto :goto_116

    :cond_122
    const/4 v4, 0x1

    if-ne v5, v4, :cond_128

    sub-float v9, v9, v21

    goto :goto_116

    :cond_128
    const/16 v4, 0x8

    if-ne v5, v4, :cond_12e

    sub-float v14, v14, p2

    :cond_12e
    move/from16 p1, v12

    .line 1300
    :goto_130
    iget-object v12, v1, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget v12, v12, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    if-lt v12, v4, :cond_141

    .line 1301
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    move/from16 v23, v4

    move/from16 v25, v23

    goto :goto_14b

    .line 1304
    :cond_141
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v4

    .line 1305
    aget v7, v24, v4

    move/from16 v23, v4

    move/from16 v25, v7

    .line 1308
    :goto_14b
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v9, v4

    .line 1309
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v14, v4

    div-float v9, v9, v18

    div-float v14, v14, v18

    :cond_15d
    move/from16 v4, v25

    .line 1314
    iget v5, v2, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    if-eqz v5, :cond_188

    const/4 v7, 0x1

    if-eq v5, v7, :cond_181

    const/4 v7, 0x2

    if-eq v5, v7, :cond_176

    const/4 v7, 0x3

    if-eq v5, v7, :cond_16d

    goto :goto_18e

    :cond_16d
    sub-float v5, v16, v15

    int-to-float v7, v13

    sub-float/2addr v5, v7

    add-float/2addr v9, v5

    int-to-float v5, v11

    add-float/2addr v6, v5

    add-float/2addr v14, v6

    goto :goto_18e

    :cond_176
    sub-float v5, v16, v6

    int-to-float v6, v11

    sub-float/2addr v5, v6

    add-float/2addr v9, v5

    sub-float v5, v16, v15

    int-to-float v6, v13

    :goto_17e
    sub-float/2addr v5, v6

    add-float/2addr v14, v5

    goto :goto_18e

    :cond_181
    int-to-float v5, v13

    add-float/2addr v15, v5

    add-float/2addr v9, v15

    sub-float v5, v16, v6

    int-to-float v6, v11

    goto :goto_17e

    :cond_188
    int-to-float v5, v11

    add-float/2addr v6, v5

    add-float/2addr v9, v6

    int-to-float v5, v13

    add-float/2addr v15, v5

    add-float/2addr v14, v15

    :goto_18e
    add-float v5, v9, v14

    const/high16 v6, 0x42000000    # 32.0f

    mul-float/2addr v5, v6

    div-float v5, v5, v18

    sub-float/2addr v9, v14

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v9, v6

    div-float v9, v9, v18

    .line 1335
    sget-boolean v6, Linfo/flowersoft/theotown/resources/Settings;->smoothCarMovement:Z

    if-nez v6, :cond_1a3

    float-to-int v5, v5

    int-to-float v5, v5

    float-to-int v6, v9

    int-to-float v9, v6

    .line 1340
    :cond_1a3
    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    mul-int/lit8 v6, v6, 0xc

    int-to-float v6, v6

    sub-float/2addr v9, v6

    .line 1342
    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v6, :cond_1d6

    .line 1344
    iget v6, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    div-int/lit8 v7, v6, 0x2

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v11

    add-int/2addr v6, v11

    const/16 v19, 0x2

    div-int/lit8 v6, v6, 0x2

    if-ne v7, v6, :cond_1ca

    iget v6, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    div-int/lit8 v7, v6, 0x2

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v11

    add-int/2addr v6, v11

    div-int/lit8 v6, v6, 0x2

    if-ne v7, v6, :cond_1ca

    goto :goto_1cc

    :cond_1ca
    add-float v8, v8, v16

    .line 1349
    :goto_1cc
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eq v0, v3, :cond_1d2

    sub-float v8, p6, v8

    :cond_1d2
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v8, v0

    sub-float/2addr v9, v8

    .line 1355
    :cond_1d6
    iget-object v0, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 1356
    iget-object v3, v10, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v3, :cond_1ed

    .line 1357
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    if-nez v3, :cond_1ea

    .line 1359
    iget-object v3, v10, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    iget v6, v1, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    array-length v7, v3

    rem-int/2addr v6, v7

    aget-object v3, v3, v6

    .line 1361
    :cond_1ea
    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1363
    :cond_1ed
    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    iget v6, v10, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    mul-int/2addr v3, v6

    add-int/2addr v3, v4

    iget-object v6, v10, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v6, v6

    rem-int/2addr v3, v6

    .line 1365
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v6

    .line 1366
    iget-boolean v7, v6, Linfo/flowersoft/theotown/city/objects/Car;->fadeIn:Z

    const/high16 v8, 0x437f0000    # 255.0f

    if-eqz v7, :cond_20d

    iget v7, v6, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    if-nez v7, :cond_20d

    .line 1367
    iget v6, v1, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_228

    .line 1368
    :cond_20d
    iget-boolean v7, v6, Linfo/flowersoft/theotown/city/objects/Car;->fadeOut:Z

    if-eqz v7, :cond_228

    iget v7, v6, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    iget-object v6, v6, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v6

    const/16 v17, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ne v7, v6, :cond_228

    .line 1369
    iget v6, v1, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    sub-float v6, p6, v6

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 1371
    :cond_228
    :goto_228
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v7, v10, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v7, v7, v3

    invoke-virtual {v2, v6, v5, v9, v7}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 1372
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1374
    iget-object v7, v10, Linfo/flowersoft/theotown/draft/CarDraft;->overlayFrames:[I

    if-eqz v7, :cond_251

    .line 1376
    iget-object v7, v10, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v7, :cond_245

    .line 1377
    iget v8, v1, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    aget-object v7, v7, v8

    .line 1378
    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1380
    :cond_245
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v8, v10, Linfo/flowersoft/theotown/draft/CarDraft;->overlayFrames:[I

    aget v8, v8, v4

    invoke-virtual {v2, v7, v5, v9, v8}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 1381
    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1384
    :cond_251
    iget-object v6, v10, Linfo/flowersoft/theotown/draft/CarDraft;->animationSpots:Ljava/util/List;

    if-eqz v6, :cond_34e

    const/16 v19, 0x2

    mul-int/lit8 v3, v3, 0x2

    .line 1387
    iget v7, v2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    div-int/lit16 v7, v7, 0xc8

    .line 1388
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getId()I

    move-result v8

    mul-int/lit16 v8, v8, 0xe07

    iget-object v11, v10, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v11

    add-int/2addr v8, v11

    .line 1389
    iget v11, v2, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    const v12, 0x3d4ccccd    # 0.05f

    add-float/2addr v11, v12

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    add-int/lit8 v8, v8, -0x5

    int-to-float v8, v8

    const/high16 v12, 0x42480000    # 50.0f

    div-float/2addr v8, v12

    add-float/2addr v11, v8

    rem-float v11, v11, p6

    mul-float v11, v11, v18

    sub-float v8, p6, v11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v8, p6, v8

    cmpg-float v8, v8, v21

    if-gez v8, :cond_28f

    const/4 v8, 0x1

    goto :goto_290

    :cond_28f
    const/4 v8, 0x0

    .line 1391
    :goto_290
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v11

    .line 1392
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v12

    .line 1393
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v13

    .line 1394
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v14

    move/from16 v16, v5

    const/4 v15, 0x0

    .line 1396
    :goto_2a3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_34b

    .line 1397
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/CarAnimationSpot;

    move-object/from16 v18, v6

    .line 1398
    iget-object v6, v5, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    move/from16 v19, v7

    .line 1400
    iget-boolean v7, v5, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->important:Z

    if-eqz v7, :cond_2c8

    iget-boolean v7, v1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-eqz v7, :cond_2be

    goto :goto_2c8

    :cond_2be
    move/from16 p1, v4

    move/from16 p3, v8

    const/16 v17, 0x1

    const/16 v20, 0x0

    goto/16 :goto_33d

    :cond_2c8
    :goto_2c8
    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->targetsFrame(I)Z

    move-result v7

    if-eqz v7, :cond_2be

    iget-boolean v7, v6, Linfo/flowersoft/theotown/draft/AnimationDraft;->lightSwitching:Z

    if-eqz v7, :cond_2d4

    if-eqz v8, :cond_2be

    .line 1401
    :cond_2d4
    iget-boolean v7, v2, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 1402
    iget-boolean v1, v6, Linfo/flowersoft/theotown/draft/AnimationDraft;->light:Z

    if-eqz v1, :cond_2dd

    const/4 v1, 0x0

    iput-boolean v1, v2, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 1403
    :cond_2dd
    iget-object v1, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    move/from16 p1, v4

    .line 1404
    array-length v4, v1

    rem-int v4, v19, v4

    .line 1406
    invoke-virtual {v0, v11, v12, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 1407
    invoke-virtual {v0, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move/from16 p2, v4

    .line 1409
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    move/from16 p3, v8

    iget-object v8, v5, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v0, v8}, Linfo/flowersoft/theotown/drawing/Drawing;->tintEngineColor(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1410
    iget-object v4, v6, Linfo/flowersoft/theotown/draft/AnimationDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v4, :cond_30c

    array-length v4, v4

    if-lez v4, :cond_30c

    .line 1411
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget-object v8, v6, Linfo/flowersoft/theotown/draft/AnimationDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    const/16 v20, 0x0

    aget-object v8, v8, v20

    invoke-virtual {v4, v0, v8}, Linfo/flowersoft/theotown/drawing/Drawing;->tintEngineColor(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_30e

    :cond_30c
    const/16 v20, 0x0

    .line 1413
    :goto_30e
    iget-boolean v4, v6, Linfo/flowersoft/theotown/draft/AnimationDraft;->rotationAware:Z

    if-eqz v4, :cond_31b

    .line 1414
    iget v4, v10, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    mul-int v4, v4, p2

    add-int v4, v4, v23

    .line 1415
    array-length v6, v1

    rem-int/2addr v4, v6

    goto :goto_31d

    :cond_31b
    move/from16 v4, p2

    .line 1417
    :goto_31d
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v8, v5, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->pos:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v8, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v8

    int-to-float v8, v8

    add-float v8, v16, v8

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/CarAnimationSpot;->pos:Lio/blueflower/stapel2d/util/IntList;

    move-object/from16 v21, v1

    const/16 v17, 0x1

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v5, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v9

    aget v4, v21, v4

    invoke-virtual {v2, v6, v8, v1, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 1419
    iput-boolean v7, v2, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    :goto_33d
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, p1

    move/from16 v8, p3

    move-object/from16 v1, p4

    move-object/from16 v6, v18

    move/from16 v7, v19

    goto/16 :goto_2a3

    .line 1423
    :cond_34b
    invoke-virtual {v0, v11, v12, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    :cond_34e
    const/16 v1, 0xff

    .line 1426
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_353
    :goto_353
    return-void
.end method

.method public driveTo(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;)V
    .registers 8

    const/4 v0, 0x1

    .line 964
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    const/4 v1, 0x0

    .line 965
    iput-boolean v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->fadeIn:Z

    .line 966
    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    if-eqz v2, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    .line 967
    :goto_d
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/16 v4, 0x100

    if-lt v3, v4, :cond_3b

    if-eqz v2, :cond_1a

    goto :goto_3b

    .line 1017
    :cond_1a
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    monitor-enter v3

    .line 1018
    :try_start_1d
    iput-boolean v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    .line 1019
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->foundNoWay(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 1020
    iget-boolean p2, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    if-nez p2, :cond_35

    .line 1021
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    goto :goto_37

    :catchall_33
    move-exception p1

    goto :goto_39

    .line 1023
    :cond_35
    iput-boolean v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    .line 1025
    :goto_37
    monitor-exit v3

    return-void

    :goto_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_33

    throw p1

    .line 968
    :cond_3b
    :goto_3b
    new-instance v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;Z)V

    .line 1008
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    monitor-enter p1

    if-eqz v2, :cond_4d

    .line 1010
    :try_start_45
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_52

    :catchall_4b
    move-exception p2

    goto :goto_59

    .line 1012
    :cond_4d
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1014
    :goto_52
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 1015
    monitor-exit p1

    return-void

    :goto_59
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_4b

    throw p2
.end method

.method public getBadRoad()Linfo/flowersoft/theotown/city/objects/Road;
    .registers 2

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->trafficAmountWorker:Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;->getBadRoad()Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    return-object v0
.end method

.method public getCarController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 229
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 230
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    .line 231
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

.method public final getCarMarker(III)Linfo/flowersoft/theotown/city/objects/Car;
    .registers 8

    .line 1438
    div-int/lit8 v0, p1, 0x2

    .line 1439
    div-int/lit8 v1, p2, 0x2

    .line 1440
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    if-ltz p1, :cond_26

    if-gez p2, :cond_12

    goto :goto_26

    .line 1441
    :cond_12
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v0, v1, p3}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    if-eqz p3, :cond_26

    .line 1442
    iget-object p3, p3, Linfo/flowersoft/theotown/city/objects/Road;->CarArray:[Linfo/flowersoft/theotown/city/objects/Car;

    rem-int/lit8 p1, p1, 0x2

    rem-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    aget-object p1, p3, p1

    return-object p1

    :cond_26
    :goto_26
    return-object v3
.end method

.method public getCars()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Car;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    return-object v0
.end method

.method public getCars(Linfo/flowersoft/theotown/city/objects/Road;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Car;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    .line 246
    iget-object v3, p1, Linfo/flowersoft/theotown/city/objects/Road;->CarArray:[Linfo/flowersoft/theotown/city/objects/Car;

    aget-object v3, v3, v2

    if-eqz v3, :cond_12

    .line 247
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-object v0
.end method

.method public final invalidateCar(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 4

    const/4 v0, 0x1

    .line 816
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    .line 817
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    :cond_f
    return-void
.end method

.method public final isDifferentTile(IIII)Z
    .registers 5

    .line 812
    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p3, p3, 0x2

    if-ne p1, p3, :cond_f

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p4, p4, 0x2

    if-eq p2, p4, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 156
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 157
    :goto_9
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_22

    .line 158
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    .line 159
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v1

    goto :goto_9

    .line 163
    :cond_22
    new-instance v4, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    const/4 v5, 0x0

    move-object v6, v5

    .line 165
    :goto_29
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_110

    .line 166
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 168
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    .line 169
    new-instance v9, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda3;

    invoke-direct {v9, v4}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda3;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    if-eqz v8, :cond_4c

    .line 174
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 175
    iget-object v7, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, p1, v7}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->load(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V

    .line 176
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_29

    .line 178
    :cond_4c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_112

    :goto_56
    move v7, v0

    goto :goto_78

    :sswitch_58
    const-string v8, "id counter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    goto :goto_56

    :cond_61
    const/4 v7, 0x2

    goto :goto_78

    :sswitch_63
    const-string v8, "controller mapping"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6c

    goto :goto_56

    :cond_6c
    move v7, v1

    goto :goto_78

    :sswitch_6e
    const-string v8, "cars"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_77

    goto :goto_56

    :cond_77
    move v7, v3

    :goto_78
    packed-switch v7, :pswitch_data_120

    .line 222
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_29

    .line 219
    :pswitch_7f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v7

    iput v7, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carIdCounter:I

    goto :goto_29

    .line 180
    :pswitch_86
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 181
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    new-array v7, v6, [Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    move v8, v3

    :goto_90
    if-ge v8, v6, :cond_a0

    .line 183
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    aput-object v9, v7, v8

    add-int/2addr v8, v1

    goto :goto_90

    .line 185
    :cond_a0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    move-object v6, v7

    goto :goto_29

    .line 188
    :pswitch_a5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 189
    :cond_a8
    :goto_a8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10b

    .line 190
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 191
    new-instance v7, Linfo/flowersoft/theotown/city/objects/Car;

    invoke-direct {v7, p1, v9}, Linfo/flowersoft/theotown/city/objects/Car;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/objects/Car$CarResolver;)V

    .line 192
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 194
    iget-object v8, v7, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz v8, :cond_a8

    .line 195
    iget-object v8, v7, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    if-eqz v8, :cond_f3

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v8

    if-lez v8, :cond_f3

    iget v8, v7, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    if-ltz v8, :cond_f3

    iget-object v10, v7, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v10

    if-ge v8, v10, :cond_f3

    iget-object v8, v7, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v8, v3}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v8

    if-eqz v8, :cond_f3

    .line 196
    iput-boolean v3, v7, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    if-eqz v6, :cond_fe

    .line 198
    iget v8, v7, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    if-ltz v8, :cond_f1

    array-length v10, v6

    if-ge v8, v10, :cond_f1

    aget-object v8, v6, v8

    if-eqz v8, :cond_f1

    .line 200
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getId()I

    move-result v8

    iput v8, v7, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    goto :goto_fe

    :cond_f1
    :goto_f1
    move-object v7, v5

    goto :goto_fe

    .line 206
    :cond_f3
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Car;->getParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v8

    if-eqz v8, :cond_f1

    iget v8, v7, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    if-eq v8, v0, :cond_fe

    goto :goto_f1

    :cond_fe
    :goto_fe
    if-eqz v7, :cond_a8

    .line 211
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Car;->getId()I

    move-result v8

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p0, v7}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->registerCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    goto :goto_a8

    .line 216
    :cond_10b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_29

    :cond_110
    return-void

    nop

    :sswitch_data_112
    .sparse-switch
        0x2e7b1f -> :sswitch_6e
        0x46b0bc4a -> :sswitch_63
        0x5217b3f7 -> :sswitch_58
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_86
        :pswitch_7f
    .end packed-switch
.end method

.method public final onSpawnCar(Linfo/flowersoft/theotown/city/objects/Car;)Z
    .registers 4

    .line 1588
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    .line 1589
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->onSpawn(Linfo/flowersoft/theotown/city/objects/Car;)Z

    move-result p1

    return p1
.end method

.method public prepare()V
    .registers 7

    .line 299
    new-instance v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$2;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$2;-><init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)V

    const/4 v1, 0x0

    move v2, v1

    .line 311
    :goto_7
    sget v3, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->NUMBER_OF_PATHFINDING_THREADS:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_30

    .line 312
    new-instance v3, Linfo/flowersoft/theotown/components/traffic/PathfindingThread;

    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, v5, v0}, Linfo/flowersoft/theotown/components/traffic/PathfindingThread;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;)V

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pathfinding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 318
    :cond_30
    new-instance v0, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->trafficAmountWorker:Linfo/flowersoft/theotown/components/traffic/TrafficAmountWorker;

    .line 319
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->addDailyWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    .line 321
    new-instance v0, Lio/blueflower/stapel2d/util/CyclicWorker;

    new-instance v2, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)V

    invoke-direct {v0, v2}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->addDailyWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    .line 330
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 331
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultWeather;

    .line 332
    new-instance v3, Lio/blueflower/stapel2d/util/CyclicWorker;

    new-instance v4, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0, v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/components/DefaultDate;Linfo/flowersoft/theotown/components/DefaultWeather;)V

    invoke-direct {v3, v4}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Ljava/lang/Runnable;)V

    .line 354
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    .line 356
    :goto_68
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_80

    .line 357
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    .line 358
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->prepare(Linfo/flowersoft/theotown/city/City;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_80
    return-void
.end method

.method public final registerCar(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 9

    .line 1446
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    if-ltz v0, :cond_d

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_13

    .line 1449
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->register(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 1451
    :cond_13
    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iget v6, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    const/4 v2, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V

    .line 1452
    iget-object p1, v1, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1454
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    :goto_28
    if-eqz p1, :cond_3f

    .line 1456
    iget-object v0, v1, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_35

    .line 1457
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->removeCarByIndex(I)V

    .line 1458
    :cond_35
    iget-object v0, v1, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    goto :goto_28

    :cond_3f
    return-void
.end method

.method public final removeCarByIndex(I)V
    .registers 5

    if-gez p1, :cond_3

    return-void

    .line 494
    :cond_3
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_13

    .line 497
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    .line 501
    :cond_13
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Car;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeTail(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 3

    .line 1577
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    if-eqz p1, :cond_14

    const/4 v0, 0x0

    .line 1579
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Car;->setParent(Linfo/flowersoft/theotown/city/objects/Car;)V

    :goto_a
    if-eqz p1, :cond_14

    const/4 v0, 0x1

    .line 1581
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    .line 1582
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    goto :goto_a

    :cond_14
    return-void
.end method

.method public removeTailCar(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 5

    .line 1562
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1564
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 1566
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/Car;->setParent(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 1568
    :cond_10
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/objects/Car;->setParent(Linfo/flowersoft/theotown/city/objects/Car;)V

    if-eqz v1, :cond_18

    .line 1570
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/objects/Car;->setParent(Linfo/flowersoft/theotown/city/objects/Car;)V

    :cond_18
    const/4 v0, 0x1

    .line 1572
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    :cond_1b
    return-void
.end method

.method public reset()V
    .registers 4

    .line 1627
    invoke-super {p0}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->reset()V

    .line 1628
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    monitor-enter v0

    .line 1629
    :try_start_6
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Car;

    .line 1630
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->unregisterCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    goto :goto_c

    :catchall_1c
    move-exception v1

    goto :goto_25

    .line 1632
    :cond_1e
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1633
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_1c

    throw v1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    monitor-enter v0

    .line 260
    :try_start_3
    const-string v1, "controller mapping"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 261
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 262
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 263
    :goto_16
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 264
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :catchall_30
    move-exception p1

    goto :goto_96

    .line 266
    :cond_32
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 269
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    new-instance v3, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$1;-><init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    const-string v2, "cars"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 277
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 278
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Car;

    .line 279
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 280
    invoke-virtual {v3, p1}, Linfo/flowersoft/theotown/city/objects/Car;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 281
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_4d

    .line 283
    :cond_63
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 285
    :goto_66
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_89

    .line 286
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    .line 287
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 288
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 289
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 290
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 293
    :cond_89
    const-string v1, "id counter"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carIdCounter:I

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 294
    monitor-exit v0

    return-void

    :goto_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_3 .. :try_end_97} :catchall_30

    throw p1
.end method

.method public final setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V
    .registers 8

    .line 1430
    div-int/lit8 p1, p2, 0x2

    .line 1431
    div-int/lit8 v0, p3, 0x2

    .line 1432
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, v0}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_24

    if-ltz p2, :cond_24

    if-gez p3, :cond_11

    goto :goto_24

    .line 1433
    :cond_11
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, v0, p5}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1434
    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->CarArray:[Linfo/flowersoft/theotown/city/objects/Car;

    rem-int/lit8 p2, p2, 0x2

    rem-int/lit8 p3, p3, 0x2

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    aput-object p4, p1, p2

    :cond_24
    :goto_24
    return-void
.end method

.method public spawn(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;Linfo/flowersoft/theotown/draft/CarDraft;IJI)V
    .registers 20

    .line 932
    invoke-virtual {p3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getId()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    move v5, v0

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    .line 933
    :goto_b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v2, 0x100

    if-lt v0, v2, :cond_19

    if-eqz v5, :cond_18

    goto :goto_19

    :cond_18
    return-void

    .line 934
    :cond_19
    :goto_19
    new-instance v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v6, p3

    move-object v2, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;ZLinfo/flowersoft/theotown/components/traffic/carcontroller/CarController;IJI)V

    .line 951
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    monitor-enter v2

    if-eqz v5, :cond_36

    .line 953
    :try_start_2e
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_3b

    :catchall_34
    move-exception v0

    goto :goto_42

    .line 955
    :cond_36
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 957
    :goto_3b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->pathfindingTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 958
    monitor-exit v2

    return-void

    :goto_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_34

    throw v0
.end method

.method public spawn(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;Linfo/flowersoft/theotown/draft/CarDraft;JI)V
    .registers 17

    .line 925
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v1, p4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    iget v2, p4, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v6, p5

    move/from16 v8, p7

    .line 926
    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->spawn(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;Linfo/flowersoft/theotown/draft/CarDraft;IJI)V

    return-void
.end method

.method public spawn(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;Linfo/flowersoft/theotown/draft/CarDraft;IJLinfo/flowersoft/theotown/city/objects/Way;I)V
    .registers 16

    move-object v0, p0

    move-object v3, p1

    move-object v2, p2

    move v4, p3

    move-wide v5, p4

    move-object v1, p6

    move v7, p7

    .line 920
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->spawnCar(Linfo/flowersoft/theotown/city/objects/Way;Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;IJI)Z

    return-void
.end method

.method public final spawnCar(Linfo/flowersoft/theotown/city/objects/Way;Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;IJI)Z
    .registers 17

    .line 1507
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_45

    .line 1508
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    monitor-enter v2

    .line 1509
    :try_start_a
    new-instance v3, Linfo/flowersoft/theotown/city/objects/Car;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getId()I

    move-result v7

    iget v8, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carIdCounter:I

    add-int/lit8 p3, v8, 0x1

    iput p3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carIdCounter:I

    move-object v5, p1

    move-object v4, p2

    move v6, p4

    invoke-direct/range {v3 .. v8}, Linfo/flowersoft/theotown/city/objects/Car;-><init>(Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/objects/Way;III)V

    .line 1510
    iput-wide p5, v3, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    move/from16 p1, p7

    .line 1511
    iput p1, v3, Linfo/flowersoft/theotown/city/objects/Car;->wealthLevel:I

    .line 1512
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->onSpawnCar(Linfo/flowersoft/theotown/city/objects/Car;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 1513
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    iget p3, v3, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->foundWay(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 1514
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->registerCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 1516
    invoke-virtual {p0, p2, v3, p4}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->buildTail(Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/objects/Car;I)V

    .line 1518
    monitor-exit v2

    return v1

    :catchall_3d
    move-exception v0

    move-object p1, v0

    goto :goto_43

    :cond_40
    const/4 p1, 0x0

    .line 1520
    monitor-exit v2

    return p1

    .line 1522
    :goto_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_3d

    throw p1

    :cond_45
    return v1
.end method

.method public final tryToOverrun(Linfo/flowersoft/theotown/city/objects/Car;ILinfo/flowersoft/theotown/city/objects/Road;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 828
    iget-object v4, v1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    .line 829
    iget v5, v1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    .line 831
    iget-object v6, v3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v6, v6, Linfo/flowersoft/theotown/draft/RoadDraft;->overrunnable:Z

    const/4 v7, 0x0

    if-nez v6, :cond_14

    return v7

    .line 832
    :cond_14
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v6

    const/4 v8, 0x3

    sub-int/2addr v6, v8

    if-ge v5, v6, :cond_1f

    const/4 v6, 0x1

    if-ge v5, v6, :cond_23

    :cond_1f
    move/from16 v16, v7

    goto/16 :goto_13e

    :cond_23
    if-nez v2, :cond_26

    return v7

    .line 834
    :cond_26
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    const v10, 0x3f666666    # 0.9f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_34

    return v7

    .line 836
    :cond_34
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v9

    .line 837
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v10

    .line 838
    iget v11, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    .line 839
    iget v12, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    .line 840
    rem-int/lit8 v13, v11, 0x2

    .line 841
    rem-int/lit8 v14, v12, 0x2

    sub-int/2addr v11, v13

    sub-int/2addr v12, v14

    if-eqz v9, :cond_50

    add-int/lit8 v15, v14, 0x1

    .line 847
    rem-int/lit8 v15, v15, 0x2

    move/from16 v16, v15

    move v15, v13

    goto :goto_56

    :cond_50
    add-int/lit8 v15, v13, 0x1

    .line 849
    rem-int/lit8 v15, v15, 0x2

    move/from16 v16, v14

    :goto_56
    add-int/2addr v11, v15

    add-int v12, v12, v16

    sub-int/2addr v15, v13

    sub-int v13, v16, v14

    .line 855
    invoke-static {v15, v13}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v13

    .line 858
    invoke-static {v13}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v14

    .line 860
    rem-int/lit8 v15, v11, 0x2

    move/from16 v16, v7

    rem-int/lit8 v7, v12, 0x2

    invoke-virtual {v3, v15, v7}, Linfo/flowersoft/theotown/city/objects/Road;->getDirs(II)I

    move-result v3

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v3

    if-nez v3, :cond_75

    return v16

    :cond_75
    move/from16 v3, v16

    :goto_77
    if-ge v3, v8, :cond_8c

    mul-int v7, v3, v9

    add-int/2addr v7, v11

    mul-int v15, v3, v10

    add-int/2addr v15, v12

    .line 863
    iget v8, v1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    invoke-virtual {v0, v7, v15, v8}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCarMarker(III)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v7

    if-eqz v7, :cond_88

    return v16

    :cond_88
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x3

    goto :goto_77

    .line 866
    :cond_8c
    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    .line 867
    iget v7, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    add-int v8, v11, v9

    add-int v15, v12, v10

    move/from16 v17, v16

    move/from16 v18, v17

    :goto_98
    add-int v6, v5, v17

    move/from16 p3, v3

    .line 872
    iget-object v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v3

    if-ge v6, v3, :cond_107

    iget-object v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    .line 873
    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v3

    if-ne v3, v2, :cond_107

    .line 874
    iget-object v3, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    div-int/lit8 v6, v8, 0x2

    move/from16 v20, v5

    div-int/lit8 v5, v15, 0x2

    invoke-virtual {v3, v6, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-nez v3, :cond_bb

    goto :goto_103

    .line 876
    :cond_bb
    iget-object v3, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    move/from16 v21, v7

    iget v7, v1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    invoke-virtual {v3, v6, v5, v7}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-nez v3, :cond_c8

    goto :goto_103

    .line 880
    :cond_c8
    rem-int/lit8 v5, v8, 0x2

    rem-int/lit8 v6, v15, 0x2

    invoke-virtual {v3, v5, v6}, Linfo/flowersoft/theotown/city/objects/Road;->getDirs(II)I

    move-result v3

    .line 883
    invoke-static {v14, v3}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v5

    if-eqz v5, :cond_d8

    move/from16 v18, v17

    .line 886
    :cond_d8
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v3

    if-nez v3, :cond_df

    goto :goto_103

    :cond_df
    add-int/lit8 v17, v17, 0x1

    add-int v3, p3, v9

    add-int v7, v21, v10

    add-int/2addr v8, v9

    add-int/2addr v15, v10

    if-ltz v3, :cond_103

    if-ltz v7, :cond_103

    .line 893
    iget-object v5, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_103

    iget-object v5, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-lt v7, v5, :cond_100

    goto :goto_103

    :cond_100
    move/from16 v5, v20

    goto :goto_98

    :cond_103
    :goto_103
    move/from16 v3, v18

    const/4 v5, 0x1

    goto :goto_10a

    :cond_107
    move/from16 v20, v5

    goto :goto_103

    :goto_10a
    if-ge v3, v5, :cond_10d

    return v16

    .line 899
    :cond_10d
    iput v11, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    .line 900
    iput v12, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    .line 901
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v5

    add-int v3, v20, v3

    add-int/lit8 v6, v3, 0x1

    if-le v5, v6, :cond_12d

    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v5

    if-ne v5, v13, :cond_12d

    .line 902
    invoke-virtual {v4, v6, v2}, Linfo/flowersoft/theotown/city/objects/Way;->setDir(II)V

    .line 903
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    const/16 v19, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    goto :goto_13d

    :cond_12d
    const/16 v19, 0x1

    .line 905
    invoke-virtual {v4, v3, v14}, Linfo/flowersoft/theotown/city/objects/Way;->setDir(II)V

    add-int/lit8 v5, v20, -0x1

    .line 906
    invoke-virtual {v4, v5, v2}, Linfo/flowersoft/theotown/city/objects/Way;->setDir(II)V

    .line 907
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    :goto_13d
    return v19

    :goto_13e
    return v16
.end method

.method public final unregisterCar(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 9

    .line 1471
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCarMarker(III)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    if-ne v0, p1, :cond_19

    .line 1473
    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    const/4 v5, 0x0

    iget v6, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V

    goto :goto_1b

    :cond_19
    move-object v1, p0

    move-object v2, p1

    :goto_1b
    const/4 p1, 0x1

    .line 1475
    iput-boolean p1, v2, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    .line 1477
    iget p1, v2, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    if-ltz p1, :cond_2b

    iget-object v0, v1, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    if-eqz p1, :cond_31

    .line 1479
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->unregister(Linfo/flowersoft/theotown/city/objects/Car;)V

    :cond_31
    return-void
.end method

.method public final unregisterCarFromList(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 3

    const/4 v0, 0x1

    .line 1464
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    return-void
.end method

.method public final updateAutonomousCar(Linfo/flowersoft/theotown/city/objects/Car;ILinfo/flowersoft/theotown/city/objects/Road;IFI)Z
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    .line 536
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_17

    .line 537
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v5

    move-object v8, v5

    goto :goto_18

    :cond_17
    move-object v8, v7

    .line 540
    :goto_18
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getFlags()J

    move-result-wide v5

    iget-object v9, v0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-wide v10, v9, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    and-long/2addr v5, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v5, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v5, :cond_2c

    .line 541
    iput-boolean v11, v0, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    return v10

    :cond_2c
    rsub-int/lit8 v5, v3, 0x1

    .line 548
    iget-object v6, v2, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    int-to-float v5, v5

    .line 549
    iget v12, v6, Linfo/flowersoft/theotown/draft/RoadDraft;->speed:F

    mul-float/2addr v5, v12

    int-to-float v3, v3

    iget v12, v6, Linfo/flowersoft/theotown/draft/RoadDraft;->speedWinter:F

    mul-float/2addr v3, v12

    add-float/2addr v5, v3

    iget v3, v9, Linfo/flowersoft/theotown/draft/CarDraft;->speed:F

    mul-float/2addr v5, v3

    .line 550
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->speed:F

    mul-float v3, v3, p5

    mul-float/2addr v5, v3

    .line 551
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    const v9, 0x3727c5ac    # 1.0E-5f

    cmpg-float v3, v3, v9

    if-gez v3, :cond_4d

    iget v3, v6, Linfo/flowersoft/theotown/draft/RoadDraft;->enterSpeed:F

    mul-float/2addr v5, v3

    .line 552
    :cond_4d
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v3

    const/4 v12, 0x2

    if-eqz v3, :cond_85

    .line 554
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupationSpeed()F

    move-result v3

    mul-float/2addr v5, v3

    .line 555
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupationRemoveFlags()I

    move-result v3

    .line 556
    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->flags:I

    and-int/2addr v6, v3

    if-nez v6, :cond_70

    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_85

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v13, 0x3e8

    .line 557
    invoke-virtual {v6, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-ge v6, v11, :cond_85

    .line 558
    :cond_70
    invoke-virtual {v2, v7}, Linfo/flowersoft/theotown/city/objects/Road;->setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    and-int/2addr v3, v12

    if-eqz v3, :cond_85

    .line 559
    iget-object v3, v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 560
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v6, "swat_send"

    invoke-interface {v3, v6}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 564
    :cond_85
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->flags:I

    and-int/lit8 v3, v3, 0x20

    const/4 v13, 0x3

    if-eqz v3, :cond_97

    .line 565
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getSnow()I

    move-result v3

    add-int/lit8 v6, v4, 0x3

    div-int/2addr v6, v13

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Road;->setSnow(I)V

    .line 569
    :cond_97
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v3

    sub-int/2addr v3, v11

    :goto_9c
    if-ltz v3, :cond_104

    .line 570
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v6

    if-eqz v6, :cond_fa

    .line 572
    iget v14, v6, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->speed:F

    mul-float/2addr v5, v14

    .line 573
    iget v14, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    cmpg-float v14, v14, v9

    if-gez v14, :cond_b0

    iget v14, v6, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->enterSpeed:F

    mul-float/2addr v5, v14

    .line 575
    :cond_b0
    iget v14, v0, Linfo/flowersoft/theotown/city/objects/Car;->flags:I

    and-int/lit8 v14, v14, 0x8

    if-eqz v14, :cond_fa

    const-string v14, "car accident"

    .line 576
    invoke-virtual {v6, v14}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_fa

    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v15, 0xa

    .line 577
    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    if-ge v14, v11, :cond_fa

    .line 578
    iget-object v14, v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v14

    .line 579
    :try_start_cb
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v15
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_f6

    if-ne v15, v6, :cond_ef

    move-object v6, v14

    .line 580
    :try_start_d2
    new-instance v14, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v15, v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v14, v15, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iget v15, v2, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iget v7, v2, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    move/from16 p4, v9

    iget v9, v2, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/16 v19, 0x0

    move/from16 v18, v3

    move/from16 v16, v7

    move/from16 v17, v9

    invoke-virtual/range {v14 .. v19}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeRoadDecoration(IIIILvm2/LuaValue;)V

    goto :goto_f4

    :catchall_ed
    move-exception v0

    goto :goto_f8

    :cond_ef
    move/from16 v18, v3

    move/from16 p4, v9

    move-object v6, v14

    .line 582
    :goto_f4
    monitor-exit v6

    goto :goto_fe

    :catchall_f6
    move-exception v0

    move-object v6, v14

    :goto_f8
    monitor-exit v6
    :try_end_f9
    .catchall {:try_start_d2 .. :try_end_f9} :catchall_ed

    throw v0

    :cond_fa
    move/from16 v18, v3

    move/from16 p4, v9

    :goto_fe
    add-int/lit8 v3, v18, -0x1

    move/from16 v9, p4

    const/4 v7, 0x0

    goto :goto_9c

    :cond_104
    move/from16 p4, v9

    if-eqz v8, :cond_114

    .line 588
    iget v3, v8, Linfo/flowersoft/theotown/draft/BusStopDraft;->speed:F

    mul-float/2addr v5, v3

    .line 589
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    cmpg-float v3, v3, p4

    if-gez v3, :cond_114

    iget v3, v8, Linfo/flowersoft/theotown/draft/BusStopDraft;->enterSpeed:F

    mul-float/2addr v5, v3

    .line 592
    :cond_114
    iget-boolean v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-eqz v3, :cond_11b

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v5, v3

    .line 594
    :cond_11b
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v3, :cond_134

    iget-boolean v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    if-nez v3, :cond_134

    .line 595
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastSpeed:F

    int-to-float v6, v4

    const/high16 v9, 0x41a00000    # 20.0f

    div-float/2addr v6, v9

    add-float/2addr v3, v6

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :cond_134
    int-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    mul-float/2addr v5, v3

    const v9, 0x3f666666    # 0.9f

    .line 598
    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move v4, v10

    :goto_141
    const v14, 0x3a83126f    # 0.001f

    cmpl-float v5, v3, v14

    if-lez v5, :cond_4ea

    .line 602
    iget v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    iget-object v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    .line 603
    iget-object v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v6, v5}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v5

    .line 604
    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v15

    add-int/2addr v6, v15

    .line 605
    iget v15, v0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v16

    add-int v15, v15, v16

    move/from16 p4, v7

    shr-int/lit8 v7, v6, 0x1

    .line 606
    iget v10, v0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    shr-int/2addr v10, v11

    if-ne v7, v10, :cond_17f

    shr-int/lit8 v7, v15, 0x1

    iget v10, v0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    shr-int/2addr v10, v11

    if-eq v7, v10, :cond_17d

    goto :goto_17f

    :cond_17d
    const/4 v7, 0x0

    goto :goto_180

    :cond_17f
    :goto_17f
    move v7, v11

    .line 607
    :goto_180
    iget v10, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    .line 608
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getFrame()I

    move-result v17

    mul-int/lit8 v17, v17, 0x4

    move/from16 p3, v14

    iget v14, v0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    and-int/2addr v14, v11

    add-int v17, v17, v14

    iget v14, v0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    and-int/2addr v14, v11

    mul-int/2addr v14, v12

    add-int v17, v17, v14

    if-eqz v7, :cond_19c

    .line 611
    iget-object v14, v2, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v14, v14, Linfo/flowersoft/theotown/draft/RoadDraft;->exitSpeed:F

    mul-float/2addr v3, v14

    .line 614
    :cond_19c
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v14

    sub-int/2addr v14, v11

    :goto_1a1
    if-ltz v14, :cond_1c0

    move/from16 p5, v12

    .line 615
    invoke-virtual {v2, v14}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v12

    if-eqz v12, :cond_1ba

    if-eqz v7, :cond_1b0

    .line 617
    iget v11, v12, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->exitSpeed:F

    mul-float/2addr v3, v11

    .line 618
    :cond_1b0
    iget-object v11, v12, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->parcelSpeeds:[F

    if-eqz v11, :cond_1ba

    .line 619
    array-length v12, v11

    rem-int v12, v17, v12

    aget v11, v11, v12

    mul-float/2addr v3, v11

    :cond_1ba
    add-int/lit8 v14, v14, -0x1

    move/from16 v12, p5

    const/4 v11, 0x1

    goto :goto_1a1

    :cond_1c0
    move/from16 p5, v12

    if-eqz v8, :cond_1d3

    if-eqz v7, :cond_1c9

    .line 625
    iget v11, v8, Linfo/flowersoft/theotown/draft/BusStopDraft;->exitSpeed:F

    mul-float/2addr v3, v11

    .line 626
    :cond_1c9
    iget-object v11, v8, Linfo/flowersoft/theotown/draft/BusStopDraft;->parcelSpeeds:[F

    if-eqz v11, :cond_1d3

    .line 627
    array-length v12, v11

    rem-int v12, v17, v12

    aget v11, v11, v12

    mul-float/2addr v3, v11

    .line 631
    :cond_1d3
    iget-object v11, v2, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v11, v11, Linfo/flowersoft/theotown/draft/RoadDraft;->parcelSpeeds:[F

    if-eqz v11, :cond_1df

    .line 632
    array-length v12, v11

    rem-int v17, v17, v12

    aget v11, v11, v17

    mul-float/2addr v3, v11

    .line 635
    :cond_1df
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v11

    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v11

    if-lt v11, v13, :cond_1f8

    .line 636
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->hasTrafficLights()Z

    move-result v11

    if-eqz v11, :cond_1f4

    const v11, 0x3f8ccccd    # 1.1f

    :goto_1f2
    mul-float/2addr v3, v11

    goto :goto_1f8

    :cond_1f4
    const v11, 0x3f4ccccd    # 0.8f

    goto :goto_1f2

    .line 644
    :cond_1f8
    :goto_1f8
    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    sub-float/2addr v3, v11

    .line 646
    iget v12, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    add-float/2addr v12, v11

    iput v12, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    .line 648
    iget v11, v0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    rem-int/lit8 v11, v11, 0x2

    iget v12, v0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    rem-int/lit8 v12, v12, 0x2

    invoke-virtual {v2, v11, v12}, Linfo/flowersoft/theotown/city/objects/Road;->getDirs(II)I

    move-result v11

    invoke-static {v5, v11}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v11

    if-nez v11, :cond_218

    const/4 v11, 0x1

    .line 649
    iput-boolean v11, v0, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    return v4

    .line 653
    :cond_218
    iget v11, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    const/4 v14, 0x0

    if-ltz v11, :cond_304

    .line 654
    iget-boolean v11, v0, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    if-nez v11, :cond_304

    iget-object v11, v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    move/from16 p6, v9

    div-int/lit8 v9, v6, 0x2

    move/from16 v17, v12

    div-int/lit8 v12, v15, 0x2

    invoke-virtual {v11, v9, v12}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v11

    if-eqz v11, :cond_301

    .line 655
    iget v10, v0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    .line 656
    iget v11, v2, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    if-ne v9, v11, :cond_242

    iget v11, v2, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    if-eq v12, v11, :cond_240

    goto :goto_242

    :cond_240
    const/4 v11, 0x0

    goto :goto_243

    :cond_242
    :goto_242
    const/4 v11, 0x1

    .line 658
    :goto_243
    iget v13, v2, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-ne v13, v5, :cond_24b

    if-eqz v11, :cond_24b

    add-int/lit8 v10, v10, 0x1

    :cond_24b
    if-eqz v11, :cond_273

    .line 663
    iget-object v2, v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v9, v12, v10}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-eqz v2, :cond_25d

    .line 664
    iget v11, v2, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v11, :cond_273

    iget v13, v0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    if-eq v11, v13, :cond_273

    .line 665
    :cond_25d
    iget-object v2, v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v11, v10, -0x1

    invoke-virtual {v2, v9, v12, v11}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-eqz v2, :cond_272

    .line 666
    iget v9, v2, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v5

    if-ne v9, v5, :cond_272

    add-int/lit8 v10, v10, -0x1

    goto :goto_273

    :cond_272
    const/4 v2, 0x0

    .line 674
    :cond_273
    :goto_273
    iget v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    iget-object v9, v0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    if-lt v5, v9, :cond_292

    .line 675
    iget-object v2, v1, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carControllers:Ljava/util/List;

    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    invoke-virtual {v2, v0, v6, v15, v10}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->onTarget(Linfo/flowersoft/theotown/city/objects/Car;III)Z

    move-result v2

    if-eqz v2, :cond_4ea

    .line 676
    iput-boolean v11, v0, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    return v4

    .line 681
    :cond_292
    iget v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iput v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastX:I

    .line 682
    iget v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iput v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastY:I

    .line 683
    iget v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    iput v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    .line 684
    iget v9, v0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    iput v9, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    if-nez v5, :cond_2a7

    .line 687
    iput v14, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastSpeed:F

    move v3, v14

    .line 691
    :cond_2a7
    iget v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    const/16 v18, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    .line 692
    iget v9, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    sub-float v9, v9, v17

    iput v9, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    .line 693
    iput v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    .line 694
    iput v15, v0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    .line 695
    iput v10, v0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    .line 698
    iget-object v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v6, v5}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v5

    .line 699
    iput v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    if-nez v2, :cond_2c9

    const/4 v11, 0x1

    .line 701
    iput-boolean v11, v0, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    return v4

    :cond_2c9
    const/4 v11, 0x1

    if-eqz v7, :cond_300

    .line 704
    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    iget-object v7, v2, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v7, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->enterSpeed:F

    mul-float/2addr v6, v7

    iput v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    .line 705
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v6

    sub-int/2addr v6, v11

    :goto_2da
    if-ltz v6, :cond_2ec

    .line 706
    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v7

    if-eqz v7, :cond_2e9

    .line 707
    iget v9, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    iget v7, v7, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->enterSpeed:F

    mul-float/2addr v9, v7

    iput v9, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    :cond_2e9
    add-int/lit8 v6, v6, -0x1

    goto :goto_2da

    .line 709
    :cond_2ec
    iget v6, v2, Linfo/flowersoft/theotown/city/objects/Road;->carCounter:I

    const/16 v18, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Linfo/flowersoft/theotown/city/objects/Road;->carCounter:I

    .line 710
    iget-object v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-boolean v6, v6, Linfo/flowersoft/theotown/draft/CarDraft;->chargeable:Z

    if-eqz v6, :cond_300

    iget v6, v2, Linfo/flowersoft/theotown/city/objects/Road;->chargeableCarCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Linfo/flowersoft/theotown/city/objects/Road;->chargeableCarCounter:I

    :cond_300
    move v10, v14

    :cond_301
    :goto_301
    move-object v7, v2

    move v9, v3

    goto :goto_307

    :cond_304
    move/from16 p6, v9

    goto :goto_301

    .line 715
    :goto_307
    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 716
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 717
    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    .line 719
    iget v11, v0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v12, v0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    invoke-virtual {v1, v11, v12, v6}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCarMarker(III)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v11

    if-eq v11, v0, :cond_32d

    if-eqz v11, :cond_32e

    .line 721
    iget-boolean v12, v11, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-nez v12, :cond_32d

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v12

    if-ne v12, v0, :cond_32e

    :cond_32d
    const/4 v11, 0x0

    :cond_32e
    if-nez v11, :cond_386

    .line 726
    invoke-virtual {v1, v2, v3, v6}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCarMarker(III)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v11

    if-nez v11, :cond_373

    if-ltz v2, :cond_373

    if-ltz v3, :cond_373

    .line 728
    iget-object v12, v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    div-int/lit8 v13, v2, 0x2

    div-int/lit8 v15, v3, 0x2

    invoke-virtual {v12, v13, v15}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v12

    if-eqz v12, :cond_373

    iget v12, v0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v14, v0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    invoke-virtual {v1, v12, v14, v2, v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->isDifferentTile(IIII)Z

    move-result v12

    if-eqz v12, :cond_373

    .line 729
    iget v12, v7, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-ne v12, v5, :cond_35d

    if-eqz v5, :cond_35d

    add-int/lit8 v11, v6, 0x1

    .line 730
    invoke-virtual {v1, v2, v3, v11}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCarMarker(III)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v11

    goto :goto_373

    .line 732
    :cond_35d
    iget-object v12, v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v12, v13, v15, v14}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v12

    if-eqz v12, :cond_373

    .line 733
    iget v12, v12, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v13

    if-ne v12, v13, :cond_373

    .line 734
    invoke-virtual {v1, v2, v3, v14}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCarMarker(III)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v11

    :cond_373
    :goto_373
    if-eq v11, v0, :cond_384

    if-eqz v11, :cond_382

    .line 738
    iget-boolean v12, v11, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-nez v12, :cond_384

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v12

    if-ne v12, v0, :cond_382

    goto :goto_384

    :cond_382
    :goto_382
    const/4 v12, 0x1

    goto :goto_387

    :cond_384
    :goto_384
    const/4 v11, 0x0

    goto :goto_382

    :cond_386
    const/4 v12, 0x0

    :goto_387
    if-nez v11, :cond_3c0

    .line 744
    iget-object v11, v0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v11

    iget v12, v0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    add-int/lit8 v13, v12, 0x1

    if-le v11, v13, :cond_39d

    .line 745
    iget-object v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v5, v12}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v5

    .line 747
    :cond_39d
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v11

    add-int/2addr v2, v11

    .line 748
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v11

    add-int/2addr v3, v11

    .line 749
    invoke-virtual {v1, v2, v3, v6}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCarMarker(III)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v11

    if-eq v11, v0, :cond_3bd

    if-eqz v11, :cond_3ba

    .line 751
    iget-boolean v2, v11, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-nez v2, :cond_3bd

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v2

    if-ne v2, v0, :cond_3ba

    goto :goto_3bd

    :cond_3ba
    move/from16 v12, p5

    goto :goto_3c0

    :cond_3bd
    :goto_3bd
    move/from16 v12, p5

    const/4 v11, 0x0

    :cond_3c0
    :goto_3c0
    if-eqz v11, :cond_3e0

    .line 757
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v2

    if-eqz v2, :cond_3d1

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Car;->getId()I

    move-result v2

    goto :goto_3d5

    :cond_3d1
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Car;->getId()I

    move-result v2

    .line 758
    :goto_3d5
    iget-boolean v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-eqz v3, :cond_3e5

    iget-boolean v3, v11, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-nez v3, :cond_3e5

    .line 759
    invoke-virtual {v1, v11}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->invalidateCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    :cond_3e0
    :goto_3e0
    move/from16 v13, p5

    const/4 v14, 0x1

    goto/16 :goto_4b1

    .line 761
    :cond_3e5
    iget v3, v11, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    if-eq v3, v5, :cond_45b

    if-nez v3, :cond_3ec

    goto :goto_45b

    .line 772
    :cond_3ec
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v3

    if-ne v3, v5, :cond_401

    .line 774
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Car;->getParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v3

    if-nez v3, :cond_3e0

    .line 776
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Car;->getId()I

    move-result v3

    if-le v2, v3, :cond_3e0

    .line 779
    iput v10, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    goto :goto_3e0

    .line 783
    :cond_401
    iget-object v2, v0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v2

    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    add-int/lit8 v6, v3, 0x1

    if-le v2, v6, :cond_437

    iget-object v2, v0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v2

    iget v3, v11, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    if-ne v2, v3, :cond_437

    int-to-float v2, v12

    .line 785
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/CarDraft;->length:F

    mul-float v3, v3, p4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 786
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    sub-float/2addr v3, v10

    mul-float v3, v3, p6

    add-float/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    goto :goto_3e0

    .line 789
    :cond_437
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Car;->getParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v2

    if-nez v2, :cond_3e0

    int-to-float v2, v12

    .line 791
    iget-object v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/CarDraft;->length:F

    mul-float v3, v3, p4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 792
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    sub-float/2addr v3, v10

    mul-float v3, v3, p6

    add-float/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    goto :goto_3e0

    .line 763
    :cond_45b
    :goto_45b
    invoke-virtual {v1, v0, v5, v7}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->tryToOverrun(Linfo/flowersoft/theotown/city/objects/Car;ILinfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v2

    if-eqz v2, :cond_467

    move/from16 v13, p5

    const/4 v14, 0x1

    const/16 v18, 0x1

    goto :goto_4b3

    .line 767
    :cond_467
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Car;->getParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v2

    if-nez v2, :cond_483

    iget-object v2, v11, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v2

    move/from16 v13, p5

    if-ne v2, v13, :cond_481

    iget-object v2, v11, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v2

    if-eqz v2, :cond_48a

    goto :goto_486

    :cond_481
    :goto_481
    const/4 v14, 0x1

    goto :goto_486

    :cond_483
    move/from16 v13, p5

    goto :goto_481

    :goto_486
    iget-boolean v2, v11, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    if-eqz v2, :cond_48c

    :cond_48a
    const/4 v3, 0x0

    goto :goto_48e

    :cond_48c
    iget v3, v11, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    :goto_48e
    int-to-float v2, v12

    add-float/2addr v3, v2

    .line 768
    iget-object v2, v11, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/CarDraft;->length:F

    iget-object v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget v6, v6, Linfo/flowersoft/theotown/draft/CarDraft;->length:F

    add-float/2addr v2, v6

    mul-float v2, v2, p4

    sub-float/2addr v3, v2

    const/4 v2, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 769
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    sub-float/2addr v3, v10

    mul-float v3, v3, p6

    add-float/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    :goto_4b1
    move/from16 v18, v4

    .line 798
    :goto_4b3
    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iget v6, v0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    move v4, v5

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->canDrive(IIIII)Z

    move-result v2

    if-nez v2, :cond_4ce

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v1, v10, v1

    if-gtz v1, :cond_4ce

    iget-boolean v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-nez v1, :cond_4ce

    .line 799
    iput v10, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    .line 801
    :cond_4ce
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    sub-float/2addr v1, v10

    cmpl-float v1, v1, p3

    if-ltz v1, :cond_4e9

    move/from16 v5, p2

    .line 802
    iput v5, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastMovement:I

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v9

    move v12, v13

    move v11, v14

    move/from16 v4, v18

    const/4 v10, 0x0

    const/4 v13, 0x3

    move/from16 v7, p4

    move/from16 v9, p6

    goto/16 :goto_141

    :cond_4e9
    return v18

    :cond_4ea
    return v4
.end method

.method public final updateCars(IIIIFIIZ)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 381
    :goto_4
    iget-object v1, v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_15c

    move/from16 v8, p2

    if-ge v7, v8, :cond_15c

    .line 382
    iget-object v1, v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Car;

    .line 384
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v2

    const/4 v9, 0x1

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v2

    iget-boolean v2, v2, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-eqz v2, :cond_29

    .line 385
    iput-boolean v9, v1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    .line 388
    :cond_29
    iget-boolean v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-nez v2, :cond_134

    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    if-ltz v2, :cond_134

    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    if-ltz v3, :cond_134

    iget v4, v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->width:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_134

    iget v2, v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->height:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v3, v2, :cond_43

    goto/16 :goto_134

    .line 406
    :cond_43
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v2

    if-eqz v2, :cond_4b

    goto/16 :goto_159

    :cond_4b
    if-eqz p8, :cond_57

    .line 414
    rem-int/lit8 v2, v7, 0x4

    rem-int/lit8 v3, p7, 0x4

    if-ne v2, v3, :cond_159

    mul-int/lit8 v2, p6, 0x4

    :goto_55
    move v6, v2

    goto :goto_6e

    .line 419
    :cond_57
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v2

    if-nez v2, :cond_6c

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->carIsVisible(Linfo/flowersoft/theotown/city/objects/Car;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 420
    rem-int/lit8 v2, v7, 0x8

    rem-int/lit8 v3, p7, 0x8

    if-ne v2, v3, :cond_159

    mul-int/lit8 v2, p6, 0x8

    goto :goto_55

    :cond_6c
    move/from16 v6, p6

    .line 427
    :goto_6e
    iget v10, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    .line 428
    iget v11, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    .line 429
    iget v12, v1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    .line 430
    iget-object v2, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    div-int/lit8 v3, v10, 0x2

    div-int/lit8 v4, v11, 0x2

    invoke-virtual {v2, v3, v4, v12}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    .line 431
    iget v13, v1, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    .line 432
    iget v14, v1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    .line 434
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->lastMovement:I

    sub-int v4, p3, v2

    const/16 v5, 0x4e20

    if-lt v4, v5, :cond_8c

    if-gtz v2, :cond_8e

    :cond_8c
    if-nez v3, :cond_9c

    .line 435
    :cond_8e
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->unregisterCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    add-int/lit8 v2, v7, -0x1

    .line 436
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->removeCarByIndex(I)V

    .line 437
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->invalidateCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    :cond_99
    move v7, v2

    goto/16 :goto_159

    :cond_9c
    move/from16 v2, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 441
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->updateAutonomousCar(Linfo/flowersoft/theotown/city/objects/Car;ILinfo/flowersoft/theotown/city/objects/Road;IFI)Z

    move-result v15

    .line 443
    iget-boolean v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-eqz v2, :cond_cf

    .line 444
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->unregisterCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    add-int/lit8 v2, v7, -0x1

    .line 445
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->removeCarByIndex(I)V

    .line 446
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->invalidateCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 449
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v1

    :goto_b9
    if-eqz v1, :cond_99

    .line 451
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->unregisterCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 452
    iget-object v3, v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->removeCarByIndex(I)V

    .line 453
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->invalidateCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 454
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v1

    goto :goto_b9

    .line 460
    :cond_cf
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    if-ne v10, v2, :cond_db

    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    if-ne v11, v2, :cond_db

    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    if-eq v12, v2, :cond_102

    :cond_db
    const/4 v4, 0x0

    move v2, v10

    move v3, v11

    move v5, v12

    .line 461
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V

    .line 462
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iget v5, v1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    move-object v4, v1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V

    move-object v1, v4

    if-nez v15, :cond_102

    .line 466
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sub-float/2addr v2, v13

    int-to-float v3, v14

    sub-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    int-to-float v3, v6

    div-float/2addr v2, v3

    iput v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->lastSpeed:F

    .line 471
    :cond_102
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v1

    :goto_106
    if-eqz v1, :cond_159

    .line 473
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    .line 474
    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    .line 475
    iget v5, v1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    .line 477
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->updateConnectedCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 479
    iget v4, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    if-ne v2, v4, :cond_11d

    iget v4, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    if-ne v3, v4, :cond_11d

    iget v4, v1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    if-eq v5, v4, :cond_12f

    :cond_11d
    const/4 v4, 0x0

    .line 480
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V

    .line 481
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iget v5, v1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    move-object v4, v1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V

    move-object v1, v4

    .line 484
    :cond_12f
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v1

    goto :goto_106

    .line 390
    :cond_134
    :goto_134
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->unregisterCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    add-int/lit8 v2, v7, -0x1

    .line 391
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->removeCarByIndex(I)V

    .line 392
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->invalidateCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 395
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v1

    :goto_143
    if-eqz v1, :cond_99

    .line 397
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->unregisterCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 398
    iget-object v3, v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->removeCarByIndex(I)V

    .line 399
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->invalidateCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 400
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v1

    goto :goto_143

    :cond_159
    :goto_159
    add-int/2addr v7, v9

    goto/16 :goto_4

    :cond_15c
    return-void
.end method

.method public final updateConnectedCar(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 6

    .line 506
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 508
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v1

    iget-boolean v1, v1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-eqz v1, :cond_f

    goto :goto_4a

    .line 513
    :cond_f
    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastX:I

    if-ne v1, v2, :cond_1b

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastY:I

    if-eq v2, v3, :cond_39

    .line 514
    :cond_1b
    iput v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->lastX:I

    .line 515
    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iput v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->lastY:I

    .line 516
    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    iput v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    .line 517
    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    iput v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    .line 519
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastX:I

    iput v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    .line 520
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastY:I

    iput v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    .line 521
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    iput v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    .line 522
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    iput v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    .line 525
    :cond_39
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    if-eqz v1, :cond_42

    .line 526
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    iput v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    goto :goto_45

    :cond_42
    const/4 v1, 0x0

    .line 528
    iput v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    .line 531
    :goto_45
    iget-boolean v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    return-void

    :cond_4a
    :goto_4a
    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    return-void
.end method

.method public wait(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 13

    const/4 v0, 0x1

    .line 1032
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    .line 1033
    iget-object v7, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->cars:Ljava/util/List;

    monitor-enter v7

    .line 1034
    :try_start_6
    iget-object v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v3

    const/4 v8, 0x0

    if-nez v3, :cond_19

    .line 1035
    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    if-lez v4, :cond_19

    move v9, v0

    goto :goto_1a

    :catchall_17
    move-exception v0

    goto :goto_5e

    :cond_19
    move v9, v8

    :goto_1a
    if-eqz v9, :cond_25

    .line 1039
    iget-object v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v3

    :cond_25
    move v10, v3

    .line 1042
    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iget v6, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V

    .line 1043
    new-instance v1, Linfo/flowersoft/theotown/city/objects/Way;

    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iget v5, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    invoke-direct {v1, v3, v4, v5, v10}, Linfo/flowersoft/theotown/city/objects/Way;-><init>(IIII)V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/objects/Car;->driveTo(Linfo/flowersoft/theotown/city/objects/Way;)V

    if-eqz v9, :cond_4a

    const/4 v1, 0x0

    .line 1047
    iput v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    .line 1048
    iput v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    .line 1049
    iput v8, p1, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    goto :goto_4e

    :cond_4a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1051
    iput v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    .line 1054
    :goto_4e
    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iget v6, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    const/4 v2, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->setCarMarker(Linfo/flowersoft/theotown/city/objects/Car;IILinfo/flowersoft/theotown/city/objects/Car;I)V

    .line 1055
    iput-boolean v8, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    .line 1056
    monitor-exit v7

    return-void

    :goto_5e
    monitor-exit v7
    :try_end_5f
    .catchall {:try_start_6 .. :try_end_5f} :catchall_17

    throw v0
.end method

###### Class info.flowersoft.theotown.components.traffic.CarTrafficHandler.AnonymousClass1 (info.flowersoft.theotown.components.traffic.CarTrafficHandler$1)
.class Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$1;
.super Ljava/lang/Object;
.source "CarTrafficHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linfo/flowersoft/theotown/city/objects/Car;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$1;->this$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 3

    .line 272
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getId()I

    move-result p1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Car;->getId()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 269
    check-cast p1, Linfo/flowersoft/theotown/city/objects/Car;

    check-cast p2, Linfo/flowersoft/theotown/city/objects/Car;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$1;->compare(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/objects/Car;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.components.traffic.CarTrafficHandler.AnonymousClass2 (info.flowersoft.theotown.components.traffic.CarTrafficHandler$2)
.class Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$2;
.super Ljava/lang/Object;
.source "CarTrafficHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 299
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$2;->this$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTasks()Ljava/util/ArrayDeque;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingTask;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$2;->this$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->access$100(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)Ljava/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public shouldBeStopped()Z
    .registers 2

    .line 302
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$2;->this$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->access$000(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.traffic.CarTrafficHandler.PathfindingContext (info.flowersoft.theotown.components.traffic.CarTrafficHandler$PathfindingContext)
.class interface abstract Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingContext;
.super Ljava/lang/Object;
.source "CarTrafficHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PathfindingContext"
.end annotation


# virtual methods
.method public abstract getTasks()Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingTask;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shouldBeStopped()Z
.end method

###### Class info.flowersoft.theotown.components.traffic.CarTrafficHandler.PathfindingTask (info.flowersoft.theotown.components.traffic.CarTrafficHandler$PathfindingTask)
.class interface abstract Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingTask;
.super Ljava/lang/Object;
.source "CarTrafficHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PathfindingTask"
.end annotation


# virtual methods
.method public abstract work(Linfo/flowersoft/theotown/city/Pathfinding;Z)V
.end method

###### Class info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda0 (info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->$r8$lambda$KnGYsweIBgFHXGA6r2EE9hfz_qQ(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda1 (info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/DefaultDate;

.field public final synthetic f$2:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/components/DefaultDate;Linfo/flowersoft/theotown/components/DefaultWeather;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/components/DefaultWeather;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/components/DefaultDate;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->$r8$lambda$jeU5_KWetYrejwSzWVNqyYGwjBg(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/components/DefaultDate;Linfo/flowersoft/theotown/components/DefaultWeather;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda2 (info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingTask;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

.field public final synthetic f$1:Linfo/flowersoft/theotown/draft/CarDraft;

.field public final synthetic f$2:Linfo/flowersoft/theotown/city/MapArea;

.field public final synthetic f$3:Linfo/flowersoft/theotown/city/MapArea;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

.field public final synthetic f$6:I

.field public final synthetic f$7:J

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;ZLinfo/flowersoft/theotown/components/traffic/carcontroller/CarController;IJI)V
    .registers 11

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/draft/CarDraft;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/city/MapArea;

    iput-object p4, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$3:Linfo/flowersoft/theotown/city/MapArea;

    iput-boolean p5, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$4:Z

    iput-object p6, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$5:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    iput p7, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$6:I

    iput-wide p8, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$7:J

    iput p10, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$8:I

    return-void
.end method


# virtual methods
.method public final work(Linfo/flowersoft/theotown/city/Pathfinding;Z)V
    .registers 15

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/city/MapArea;

    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$3:Linfo/flowersoft/theotown/city/MapArea;

    iget-boolean v4, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$4:Z

    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$5:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    iget v6, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$6:I

    iget-wide v7, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$7:J

    iget v9, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda2;->f$8:I

    move-object v10, p1

    move v11, p2

    invoke-static/range {v0 .. v11}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->$r8$lambda$bj9u9xkVEZtL8LoamxrfctLzFu8(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;ZLinfo/flowersoft/theotown/components/traffic/carcontroller/CarController;IJILinfo/flowersoft/theotown/city/Pathfinding;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda3 (info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/objects/Car$CarResolver;


# instance fields
.field public final synthetic f$0:Lcom/badlogic/gdx/utils/IntMap;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda3;->f$0:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method


# virtual methods
.method public final get(I)Linfo/flowersoft/theotown/city/objects/Car;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda3;->f$0:Lcom/badlogic/gdx/utils/IntMap;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->$r8$lambda$-yubETPgBrdHhpaQO2MJaEaeb4M(Lcom/badlogic/gdx/utils/IntMap;I)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda4 (info.flowersoft.theotown.components.traffic.CarTrafficHandler$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$PathfindingTask;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/objects/Car;

.field public final synthetic f$2:Linfo/flowersoft/theotown/city/MapArea;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;Z)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/city/objects/Car;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda4;->f$2:Linfo/flowersoft/theotown/city/MapArea;

    iput-boolean p4, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda4;->f$3:Z

    return-void
.end method


# virtual methods
.method public final work(Linfo/flowersoft/theotown/city/Pathfinding;Z)V
    .registers 9

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/city/objects/Car;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda4;->f$2:Linfo/flowersoft/theotown/city/MapArea;

    iget-boolean v3, p0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler$$ExternalSyntheticLambda4;->f$3:Z

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->$r8$lambda$KTTHofMoksoAA2QyxQeRVw0pKuE(Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;ZLinfo/flowersoft/theotown/city/Pathfinding;Z)V

    return-void
.end method
