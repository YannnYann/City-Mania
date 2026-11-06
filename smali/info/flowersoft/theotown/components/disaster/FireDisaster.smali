###### Class info.flowersoft.theotown.components.disaster.FireDisaster (info.flowersoft.theotown.components.disaster.FireDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/FireDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "FireDisaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;,
        Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;
    }
.end annotation


# instance fields
.field public final FIRE_PROBABILITY_FACTOR:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final burningBuildings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            "Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;",
            ">;"
        }
    .end annotation
.end field

.field public final burningTrees:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/city/objects/Tree;",
            "Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;",
            ">;"
        }
    .end annotation
.end field

.field public final fireDangerIndex:I

.field public isAutoIssued:Z

.field public lastFireDay:J

.field public final neighborPositions:Lio/blueflower/stapel2d/util/IntList;

.field public startFireDay:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 45
    const-string v0, "game mode fire probability"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->FIRE_PROBABILITY_FACTOR:Linfo/flowersoft/theotown/util/json/JSONObject;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isAutoIssued:Z

    .line 56
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->neighborPositions:Lio/blueflower/stapel2d/util/IntList;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    .line 61
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/FireDangerAttribute;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->fireDangerIndex:I

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 179
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/Disaster;->bind(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public final burnBuildingDown(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 8

    .line 347
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 349
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eq v0, p1, :cond_16

    goto/16 :goto_b7

    .line 351
    :cond_16
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->explodes:Z

    .line 352
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->nuclear:Z

    .line 354
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v2

    .line 355
    :try_start_25
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v1, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->destroyBuilding(Linfo/flowersoft/theotown/city/objects/Building;ZLvm2/LuaValue;)Z

    .line 356
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_b8

    .line 358
    new-instance v1, Linfo/flowersoft/theotown/city/BuildingSampler;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    .line 359
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 360
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/16 v5, 0x14

    invoke-direct {v1, v2, v5, v3, v4}, Linfo/flowersoft/theotown/city/BuildingSampler;-><init>(Linfo/flowersoft/theotown/city/City;III)V

    const/16 v2, 0xa0

    .line 362
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/BuildingSampler;->sample(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 363
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->influenceOfBurningDown(Linfo/flowersoft/theotown/city/objects/Building;)V

    goto :goto_55

    .line 366
    :cond_65
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0xf

    .line 367
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 368
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object v3, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v4, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v4, v5, p1}, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V

    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    if-eqz v0, :cond_b7

    .line 372
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Catastrophe;

    .line 374
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Catastrophe;->getDisasters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_90
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 375
    instance-of v2, v1, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

    if-eqz v2, :cond_90

    .line 376
    check-cast v1, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p1

    if-eqz p1, :cond_b7

    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 377
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v0, "nuclear_plant_explode"

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    :cond_b7
    :goto_b7
    return-void

    :catchall_b8
    move-exception p1

    .line 356
    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw p1
.end method

.method public final burnTreeDown(Linfo/flowersoft/theotown/city/objects/Tree;)V
    .registers 8

    .line 326
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    if-eq v0, p1, :cond_15

    return-void

    .line 328
    :cond_15
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    .line 329
    :try_start_18
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->destroyTree(Linfo/flowersoft/theotown/city/objects/Tree;ZLvm2/LuaValue;)Z

    .line 330
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_6c

    .line 332
    new-instance v0, Linfo/flowersoft/theotown/city/BuildingSampler;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    .line 333
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v2

    .line 334
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v3

    const/16 v4, 0x14

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/city/BuildingSampler;-><init>(Linfo/flowersoft/theotown/city/City;III)V

    const/16 v1, 0xa0

    .line 336
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingSampler;->sample(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 337
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->influenceOfBurningDown(Linfo/flowersoft/theotown/city/objects/Building;)V

    goto :goto_3b

    .line 340
    :cond_4b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xf

    .line 341
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 342
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v3, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    .line 343
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v5

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result p1

    invoke-direct {v3, v4, v5, p1}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    .line 342
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return-void

    :catchall_6c
    move-exception p1

    .line 330
    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw p1
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public declared-synchronized getBurningBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 3

    monitor-enter p0

    .line 506
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 507
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 508
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    goto :goto_1e

    .line 510
    :cond_1b
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_19

    throw v0
.end method

.method public getBurningProbability(Linfo/flowersoft/theotown/city/objects/Building;)F
    .registers 5

    .line 440
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 442
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 443
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->fireDangerIndex:I

    aget p1, p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    return p1

    .line 445
    :cond_1f
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_37

    .line 446
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result p1

    if-nez p1, :cond_37

    const p1, 0x33d6bf95    # 1.0E-7f

    return p1

    :cond_37
    return v1
.end method

.method public declared-synchronized getBurningThing()I
    .registers 3

    monitor-enter p0

    .line 524
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->getBurningBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 525
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return v0

    :catchall_15
    move-exception v0

    goto :goto_2e

    .line 527
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->getBurningTree()Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 528
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v0

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v0
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_15

    monitor-exit p0

    return v0

    .line 530
    :cond_2b
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_15

    throw v0
.end method

.method public declared-synchronized getBurningThingsInRange(III)Lio/blueflower/stapel2d/util/IntList;
    .registers 10

    monitor-enter p0

    .line 534
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 535
    sget-object p1, Lio/blueflower/stapel2d/util/IntList;->EMPTY_LIST:Lio/blueflower/stapel2d/util/IntList;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    goto/16 :goto_ae

    .line 537
    :cond_18
    :try_start_18
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    .line 539
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 540
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_42
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 541
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getDistance()Linfo/flowersoft/theotown/util/Distance;

    move-result-object v3

    invoke-virtual {v3, v2, p1, p2}, Linfo/flowersoft/theotown/util/Distance;->get(Linfo/flowersoft/theotown/city/objects/Building;II)I

    move-result v3

    if-gt v3, p3, :cond_42

    .line 543
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_42

    .line 548
    :cond_6a
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ac

    .line 549
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7c
    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Tree;

    .line 550
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getDistance()Linfo/flowersoft/theotown/util/Distance;

    move-result-object v3

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v4

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1, p2}, Linfo/flowersoft/theotown/util/Distance;->get(IIII)I

    move-result v3

    if-gt v3, p3, :cond_7c

    .line 552
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v3

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v2

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V
    :try_end_ab
    .catchall {:try_start_18 .. :try_end_ab} :catchall_15

    goto :goto_7c

    .line 557
    :cond_ac
    monitor-exit p0

    return-object v0

    :goto_ae
    :try_start_ae
    monitor-exit p0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_15

    throw p1
.end method

.method public declared-synchronized getBurningTree()Linfo/flowersoft/theotown/city/objects/Tree;
    .registers 3

    monitor-enter p0

    .line 515
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 516
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 517
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Tree;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    goto :goto_1e

    .line 519
    :cond_1b
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_1e
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_19

    throw v0
.end method

.method public declared-synchronized getLocation()[I
    .registers 3

    monitor-enter p0

    .line 563
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    .line 564
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public final influenceOfBurningDown(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 6

    if-eqz p1, :cond_3b

    .line 387
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    if-eqz v0, :cond_3b

    .line 388
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 389
    const-class p1, Linfo/flowersoft/theotown/components/management/attribute/FireBrigadeHappiness;

    invoke-static {p1}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result p1

    .line 390
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v0

    aget v0, v0, p1

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    .line 391
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x3f266666    # 0.65f

    mul-float/2addr v2, v3

    const v3, 0x3eb33333    # 0.35f

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    aput v0, v1, p1

    :cond_3b
    return-void
.end method

.method public declared-synchronized isActive()Z
    .registers 2

    monitor-enter p0

    .line 413
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    if-nez v0, :cond_12

    goto :goto_16

    :cond_12
    const/4 v0, 0x0

    goto :goto_17

    :catchall_14
    move-exception v0

    goto :goto_19

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    monitor-exit p0

    return v0

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_14

    throw v0
.end method

.method public isAutoEnabled()Z
    .registers 2

    .line 569
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->disasterFire:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final isBurnable(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    if-eqz p1, :cond_1a

    .line 466
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->burnable:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final isBurnable(Linfo/flowersoft/theotown/city/objects/Tree;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 470
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object p1

    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/TreeDraft;->burnable:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized issue()Z
    .registers 9

    monitor-enter p0

    .line 418
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/People;

    .line 419
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_54

    const/16 v1, 0x15e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_16

    monitor-exit p0

    return v2

    .line 421
    :cond_16
    :try_start_16
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 424
    new-instance v1, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/BuildingList;->getRciBuildings()Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v3

    invoke-direct {v1, v3}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Building;

    .line 425
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->getBurningProbability(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result v6

    .line 426
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v7

    iget-boolean v7, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    if-nez v7, :cond_4d

    const/4 v7, 0x0

    mul-float/2addr v6, v7

    :cond_4d
    sub-float v7, v3, v6

    mul-float/2addr v4, v7

    .line 428
    invoke-virtual {v0, v5, v6}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_33

    :catchall_54
    move-exception v0

    goto :goto_86

    :cond_56
    sub-float v1, v3, v4

    .line 431
    iget-object v4, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->FIRE_PROBABILITY_FACTOR:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, v4, v3}, Linfo/flowersoft/theotown/city/components/Disaster;->getGameModeDependentValue(Linfo/flowersoft/theotown/util/json/JSONObject;F)F

    move-result v3

    mul-float/2addr v1, v3

    .line 432
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_84

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    cmpg-float v1, v3, v1

    if-gez v1, :cond_84

    .line 433
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isActive()Z

    move-result v1

    if-nez v1, :cond_78

    const/4 v1, 0x1

    iput-boolean v1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isAutoIssued:Z

    .line 434
    :cond_78
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v0
    :try_end_82
    .catchall {:try_start_16 .. :try_end_82} :catchall_54

    monitor-exit p0

    return v0

    .line 436
    :cond_84
    monitor-exit p0

    return v2

    :goto_86
    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_54

    throw v0
.end method

.method public declared-synchronized issue(II)Z
    .registers 5

    monitor-enter p0

    .line 452
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 454
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    .line 455
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p1

    .line 457
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isBurnable(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p2

    if-nez p2, :cond_2b

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_32

    .line 458
    :cond_1f
    :goto_1f
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isBurnable(Linfo/flowersoft/theotown/city/objects/Tree;)Z

    move-result p2

    if-eqz p2, :cond_30

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Tree;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 459
    :cond_2b
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isAutoIssued:Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_1d

    .line 460
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 462
    :cond_30
    monitor-exit p0

    return v0

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_1d

    throw p1
.end method

.method public declared-synchronized issue(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 8

    monitor-enter p0

    .line 474
    :try_start_1
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isBurning()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isBurnable(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    .line 475
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setBurning(Z)V

    .line 476
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    .line 477
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    new-instance v4, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->sampleBuildingFireDuration(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v5

    invoke-direct {v4, v1, v2, p1, v5}, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;-><init>(JLinfo/flowersoft/theotown/city/objects/Building;I)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->startSound(Linfo/flowersoft/theotown/city/objects/Building;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 479
    monitor-exit p0

    return v0

    :catchall_30
    move-exception p1

    goto :goto_35

    .line 481
    :cond_32
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_30

    throw p1
.end method

.method public declared-synchronized issue(Linfo/flowersoft/theotown/city/objects/Tree;)Z
    .registers 8

    monitor-enter p0

    .line 486
    :try_start_1
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->isBurning()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isBurnable(Linfo/flowersoft/theotown/city/objects/Tree;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    .line 487
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Tree;->setBurning(Z)V

    .line 488
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    .line 489
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    new-instance v4, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->sampleTreeFireDuration(Linfo/flowersoft/theotown/city/objects/Tree;)I

    move-result v5

    invoke-direct {v4, v1, v2, p1, v5}, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;-><init>(JLinfo/flowersoft/theotown/city/objects/Tree;I)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->startSound(Linfo/flowersoft/theotown/city/objects/Tree;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 491
    monitor-exit p0

    return v0

    :catchall_30
    move-exception p1

    goto :goto_35

    .line 493
    :cond_32
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_30

    throw p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 66
    const-string v1, "dur"

    const-string v2, "day"

    const-string v3, "y"

    const-string v4, "x"

    const/4 v8, -0x1

    const/4 v9, 0x0

    :goto_c
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18c

    .line 67
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v11, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_18e

    :goto_22
    move v10, v8

    goto :goto_5a

    :sswitch_24
    const-string v13, "last fire"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2d

    goto :goto_22

    :cond_2d
    const/4 v10, 0x4

    goto :goto_5a

    :sswitch_2f
    const-string v13, "trees"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_38

    goto :goto_22

    :cond_38
    const/4 v10, 0x3

    goto :goto_5a

    :sswitch_3a
    const-string v13, "auto"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_43

    goto :goto_22

    :cond_43
    const/4 v10, 0x2

    goto :goto_5a

    :sswitch_45
    const-string v13, "buildings"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4e

    goto :goto_22

    :cond_4e
    const/4 v10, 0x1

    goto :goto_5a

    :sswitch_50
    const-string v13, "start day"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_59

    goto :goto_22

    :cond_59
    move v10, v9

    :goto_5a
    packed-switch v10, :pswitch_data_1a4

    .line 141
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_c

    .line 132
    :pswitch_61
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v10

    iput-wide v10, v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->lastFireDay:J

    goto :goto_c

    .line 101
    :pswitch_68
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 102
    :cond_6b
    :goto_6b
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ed

    .line 103
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    move v10, v9

    move v13, v10

    move v14, v13

    move-wide v5, v11

    .line 108
    :goto_78
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_cc

    .line 109
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1b2

    :goto_8c
    move v7, v8

    goto :goto_b1

    :sswitch_8e
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_95

    goto :goto_8c

    :cond_95
    const/4 v7, 0x3

    goto :goto_b1

    :sswitch_97
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9e

    goto :goto_8c

    :cond_9e
    const/4 v7, 0x2

    goto :goto_b1

    :sswitch_a0
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a7

    goto :goto_8c

    :cond_a7
    const/4 v7, 0x1

    goto :goto_b1

    :sswitch_a9
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b0

    goto :goto_8c

    :cond_b0
    move v7, v9

    :goto_b1
    packed-switch v7, :pswitch_data_1c4

    .line 119
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_78

    .line 117
    :pswitch_b8
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v14

    goto :goto_78

    .line 115
    :pswitch_bd
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v5

    goto :goto_78

    .line 113
    :pswitch_c2
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v13

    goto :goto_78

    .line 111
    :pswitch_c7
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v10

    goto :goto_78

    .line 122
    :cond_cc
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 123
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, v10, v13}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v7

    if-eqz v7, :cond_6b

    if-nez v14, :cond_e1

    .line 125
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->sampleTreeFireDuration(Linfo/flowersoft/theotown/city/objects/Tree;)I

    move-result v14

    .line 126
    :cond_e1
    iget-object v10, v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    new-instance v13, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;

    invoke-direct {v13, v5, v6, v7, v14}, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;-><init>(JLinfo/flowersoft/theotown/city/objects/Tree;I)V

    invoke-interface {v10, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6b

    .line 129
    :cond_ed
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_c

    .line 138
    :pswitch_f2
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v5

    iput-boolean v5, v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isAutoIssued:Z

    goto/16 :goto_c

    .line 69
    :pswitch_fa
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 70
    :cond_fd
    :goto_fd
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17f

    .line 71
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    move v5, v9

    move v6, v5

    move v7, v6

    move-wide v13, v11

    .line 76
    :goto_10a
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15e

    .line 77
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1d0

    :goto_11e
    move v10, v8

    goto :goto_143

    :sswitch_120
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_127

    goto :goto_11e

    :cond_127
    const/4 v10, 0x3

    goto :goto_143

    :sswitch_129
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_130

    goto :goto_11e

    :cond_130
    const/4 v10, 0x2

    goto :goto_143

    :sswitch_132
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_139

    goto :goto_11e

    :cond_139
    const/4 v10, 0x1

    goto :goto_143

    :sswitch_13b
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_142

    goto :goto_11e

    :cond_142
    move v10, v9

    :goto_143
    packed-switch v10, :pswitch_data_1e2

    .line 87
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_10a

    .line 85
    :pswitch_14a
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v7

    goto :goto_10a

    .line 83
    :pswitch_14f
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v13

    goto :goto_10a

    .line 81
    :pswitch_154
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    goto :goto_10a

    .line 79
    :pswitch_159
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    goto :goto_10a

    .line 90
    :cond_15e
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 92
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    if-eqz v5, :cond_fd

    if-nez v7, :cond_173

    .line 94
    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->sampleBuildingFireDuration(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v7

    .line 95
    :cond_173
    iget-object v6, v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    new-instance v10, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;

    invoke-direct {v10, v13, v14, v5, v7}, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;-><init>(JLinfo/flowersoft/theotown/city/objects/Building;I)V

    invoke-interface {v6, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_fd

    .line 98
    :cond_17f
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_c

    .line 135
    :pswitch_184
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->startFireDay:J

    goto/16 :goto_c

    :cond_18c
    return-void

    nop

    :sswitch_data_18e
    .sparse-switch
        -0x7f022d22 -> :sswitch_50
        -0x5377bbc1 -> :sswitch_45
        0x2dddaf -> :sswitch_3a
        0x6980095 -> :sswitch_2f
        0x74828180 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_184
        :pswitch_fa
        :pswitch_f2
        :pswitch_68
        :pswitch_61
    .end packed-switch

    :sswitch_data_1b2
    .sparse-switch
        0x78 -> :sswitch_a9
        0x79 -> :sswitch_a0
        0x1839c -> :sswitch_97
        0x18601 -> :sswitch_8e
    .end sparse-switch

    :pswitch_data_1c4
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_c2
        :pswitch_bd
        :pswitch_b8
    .end packed-switch

    :sswitch_data_1d0
    .sparse-switch
        0x78 -> :sswitch_13b
        0x79 -> :sswitch_132
        0x1839c -> :sswitch_129
        0x18601 -> :sswitch_120
    .end sparse-switch

    :pswitch_data_1e2
    .packed-switch 0x0
        :pswitch_159
        :pswitch_154
        :pswitch_14f
        :pswitch_14a
    .end packed-switch
.end method

.method public prepare()V
    .registers 7

    .line 184
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Disaster;->prepare()V

    .line 186
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 187
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 188
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/Building;->setBurning(Z)V

    .line 189
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->startSound(Linfo/flowersoft/theotown/city/objects/Building;)V

    goto :goto_d

    .line 193
    :cond_29
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    const/4 v0, 0x0

    move v1, v0

    .line 194
    :goto_33
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_64

    move v3, v0

    .line 195
    :goto_3c
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_61

    .line 196
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 197
    iget-object v5, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 198
    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/objects/Tree;->setBurning(Z)V

    .line 199
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->startSound(Linfo/flowersoft/theotown/city/objects/Tree;)V

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_64
    return-void
.end method

.method public declared-synchronized removeFire(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 397
    :try_start_2
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setBurning(Z)V

    .line 398
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    if-eqz p1, :cond_22

    .line 402
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/FireDangerAttribute;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, 0x0

    aput v1, p1, v0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_20

    goto :goto_22

    :catchall_20
    move-exception p1

    goto :goto_24

    .line 404
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_20

    throw p1
.end method

.method public declared-synchronized removeFire(Linfo/flowersoft/theotown/city/objects/Tree;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 407
    :try_start_2
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Tree;->setBurning(Z)V

    .line 408
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 409
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final sampleBuildingFireDuration(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 3

    .line 498
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0xa

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x14

    return p1
.end method

.method public final sampleTreeFireDuration(Linfo/flowersoft/theotown/city/objects/Tree;)I
    .registers 3

    .line 502
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    const-string v0, "buildings"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "dur"

    const-string v3, "day"

    const-string v4, "y"

    const-string v5, "x"

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;

    .line 150
    iget-object v6, v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 151
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 152
    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v5

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v7

    invoke-interface {v5, v7}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 153
    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v4

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 154
    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v3

    iget-wide v4, v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;->startDay:J

    invoke-interface {v3, v4, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 155
    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget v1, v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;->durationDays:I

    invoke-interface {v2, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 156
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_13

    .line 158
    :cond_58
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 160
    const-string v0, "trees"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 161
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;

    .line 162
    iget-object v6, v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;->tree:Linfo/flowersoft/theotown/city/objects/Tree;

    .line 163
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 164
    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v7

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v8

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 165
    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v7

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v6

    invoke-interface {v7, v6}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 166
    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v6

    iget-wide v7, v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;->startDay:J

    invoke-interface {v6, v7, v8}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 167
    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v6

    iget v1, v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;->durationDays:I

    invoke-interface {v6, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 168
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_6e

    .line 170
    :cond_ab
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 172
    const-string v0, "last fire"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->lastFireDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 173
    const-string v0, "start day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->startFireDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 174
    const-string v0, "auto"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isAutoIssued:Z

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public final spreadFire(Lio/blueflower/stapel2d/util/IntList;)V
    .registers 11

    .line 292
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->lastFireDay:J

    iget-wide v2, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->startFireDay:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isAutoIssued:Z

    if-eqz v0, :cond_11

    goto/16 :goto_94

    .line 294
    :cond_11
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 296
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->getRain()F

    move-result v1

    const/4 v2, 0x0

    .line 298
    :goto_26
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    if-ge v2, v3, :cond_94

    .line 299
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    .line 300
    invoke-static {v3}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v4

    .line 301
    invoke-static {v3}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v3

    .line 302
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v4, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 303
    invoke-virtual {v0, v4, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    .line 304
    invoke-virtual {v0, v4, v3}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v3

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_78

    .line 306
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v7

    if-nez v7, :cond_78

    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isBurnable(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v7

    if-eqz v7, :cond_78

    const/high16 v7, 0x42480000    # 50.0f

    .line 307
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->getBurningProbability(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result v8

    mul-float/2addr v8, v7

    const v7, 0x3c23d70a    # 0.01f

    add-float/2addr v8, v7

    mul-float v7, v1, v4

    sub-float v7, v6, v7

    mul-float/2addr v8, v7

    .line 309
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_78

    .line 310
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;)Z

    .line 314
    :cond_78
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isBurnable(Linfo/flowersoft/theotown/city/objects/Tree;)Z

    move-result v5

    if-eqz v5, :cond_91

    mul-float/2addr v4, v1

    sub-float/2addr v6, v4

    const v4, 0x3ca3d70a    # 0.02f

    mul-float/2addr v6, v4

    .line 317
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_91

    .line 318
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Tree;)Z

    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_94
    :goto_94
    return-void
.end method

.method public final startSound(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 7

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 208
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_FIRE:I

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v3, Linfo/flowersoft/theotown/components/disaster/FireDisaster$1;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster$1;-><init>(Linfo/flowersoft/theotown/components/disaster/FireDisaster;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return-void
.end method

.method public final startSound(Linfo/flowersoft/theotown/city/objects/Tree;)V
    .registers 11

    .line 218
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 219
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_FIRE:I

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v3, Linfo/flowersoft/theotown/components/disaster/FireDisaster$2;

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    .line 220
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v7

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Linfo/flowersoft/theotown/components/disaster/FireDisaster$2;-><init>(Linfo/flowersoft/theotown/components/disaster/FireDisaster;Linfo/flowersoft/theotown/city/City;IILinfo/flowersoft/theotown/city/objects/Tree;)V

    .line 219
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return-void
.end method

.method public declared-synchronized update()V
    .registers 14

    monitor-enter p0

    .line 230
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 231
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    .line 232
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->neighborPositions:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 234
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 235
    iput-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->startFireDay:J

    goto :goto_28

    :catchall_25
    move-exception v0

    goto/16 :goto_16d

    .line 238
    :cond_28
    :goto_28
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningBuildings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 239
    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_d7

    .line 240
    iput-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->lastFireDay:J

    .line 241
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;

    .line 242
    iget-wide v6, v4, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;->startDay:J

    sub-long v6, v1, v6

    long-to-int v6, v6

    .line 243
    iget-object v7, v4, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    move v8, v5

    .line 245
    :goto_49
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_7d

    .line 246
    iget-object v9, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->neighborPositions:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v10

    invoke-virtual {v9, v10}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 247
    iget-object v9, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->neighborPositions:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v11

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v10

    invoke-virtual {v9, v10}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    :cond_7d
    move v8, v5

    .line 249
    :goto_7e
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_b2

    .line 250
    iget-object v9, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->neighborPositions:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v11

    add-int/2addr v11, v8

    invoke-static {v10, v11}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v10

    invoke-virtual {v9, v10}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 251
    iget-object v9, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->neighborPositions:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v10

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v11

    add-int/2addr v11, v8

    invoke-static {v10, v11}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v10

    invoke-virtual {v9, v10}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7e

    .line 254
    :cond_b2
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v8

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v8

    if-eq v8, v7, :cond_c8

    .line 255
    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/city/objects/Building;->setBurning(Z)V

    .line 256
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_32

    .line 257
    :cond_c8
    iget v4, v4, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;->durationDays:I

    if-le v6, v4, :cond_32

    .line 258
    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/city/objects/Building;->setBurning(Z)V

    .line 259
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 260
    invoke-virtual {p0, v7}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burnBuildingDown(Linfo/flowersoft/theotown/city/objects/Building;)V

    goto/16 :goto_32

    .line 264
    :cond_d7
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burningTrees:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 265
    :cond_e1
    :goto_e1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_166

    .line 266
    iput-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->lastFireDay:J

    .line 267
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;

    .line 268
    iget-wide v6, v4, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;->startDay:J

    sub-long v6, v1, v6

    long-to-int v6, v6

    .line 269
    iget-object v7, v4, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;->tree:Linfo/flowersoft/theotown/city/objects/Tree;

    .line 271
    iget-object v8, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->neighborPositions:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v10

    invoke-static {v9, v10}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v9

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 272
    iget-object v8, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->neighborPositions:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v9

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v9

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 273
    iget-object v8, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->neighborPositions:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v10

    invoke-static {v9, v10}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v9

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 274
    iget-object v8, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->neighborPositions:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v9

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v9

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 276
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v8

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v8

    if-eq v8, v7, :cond_157

    .line 278
    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/city/objects/Tree;->setBurning(Z)V

    .line 279
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_e1

    .line 280
    :cond_157
    iget v4, v4, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;->durationDays:I

    if-le v6, v4, :cond_e1

    .line 281
    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/city/objects/Tree;->setBurning(Z)V

    .line 282
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 283
    invoke-virtual {p0, v7}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->burnTreeDown(Linfo/flowersoft/theotown/city/objects/Tree;)V

    goto/16 :goto_e1

    .line 287
    :cond_166
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->neighborPositions:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->spreadFire(Lio/blueflower/stapel2d/util/IntList;)V
    :try_end_16b
    .catchall {:try_start_1 .. :try_end_16b} :catchall_25

    .line 288
    monitor-exit p0

    return-void

    :goto_16d
    :try_start_16d
    monitor-exit p0
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_25

    throw v0
.end method

###### Class info.flowersoft.theotown.components.disaster.FireDisaster.AnonymousClass1 (info.flowersoft.theotown.components.disaster.FireDisaster$1)
.class public Linfo/flowersoft/theotown/components/disaster/FireDisaster$1;
.super Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;
.source "FireDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/disaster/FireDisaster;->startSound(Linfo/flowersoft/theotown/city/objects/Building;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/FireDisaster;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/FireDisaster;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 209
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster$1;->this$0:Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    invoke-direct {p0, p2, p3}, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isBurning()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.disaster.FireDisaster.AnonymousClass2 (info.flowersoft.theotown.components.disaster.FireDisaster$2)
.class public Linfo/flowersoft/theotown/components/disaster/FireDisaster$2;
.super Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;
.source "FireDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/disaster/FireDisaster;->startSound(Linfo/flowersoft/theotown/city/objects/Tree;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/FireDisaster;

.field public final synthetic val$tree:Linfo/flowersoft/theotown/city/objects/Tree;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/FireDisaster;Linfo/flowersoft/theotown/city/City;IILinfo/flowersoft/theotown/city/objects/Tree;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster$2;->this$0:Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    iput-object p5, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster$2;->val$tree:Linfo/flowersoft/theotown/city/objects/Tree;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .line 223
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster$2;->val$tree:Linfo/flowersoft/theotown/city/objects/Tree;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Tree;->isBurning()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.components.disaster.FireDisaster.BurningBuilding (info.flowersoft.theotown.components.disaster.FireDisaster$BurningBuilding)
.class Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;
.super Ljava/lang/Object;
.source "FireDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/FireDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BurningBuilding"
.end annotation


# instance fields
.field public building:Linfo/flowersoft/theotown/city/objects/Building;

.field public durationDays:I

.field public startDay:J


# direct methods
.method public constructor <init>(JLinfo/flowersoft/theotown/city/objects/Building;I)V
    .registers 5

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;->startDay:J

    .line 584
    iput-object p3, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 585
    iput p4, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningBuilding;->durationDays:I

    return-void
.end method

###### Class info.flowersoft.theotown.components.disaster.FireDisaster.BurningTree (info.flowersoft.theotown.components.disaster.FireDisaster$BurningTree)
.class Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;
.super Ljava/lang/Object;
.source "FireDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/FireDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BurningTree"
.end annotation


# instance fields
.field public durationDays:I

.field public startDay:J

.field public tree:Linfo/flowersoft/theotown/city/objects/Tree;


# direct methods
.method public constructor <init>(JLinfo/flowersoft/theotown/city/objects/Tree;I)V
    .registers 5

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;->startDay:J

    .line 596
    iput-object p3, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;->tree:Linfo/flowersoft/theotown/city/objects/Tree;

    .line 597
    iput p4, p0, Linfo/flowersoft/theotown/components/disaster/FireDisaster$BurningTree;->durationDays:I

    return-void
.end method
