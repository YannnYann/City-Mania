###### Class info.flowersoft.theotown.draft.BuildingDraft (info.flowersoft.theotown.draft.BuildingDraft)
.class public Linfo/flowersoft/theotown/draft/BuildingDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "BuildingDraft.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;,
        Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;
    }
.end annotation


# instance fields
.field public addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

.field public alignable:Z

.field public animation:Z

.field public animationFGSpotIndices:[[I

.field public animationFGSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;"
        }
    .end annotation
.end field

.field public animationSpotIndices:[[I

.field public animationSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;"
        }
    .end annotation
.end field

.field public aspectCapacity:[I

.field public autoBuild:Z

.field public autoBuildFactor:F

.field public biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

.field public budgetItem:Linfo/flowersoft/theotown/draft/Draft;

.field public buildHeight:I

.field public buildTime:I

.field public buildZone:Z

.field public buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

.field public bulldozePrice:J

.field public burnable:Z

.field public capacity:I

.field public carMaxLevel:I

.field public carMinLevel:I

.field public carSpawners:[Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

.field public composition:Linfo/flowersoft/theotown/draft/Composition;

.field public conductive:Z

.field public decoFrames:[I

.field public density:F

.field public depotCapacity:I

.field public destroyable:Z

.field public destroyableByFun:Z

.field public destruction:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

.field public disaster:Z

.field public drawGround:Z

.field public drawWaterBorders:Z

.field public drawWaterGround:Z

.field public drawWaterGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public drawZone:Z

.field public easyRemove:Z

.field public explodes:Z

.field public explosionRadius:I

.field public extRotationAware:Z

.field public frameAlignment:Z

.field public frameAlignmentArea:Z

.field public freeBuildTimeSkip:Z

.field public groundFrames:[I

.field public groundTileFrames:[I

.field public habitants:I

.field public height:I

.field public helicopterSpawner:Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;

.field public hiddenOnClick:Z

.field public highVoltageOnly:Z

.field public idleBuildTime:Z

.field public influenceInduceVector:[I

.field public influencePreview:Z

.field public level:I

.field public liquid:Z

.field public mapColor:Lio/blueflower/stapel2d/drawing/Color;

.field public maxCount:I

.field public minWaterTiles:I

.field public monthlyPrice:J

.field public moveable:Z

.field public neededAspectAmount:[I

.field public needsLand:Z

.field public needsRoad:Z

.field public needsWater:Z

.field public nightLightProbability:F

.field public nuclear:Z

.field public onBuiltTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public onClickTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public onDestroyTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public onEventTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public pedestrianCount:F

.field public pedestrianDraft:Linfo/flowersoft/theotown/draft/PedestrianDraft;

.field public performance:Z

.field public performanceMax:F

.field public performanceMin:F

.field public pickable:Z

.field public power:J

.field public powerRadius:I

.field public price:J

.field public priceFactor:F

.field public randomFrame:Z

.field public randomTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public randomizeAnimation:Z

.field public randomizeLights:Z

.field public rciCars:I

.field public rebuild:Z

.field public removable:Z

.field public renameable:Z

.field public roadFlags:J

.field public rotationAware:Z

.field public selectableFrames:Z

.field public serviceCarTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serviceCars:I

.field public shipCount:I

.field public shipRadius:I

.field public ships:[Linfo/flowersoft/theotown/draft/ShipDraft;

.field public smokeSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/SmokeSpot;",
            ">;"
        }
    .end annotation
.end field

.field public superConductive:Z

.field public supportsShoreline:Z

.field public supportsSlope:Z

.field public supportsTerrain:Z

.field public transitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public upgrades:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/UpgradeDraft;",
            ">;"
        }
    .end annotation
.end field

.field public useFence:[Ljava/lang/String;

.field public useFireFrames:Z

.field public volatileCannotUndo:Z

.field public water:J

.field public waterBorderFrames:[I

.field public waterWaste:F

.field public width:I

.field public workers:I

.field public zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 16
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    const-wide/32 v1, 0x1c000e4

    .line 89
    iput-wide v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->roadFlags:J

    .line 94
    iput v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 100
    iput v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->density:F

    .line 185
    new-instance v2, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v2, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    const-wide/32 v2, -0x80000000

    .line 186
    iput-wide v2, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->bulldozePrice:J

    .line 217
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->burnable:Z

    .line 222
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->useFireFrames:Z

    .line 227
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    .line 232
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyableByFun:Z

    const/4 v2, -0x1

    .line 244
    iput v2, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->maxCount:I

    .line 259
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    .line 271
    iput v2, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->minWaterTiles:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 283
    iput v3, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuildFactor:F

    .line 353
    iput v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->priceFactor:F

    .line 358
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomFrame:Z

    const/16 v1, 0x10

    .line 383
    iput v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->explosionRadius:I

    const/4 v1, 0x0

    .line 394
    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->volatileCannotUndo:Z

    .line 420
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->removable:Z

    .line 428
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->pickable:Z

    .line 438
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->renameable:Z

    const v4, 0x3a83126f    # 0.001f

    .line 445
    iput v4, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->performanceMin:F

    const/high16 v4, 0x40000000    # 2.0f

    .line 446
    iput v4, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->performanceMax:F

    const/4 v4, 0x5

    .line 448
    iput v4, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->powerRadius:I

    .line 454
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterBorders:Z

    .line 461
    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterGround:Z

    const/4 v4, 0x0

    .line 467
    iput-object v4, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 472
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->idleBuildTime:Z

    .line 480
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    .line 481
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsShoreline:Z

    .line 483
    iput v2, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCars:I

    .line 484
    iput-object v4, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    .line 486
    iput-object v4, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->useFence:[Ljava/lang/String;

    .line 488
    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomizeAnimation:Z

    .line 489
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomizeLights:Z

    .line 491
    iput v3, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->nightLightProbability:F

    .line 512
    iput v2, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->carMinLevel:I

    .line 513
    iput v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->carMaxLevel:I

    return-void
.end method

.method public static getDefaultSpawnDefinition()Linfo/flowersoft/theotown/draft/SpawnDefinition;
    .registers 1

    .line 551
    new-instance v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/SpawnDefinition;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addBiome(Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V
    .registers 3

    .line 537
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    if-nez v0, :cond_b

    .line 538
    filled-new-array {p1}, [Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    return-void

    .line 542
    :cond_b
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 544
    :cond_12
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/ArrayUtil;->add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    iput-object p1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    return-void
.end method

.method public getArea()I
    .registers 3

    .line 654
    iget v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    iget v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getHeight(I)I
    .registers 2

    if-ltz p1, :cond_a

    .line 627
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    goto :goto_a

    .line 630
    :cond_7
    iget p1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    return p1

    .line 628
    :cond_a
    :goto_a
    iget p1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    return p1
.end method

.method public getIcon()I
    .registers 3

    .line 601
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/Draft;->iconFrames:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 602
    aget v0, v0, v1

    return v0

    .line 603
    :cond_8
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eqz v0, :cond_11

    .line 604
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->getIcon()I

    move-result v0

    return v0

    :cond_11
    return v1
.end method

.method public getMaxSize()I
    .registers 3

    .line 638
    iget v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    iget v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getVisibleUpgrades()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/UpgradeDraft;",
            ">;"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    if-eqz v1, :cond_21

    .line 559
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 560
    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v3, :cond_d

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method public getWidth(I)I
    .registers 2

    if-ltz p1, :cond_a

    .line 615
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    goto :goto_a

    .line 618
    :cond_7
    iget p1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    return p1

    .line 616
    :cond_a
    :goto_a
    iget p1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    return p1
.end method

.method public hasUpgrades()Z
    .registers 2

    .line 520
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isBoughtInFeature(Linfo/flowersoft/theotown/city/City;)Z
    .registers 5

    .line 591
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_29

    .line 592
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 593
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->getSingleRequirements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    .line 594
    instance-of v2, v0, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    if-eqz v2, :cond_29

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p1, 0x1

    return p1

    :cond_29
    return v1
.end method

.method public isClickSensitive()Z
    .registers 2

    .line 587
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->onClickTransitions:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isSquare()Z
    .registers 3

    .line 647
    iget v0, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    iget v1, p0, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.draft.BuildingDraft.CarSpawnerDraft (info.flowersoft.theotown.draft.BuildingDraft$CarSpawnerDraft)
.class public Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;
.super Ljava/lang/Object;
.source "BuildingDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/BuildingDraft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarSpawnerDraft"
.end annotation


# instance fields
.field public carFlags:I

.field public cars:[Linfo/flowersoft/theotown/draft/CarDraft;

.field public count:I

.field public id:Ljava/lang/String;

.field public level:I

.field public radius:I

.field public tags:[Ljava/lang/String;

.field public targetIds:[Ljava/lang/String;

.field public targetTags:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.draft.BuildingDraft.HelicopterSpawnerDraft (info.flowersoft.theotown.draft.BuildingDraft$HelicopterSpawnerDraft)
.class public Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;
.super Ljava/lang/Object;
.source "BuildingDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/BuildingDraft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HelicopterSpawnerDraft"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public radius:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
