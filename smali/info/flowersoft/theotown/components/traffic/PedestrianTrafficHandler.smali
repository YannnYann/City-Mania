###### Class info.flowersoft.theotown.components.traffic.PedestrianTrafficHandler (info.flowersoft.theotown.components.traffic.PedestrianTrafficHandler)
.class public Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;
.super Linfo/flowersoft/theotown/components/traffic/TrafficHandler;
.source "PedestrianTrafficHandler.java"


# static fields
.field public static final RANDOM_GRID:[F


# instance fields
.field public final COMMERCIAL_FACTOR:F

.field public final DENSITY_EXPONENT:F

.field public final INDUSTRIAL_FACTOR:F

.field public final MAX_POOL_SIZE:I

.field public final RESIDENTIAL_FACTOR:F

.field public com:F

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public ind:F

.field public influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

.field public lvl1:F

.field public lvl2:F

.field public lvl3:F

.field public final pedestrianPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Pedestrian;",
            ">;"
        }
    .end annotation
.end field

.field public final pedestrianSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/ProbabilitySelector<",
            "Linfo/flowersoft/theotown/draft/PedestrianDraft;",
            ">;"
        }
    .end annotation
.end field

.field public pendingBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public providingBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public rain:F

.field public res:F

.field public targetPedestrianCount:I

.field public weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x31

    .line 47
    new-array v0, v0, [F

    sput-object v0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->RANDOM_GRID:[F

    const/4 v0, 0x0

    .line 49
    :goto_7
    sget-object v1, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->RANDOM_GRID:[F

    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 50
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->RESIDENTIAL_FACTOR:F

    .line 37
    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->COMMERCIAL_FACTOR:F

    const p1, 0x3e4ccccd    # 0.2f

    .line 38
    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->INDUSTRIAL_FACTOR:F

    const p1, 0x3f4ccccd    # 0.8f

    .line 39
    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->DENSITY_EXPONENT:F

    const/16 p1, 0x400

    .line 44
    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->MAX_POOL_SIZE:I

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pedestrianPool:Ljava/util/List;

    .line 69
    new-instance p1, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pedestrianSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->providingBuildings:Ljava/util/List;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pendingBuildings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final allocatePedestrian()Linfo/flowersoft/theotown/city/objects/Pedestrian;
    .registers 3

    .line 601
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pedestrianPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 602
    new-instance v0, Linfo/flowersoft/theotown/city/objects/Pedestrian;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/objects/Pedestrian;-><init>()V

    return-object v0

    .line 604
    :cond_e
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pedestrianPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Pedestrian;

    return-object v0
.end method

.method public final analyzeTile(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 10

    .line 249
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v0

    .line 250
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result p1

    .line 251
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->RESIDENTIAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, p1, v2}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->res:F

    .line 252
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->COMMERCIAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v0, p1, v3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result v1

    mul-float/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->com:F

    .line 253
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->INDUSTRIAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v0, p1, v3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result v1

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    iput v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->ind:F

    .line 254
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->LEVEL_LOW:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v0, p1, v3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->lvl1:F

    .line 255
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->LEVEL_MIDDLE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v0, p1, v3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->lvl2:F

    .line 256
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->LEVEL_HIGH:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v0, p1, v3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->lvl3:F

    .line 257
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->DENSITY:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v0, p1, v3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result v1

    float-to-double v3, v1

    const-wide v5, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 258
    iget p2, p2, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    mul-float/2addr p2, v3

    sub-float p2, v2, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float p2, v2, p2

    .line 259
    iget v3, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->res:F

    iget v4, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->com:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->ind:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 260
    iget v4, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->rain:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    sub-float v4, v2, v4

    mul-float/2addr v1, v4

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr p2, v4

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr p2, v6

    mul-float/2addr v1, p2

    mul-float/2addr v3, v1

    .line 262
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->sampleTileRandomness(II)F

    move-result p2

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v1, p2

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v1, v6

    mul-float/2addr v1, v3

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 263
    iput v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->targetPedestrianCount:I

    .line 265
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->providingBuildings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 266
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pendingBuildings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    :goto_c3
    const/16 v3, 0x8

    if-gt v1, v3, :cond_10c

    .line 268
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 269
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v4

    add-int/2addr v4, p1

    .line 270
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_109

    .line 271
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eqz v3, :cond_109

    .line 273
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v4

    iget v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->pedestrianCount:F

    cmpl-float v4, v4, p2

    if-lez v4, :cond_fe

    .line 274
    iget v4, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->targetPedestrianCount:I

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v5

    iget v5, v5, Linfo/flowersoft/theotown/draft/BuildingDraft;->pedestrianCount:F

    add-float/2addr v5, v2

    sub-float/2addr v5, p2

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->targetPedestrianCount:I

    .line 275
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->providingBuildings:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_fe
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingPedestrians()I

    move-result v4

    if-eqz v4, :cond_109

    .line 278
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pendingBuildings:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_109
    mul-int/lit8 v1, v1, 0x2

    goto :goto_c3

    :cond_10c
    return-void
.end method

.method public final calculateInnerCoords(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Road;IILinfo/flowersoft/theotown/city/objects/Pedestrian;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 553
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getParcelX()I

    move-result v4

    .line 554
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getParcelY()I

    move-result v5

    .line 555
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getNextParcelX()I

    move-result v6

    .line 556
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getNextParcelY()I

    move-result v7

    .line 557
    div-int/lit8 v8, v4, 0x2

    .line 558
    div-int/lit8 v9, v5, 0x2

    .line 559
    div-int/lit8 v10, v6, 0x2

    .line 560
    div-int/lit8 v11, v7, 0x2

    const/4 v12, 0x0

    .line 562
    invoke-virtual {v0, v1, v3, v12}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getBorderOffset(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;I)F

    move-result v13

    const/4 v14, 0x1

    .line 563
    invoke-virtual {v0, v1, v3, v14}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getBorderOffset(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;I)F

    move-result v1

    .line 564
    invoke-virtual {v0, v2, v3, v12}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getBorderOffset(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;I)F

    move-result v12

    .line 565
    invoke-virtual {v0, v2, v3, v14}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getBorderOffset(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;I)F

    move-result v2

    sub-int v8, v8, p3

    int-to-float v8, v8

    add-float/2addr v8, v13

    .line 567
    rem-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v13, v15, v13

    mul-float/2addr v4, v13

    add-float/2addr v8, v4

    sub-int v9, v9, p4

    int-to-float v4, v9

    add-float/2addr v4, v1

    .line 568
    rem-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v1, v14

    sub-float v1, v15, v1

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    sub-int v10, v10, p3

    int-to-float v1, v10

    add-float/2addr v1, v12

    .line 569
    rem-int/lit8 v6, v6, 0x2

    int-to-float v5, v6

    mul-float/2addr v12, v14

    sub-float v6, v15, v12

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    sub-int v11, v11, p4

    int-to-float v5, v11

    add-float/2addr v5, v2

    .line 570
    rem-int/lit8 v7, v7, 0x2

    int-to-float v6, v7

    mul-float/2addr v2, v14

    sub-float/2addr v15, v2

    mul-float/2addr v6, v15

    add-float/2addr v5, v6

    .line 572
    invoke-virtual {v3, v8, v4, v1, v5}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->setInnerCoords(FFFF)V

    .line 574
    invoke-static {v8, v4, v1, v5}, Lio/blueflower/stapel2d/util/MathUtil;->dist(FFFF)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_75

    const/high16 v1, 0x3f000000    # 0.5f

    .line 576
    :cond_75
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->setDistance(F)V

    return-void
.end method

.method public final canMoveToParcel(JLinfo/flowersoft/theotown/city/objects/Road;II)Z
    .registers 8

    .line 525
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->getFlags()J

    move-result-wide p4

    .line 526
    iget-object p3, p3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean p3, p3, Linfo/flowersoft/theotown/draft/RoadDraft;->pedestrians:Z

    if-eqz p3, :cond_17

    and-long/2addr p1, p4

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_15

    cmp-long p1, p4, v0

    if-nez p1, :cond_17

    :cond_15
    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public final canSpawnOnParcel(JLinfo/flowersoft/theotown/city/objects/Road;II)Z
    .registers 15

    .line 530
    invoke-virtual/range {p0 .. p5}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->canMoveToParcel(JLinfo/flowersoft/theotown/city/objects/Road;II)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    .line 531
    :cond_8
    rem-int/lit8 p1, p4, 0x2

    rem-int/lit8 v0, p5, 0x2

    invoke-virtual {p3, p1, v0}, Linfo/flowersoft/theotown/city/objects/Road;->getPedestrianPaths(II)[B

    move-result-object p1

    .line 532
    array-length v0, p1

    if-nez v0, :cond_14

    return p2

    .line 534
    :cond_14
    div-int/lit8 v6, p4, 0x2

    .line 535
    div-int/lit8 v7, p5, 0x2

    move v8, p2

    .line 536
    :goto_19
    array-length v0, p1

    if-ge v8, v0, :cond_47

    .line 537
    aget-byte v0, p1, v8

    shl-int/lit8 v1, v0, 0x18

    shr-int/lit8 v1, v1, 0x1c

    shl-int/lit8 v0, v0, 0x1c

    shr-int/lit8 v0, v0, 0x1c

    add-int v4, p4, v1

    add-int v5, p5, v0

    .line 542
    div-int/lit8 v0, v4, 0x2

    .line 543
    div-int/lit8 v1, v5, 0x2

    if-ne v0, v6, :cond_32

    if-eq v1, v7, :cond_37

    :cond_32
    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    goto :goto_39

    :cond_37
    move-object v1, p3

    goto :goto_43

    .line 545
    :goto_39
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getNextRoad(Linfo/flowersoft/theotown/city/objects/Road;IIII)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    move p4, v2

    move p5, v3

    if-nez p3, :cond_43

    const/4 p1, 0x1

    return p1

    :cond_43
    :goto_43
    add-int/lit8 v8, v8, 0x1

    move-object p3, v1

    goto :goto_19

    :cond_47
    return p2
.end method

.method public drawBackground(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 13

    .line 286
    iget-object v0, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    const/4 v0, 0x0

    .line 287
    :goto_8
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->countPedestrians()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 288
    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/city/objects/Road;->getPedestrian(I)Linfo/flowersoft/theotown/city/objects/Pedestrian;

    move-result-object v6

    .line 289
    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->isForeground(Linfo/flowersoft/theotown/city/objects/Pedestrian;)Z

    move-result v1

    if-nez v1, :cond_21

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 290
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->drawPedestrian(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;Linfo/flowersoft/theotown/city/Drawer;)V

    goto :goto_25

    :cond_21
    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    :goto_25
    add-int/lit8 v0, v0, 0x1

    move p1, v3

    move p2, v4

    move-object p3, v5

    move-object p4, v7

    goto :goto_8

    :cond_2c
    return-void
.end method

.method public drawForeground(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 13

    .line 296
    iget-object v0, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    const/4 v0, 0x0

    .line 297
    :goto_8
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->countPedestrians()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 298
    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/city/objects/Road;->getPedestrian(I)Linfo/flowersoft/theotown/city/objects/Pedestrian;

    move-result-object v6

    .line 299
    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->isForeground(Linfo/flowersoft/theotown/city/objects/Pedestrian;)Z

    move-result v1

    if-eqz v1, :cond_21

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 300
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->drawPedestrian(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;Linfo/flowersoft/theotown/city/Drawer;)V

    goto :goto_25

    :cond_21
    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    :goto_25
    add-int/lit8 v0, v0, 0x1

    move p1, v3

    move p2, v4

    move-object p3, v5

    move-object p4, v7

    goto :goto_8

    :cond_2c
    return-void
.end method

.method public final drawPedestrian(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 13

    .line 306
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getInnerX()F

    move-result p1

    .line 307
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getInnerY()F

    move-result p2

    .line 311
    iget v0, p3, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_29

    if-eq v0, v1, :cond_25

    if-eq v0, v2, :cond_23

    const/4 v5, 0x4

    if-eq v0, v5, :cond_20

    const/16 v5, 0x8

    if-eq v0, v5, :cond_1d

    goto :goto_26

    :cond_1d
    sub-float v4, v3, p2

    goto :goto_26

    :cond_20
    sub-float v4, v3, p1

    goto :goto_26

    :cond_23
    move v4, p2

    goto :goto_26

    :cond_25
    move v4, p1

    :goto_26
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v4, v0

    .line 330
    :cond_29
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    if-eq v0, v1, :cond_40

    if-eq v0, v2, :cond_3b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    goto :goto_45

    :cond_37
    sub-float/2addr v3, p2

    move p2, p1

    move p1, v3

    goto :goto_45

    :cond_3b
    sub-float p1, v3, p1

    sub-float p2, v3, p2

    goto :goto_45

    :cond_40
    sub-float p1, v3, p1

    move v6, p2

    move p2, p1

    move p1, v6

    :goto_45
    const/high16 v0, 0x41800000    # 16.0f

    add-float v1, p1, p2

    mul-float/2addr v1, v0

    const/high16 v0, 0x41000000    # 8.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, v0

    sub-float/2addr p1, v4

    .line 350
    iget p2, p3, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    mul-int/lit8 p2, p2, 0xc

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 351
    sget-boolean p2, Linfo/flowersoft/theotown/resources/Settings;->smoothCarMovement:Z

    if-nez p2, :cond_5d

    float-to-int p2, v1

    int-to-float v1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    .line 356
    :cond_5d
    iget-object p2, p5, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result p2

    .line 357
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getAge()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 358
    iget-object v0, p5, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int p3, v2

    const/16 v2, 0xff

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 360
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getFrame()I

    move-result p4

    invoke-virtual {p5, p3, v1, p1, p4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 361
    iget-object p1, p5, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public final getBorderOffset(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;I)F
    .registers 5

    .line 581
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getSeed()I

    move-result p2

    mul-int/lit8 p3, p3, 0x3

    add-int/lit8 p3, p3, 0x7

    shr-int/2addr p2, p3

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    .line 582
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getSidewalkOffset()F

    move-result p3

    .line 583
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getSidewalkSize()F

    move-result v0

    .line 584
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz p1, :cond_22

    const p1, 0x3e4ccccd    # 0.2f

    .line 585
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    :cond_22
    const/high16 p1, 0x3f000000    # 0.5f

    sub-float/2addr p2, p1

    mul-float/2addr p2, v0

    add-float/2addr p3, p2

    return p3
.end method

.method public final getNextRoad(Linfo/flowersoft/theotown/city/objects/Road;IIII)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 9

    .line 438
    div-int/lit8 p2, p2, 0x2

    .line 439
    div-int/lit8 p3, p3, 0x2

    .line 440
    div-int/lit8 p4, p4, 0x2

    .line 441
    div-int/lit8 p5, p5, 0x2

    if-ne p2, p4, :cond_d

    if-ne p3, p5, :cond_d

    return-object p1

    .line 445
    :cond_d
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p4, p5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    sub-int p2, p4, p2

    sub-int p3, p5, p3

    .line 446
    invoke-static {p2, p3}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result p2

    .line 447
    iget p3, p1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    .line 448
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-ne v0, p2, :cond_26

    add-int/lit8 p3, p3, 0x1

    .line 449
    :cond_26
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p4, p5, p3}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 450
    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eq v2, p1, :cond_3d

    if-eq v2, p2, :cond_3d

    if-eqz v2, :cond_3d

    goto :goto_3e

    :cond_3d
    return-object v0

    .line 451
    :cond_3e
    :goto_3e
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p4, p5, p3}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 452
    iget p3, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result p2

    if-eq p3, p2, :cond_55

    return-object v1

    :cond_55
    return-object p1

    :cond_56
    return-object v1
.end method

.method public final getTarget(Linfo/flowersoft/theotown/city/objects/Road;)I
    .registers 4

    .line 153
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->targetPedestrianCount:I

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->hashCode()I

    move-result p1

    const v1, 0xffff

    and-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public final getVisY(Linfo/flowersoft/theotown/city/objects/Pedestrian;)F
    .registers 7

    .line 369
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getInnerX()F

    move-result v0

    .line 370
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getInnerY()F

    move-result p1

    .line 373
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_23

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    goto :goto_28

    :cond_1a
    sub-float/2addr v3, p1

    move p1, v0

    move v0, v3

    goto :goto_28

    :cond_1e
    sub-float v0, v3, v0

    sub-float p1, v3, p1

    goto :goto_28

    :cond_23
    sub-float v0, v3, v0

    move v4, v0

    move v0, p1

    move p1, v4

    :goto_28
    sub-float/2addr v0, p1

    return v0
.end method

.method public final isForeground(Linfo/flowersoft/theotown/city/objects/Pedestrian;)Z
    .registers 3

    .line 365
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getVisY(Linfo/flowersoft/theotown/city/objects/Pedestrian;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
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

    .line 98
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public prepare()V
    .registers 3

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWeather;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    return-void
.end method

.method public final releasePedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)V
    .registers 4

    if-eqz p1, :cond_11

    .line 614
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pedestrianPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pedestrianPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public final removeRandomPedestrian(Linfo/flowersoft/theotown/city/objects/Road;)Z
    .registers 4

    .line 194
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->countPedestrians()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 197
    :cond_8
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 198
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Road;->getPedestrian(I)Linfo/flowersoft/theotown/city/objects/Pedestrian;

    move-result-object p1

    const/16 v0, 0xa

    .line 199
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->setAge(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public final sampleDraft(Linfo/flowersoft/theotown/city/objects/Road;)Linfo/flowersoft/theotown/draft/PedestrianDraft;
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 211
    :goto_2
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->PEDESTRIANS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 212
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->PEDESTRIANS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/PedestrianDraft;

    .line 213
    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/PedestrianDraft;->autoSpawn:Z

    if-eqz v3, :cond_4b

    iget-wide v3, v2, Linfo/flowersoft/theotown/draft/PedestrianDraft;->flags:J

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getFlags()J

    move-result-wide v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4b

    .line 214
    iget v3, v2, Linfo/flowersoft/theotown/draft/PedestrianDraft;->res:F

    iget v4, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->res:F

    mul-float/2addr v3, v4

    iget v4, v2, Linfo/flowersoft/theotown/draft/PedestrianDraft;->com:F

    iget v5, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->com:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v2, Linfo/flowersoft/theotown/draft/PedestrianDraft;->ind:F

    iget v5, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->ind:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v2, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl1:F

    iget v5, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->lvl1:F

    mul-float/2addr v4, v5

    iget v5, v2, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl2:F

    iget v6, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->lvl2:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v2, Linfo/flowersoft/theotown/draft/PedestrianDraft;->lvl3:F

    iget v6, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->lvl3:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 216
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pedestrianSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v4, v2, v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4e
    const/4 p1, 0x0

    move v2, p1

    move v3, v2

    move v1, v0

    .line 222
    :goto_52
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->providingBuildings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_73

    .line 223
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->providingBuildings:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v4

    .line 224
    iget v5, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->pedestrianCount:F

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v2, v5

    .line 225
    iget v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->pedestrianCount:F

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 227
    :cond_73
    iget p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->targetPedestrianCount:I

    int-to-float p1, p1

    sub-float/2addr p1, v3

    const v1, 0x3dcccccd    # 0.1f

    .line 228
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v2, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pedestrianSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    .line 229
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getProbabilitySum()F

    move-result p1

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    mul-float/2addr v2, p1

    .line 230
    :goto_8d
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->providingBuildings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_b0

    .line 231
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->providingBuildings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    .line 232
    iget-object v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->pedestrianDraft:Linfo/flowersoft/theotown/draft/PedestrianDraft;

    if-eqz v1, :cond_ad

    .line 234
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pedestrianSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->pedestrianCount:F

    mul-float/2addr p1, v2

    invoke-virtual {v3, v1, p1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_ad
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 238
    :cond_b0
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pedestrianSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/PedestrianDraft;

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pedestrianSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    return-object p1
.end method

.method public final sampleDraft(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/draft/PedestrianDraft;
    .registers 4

    .line 244
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->pedestrianDraft:Linfo/flowersoft/theotown/draft/PedestrianDraft;

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->pedestrianDraft:Linfo/flowersoft/theotown/draft/PedestrianDraft;

    return-object p1

    .line 245
    :cond_f
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->sampleDraft(Linfo/flowersoft/theotown/city/objects/Road;)Linfo/flowersoft/theotown/draft/PedestrianDraft;

    move-result-object p1

    return-object p1
.end method

.method public final sampleTileRandomness(II)F
    .registers 4

    .line 591
    sget-object v0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->RANDOM_GRID:[F

    rem-int/lit8 p1, p1, 0x7

    rem-int/lit8 p2, p2, 0x7

    mul-int/lit8 p2, p2, 0x7

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
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

.method public final setupPedestrians(IILinfo/flowersoft/theotown/city/objects/Road;)V
    .registers 12

    .line 157
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->markSetupPedestrians()V

    .line 158
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getTarget(Linfo/flowersoft/theotown/city/objects/Road;)I

    move-result v0

    .line 159
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->countPedestrians()I

    move-result v1

    :goto_b
    if-ge v1, v0, :cond_1f

    .line 160
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->sampleDraft(Linfo/flowersoft/theotown/city/objects/Road;)Linfo/flowersoft/theotown/draft/PedestrianDraft;

    move-result-object v7

    if-nez v7, :cond_14

    goto :goto_1f

    :cond_14
    const/4 v6, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 162
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->spawnPedestrian(IILinfo/flowersoft/theotown/city/objects/Road;ZLinfo/flowersoft/theotown/draft/PedestrianDraft;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final spawnPedestrian(IILinfo/flowersoft/theotown/city/objects/Road;ZLinfo/flowersoft/theotown/draft/PedestrianDraft;)V
    .registers 21

    move/from16 v0, p1

    move/from16 v1, p2

    .line 461
    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 462
    invoke-virtual {v8, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    move-object/from16 v10, p5

    move v5, v3

    .line 464
    iget-wide v3, v10, Linfo/flowersoft/theotown/draft/PedestrianDraft;->flags:J

    mul-int/lit8 v6, v0, 0x2

    add-int v12, v6, v5

    mul-int/lit8 v5, v1, 0x2

    add-int v13, v5, v2

    move-object v2, p0

    move-object/from16 v5, p3

    move v6, v12

    move v7, v13

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->canSpawnOnParcel(JLinfo/flowersoft/theotown/city/objects/Road;II)Z

    move-result v3

    if-eqz v3, :cond_5b

    if-eqz p4, :cond_35

    const/high16 v3, 0x41200000    # 10.0f

    .line 465
    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v4, v3

    :goto_33
    move v14, v4

    goto :goto_37

    :cond_35
    const/4 v4, 0x0

    goto :goto_33

    .line 467
    :goto_37
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->allocatePedestrian()Linfo/flowersoft/theotown/city/objects/Pedestrian;

    move-result-object v9

    .line 468
    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v11, v3, v4

    invoke-virtual/range {v9 .. v14}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->setup(Linfo/flowersoft/theotown/draft/PedestrianDraft;IIIF)V

    .line 469
    invoke-virtual {p0, v0, v1, v5, v9}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->walkToNewTarget(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;)Z

    .line 470
    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {v9, v3}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->setProgress(F)V

    .line 471
    invoke-virtual {v5, v9}, Linfo/flowersoft/theotown/city/objects/Road;->addPedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)Linfo/flowersoft/theotown/city/objects/Pedestrian;

    move-result-object v3

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->releasePedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)V

    .line 472
    invoke-virtual {p0, v0, v1, v5, v9}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->updatePedestrian(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;)V

    :cond_5b
    return-void
.end method

.method public update()V
    .registers 2

    .line 116
    invoke-super {p0}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->update()V

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->getRain()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->rain:F

    return-void
.end method

.method public update(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 10

    const v0, -0x800001

    const/4 v1, 0x0

    .line 122
    :goto_4
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->countPedestrians()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 123
    invoke-virtual {p3, v1}, Linfo/flowersoft/theotown/city/objects/Road;->getPedestrian(I)Linfo/flowersoft/theotown/city/objects/Pedestrian;

    move-result-object v2

    .line 126
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getVisY(Linfo/flowersoft/theotown/city/objects/Pedestrian;)F

    move-result v3

    cmpg-float v4, v3, v0

    if-gez v4, :cond_1e

    if-lez v1, :cond_1e

    add-int/lit8 v3, v1, -0x1

    .line 128
    invoke-virtual {p3, v1, v3}, Linfo/flowersoft/theotown/city/objects/Road;->swapPedestrians(II)V

    goto :goto_1f

    :cond_1e
    move v0, v3

    .line 134
    :goto_1f
    invoke-virtual {p0, p1, p2, p3, v2}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->updatePedestrian(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 139
    :cond_25
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->haveSetupPedestrians()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 141
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3c

    .line 142
    invoke-virtual {p0, p3, p4}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->analyzeTile(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 143
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->updatePedestrianAmount(IILinfo/flowersoft/theotown/city/objects/Road;)V

    :cond_3c
    return-void

    .line 147
    :cond_3d
    invoke-virtual {p0, p3, p4}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->analyzeTile(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 148
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->setupPedestrians(IILinfo/flowersoft/theotown/city/objects/Road;)V

    return-void
.end method

.method public final updatePedestrian(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;)V
    .registers 13

    .line 394
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTimeDelta()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 395
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getAge()F

    move-result v2

    add-float v6, v2, v1

    .line 396
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getSeed()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 397
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getProgress()F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v4, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v2

    mul-float/2addr v4, v1

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getDistance()F

    move-result v2

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    const/4 v2, 0x0

    cmpl-float v4, v6, v2

    if-ltz v4, :cond_42

    cmpg-float v1, v6, v1

    if-gez v1, :cond_42

    .line 400
    invoke-virtual/range {p3 .. p4}, Linfo/flowersoft/theotown/city/objects/Road;->removePedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)Z

    .line 401
    invoke-virtual {p0, p4}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->releasePedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)V

    return-void

    :cond_42
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v1

    if-ltz v4, :cond_57

    .line 406
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->walkToNewTarget(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 407
    invoke-virtual/range {p3 .. p4}, Linfo/flowersoft/theotown/city/objects/Road;->removePedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)Z

    .line 408
    invoke-virtual {p0, p4}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->releasePedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)V

    return-void

    :cond_55
    move v7, v2

    goto :goto_58

    :cond_57
    move v7, v3

    .line 414
    :goto_58
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getStartInnerX()F

    move-result v3

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getEndInnerX()F

    move-result v4

    invoke-static {v3, v4, v7}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v3

    .line 415
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getStartInnerY()F

    move-result v4

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getEndInnerY()F

    move-result v5

    invoke-static {v4, v5, v7}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v4

    cmpg-float v5, v3, v2

    if-ltz v5, :cond_80

    cmpl-float v5, v3, v1

    if-gez v5, :cond_80

    cmpg-float v2, v4, v2

    if-ltz v2, :cond_80

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_c8

    .line 418
    :cond_80
    invoke-virtual/range {p3 .. p4}, Linfo/flowersoft/theotown/city/objects/Road;->removePedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)Z

    .line 420
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getParcelX()I

    move-result v2

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getParcelY()I

    move-result v3

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getNextParcelX()I

    move-result v4

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getNextParcelY()I

    move-result v5

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getNextRoad(Linfo/flowersoft/theotown/city/objects/Road;IIII)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-nez v2, :cond_9f

    .line 422
    invoke-virtual {p0, p4}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->releasePedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)V

    return-void

    .line 426
    :cond_9f
    invoke-virtual {v2, p4}, Linfo/flowersoft/theotown/city/objects/Road;->addPedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)Linfo/flowersoft/theotown/city/objects/Pedestrian;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->releasePedestrian(Linfo/flowersoft/theotown/city/objects/Pedestrian;)V

    .line 427
    iget v3, v2, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iget v4, v2, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    move-object v0, p0

    move-object v1, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->calculateInnerCoords(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Road;IILinfo/flowersoft/theotown/city/objects/Pedestrian;)V

    .line 428
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getStartInnerX()F

    move-result v0

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getEndInnerX()F

    move-result v1

    invoke-static {v0, v1, v7}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v3

    .line 429
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getStartInnerY()F

    move-result v0

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getEndInnerY()F

    move-result v1

    invoke-static {v0, v1, v7}, Lio/blueflower/stapel2d/util/MathUtil;->lerp(FFF)F

    move-result v4

    .line 432
    :cond_c8
    invoke-virtual {p4, v3, v4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->setInner(FF)V

    .line 433
    invoke-virtual {p4, v7}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->setProgress(F)V

    .line 434
    invoke-virtual {p4, v6}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->setAge(F)V

    return-void
.end method

.method public final updatePedestrianAmount(IILinfo/flowersoft/theotown/city/objects/Road;)V
    .registers 12

    .line 167
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->countPedestrians()I

    move-result v0

    .line 168
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getTarget(Linfo/flowersoft/theotown/city/objects/Road;)I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 169
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->sampleDraft(Linfo/flowersoft/theotown/city/objects/Road;)Linfo/flowersoft/theotown/draft/PedestrianDraft;

    move-result-object v7

    if-eqz v7, :cond_1b

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 171
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->spawnPedestrian(IILinfo/flowersoft/theotown/city/objects/Road;ZLinfo/flowersoft/theotown/draft/PedestrianDraft;)V

    move v1, v3

    move-object v3, v5

    goto :goto_31

    :cond_1b
    move-object v2, p0

    move v1, p1

    move v4, p2

    move-object v3, p3

    goto :goto_31

    :cond_20
    move-object v2, p0

    move v1, p1

    move v4, p2

    move-object v3, p3

    if-lez v0, :cond_31

    .line 173
    iget p1, v2, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->targetPedestrianCount:I

    add-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0xa

    if-le v0, p1, :cond_31

    .line 174
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->removeRandomPedestrian(Linfo/flowersoft/theotown/city/objects/Road;)Z

    .line 177
    :cond_31
    :goto_31
    iget-object p1, v2, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pendingBuildings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6e

    .line 178
    iget-object p1, v2, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->pendingBuildings:Ljava/util/List;

    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 179
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingPedestrians()I

    move-result p2

    if-lez p2, :cond_61

    .line 181
    invoke-virtual {p0, v3, p1}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->sampleDraft(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/draft/PedestrianDraft;

    move-result-object v5

    if-eqz v5, :cond_5e

    move v2, v4

    const/4 v4, 0x0

    move-object v0, p0

    .line 183
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->spawnPedestrian(IILinfo/flowersoft/theotown/city/objects/Road;ZLinfo/flowersoft/theotown/draft/PedestrianDraft;)V

    move-object v2, v0

    :cond_5e
    add-int/lit8 p2, p2, -0x1

    goto :goto_6b

    :cond_61
    if-gez p2, :cond_6b

    .line 186
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->removeRandomPedestrian(Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result p3

    if-eqz p3, :cond_6b

    add-int/lit8 p2, p2, 0x1

    .line 189
    :cond_6b
    :goto_6b
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Building;->setPendingPedestrians(I)V

    :cond_6e
    return-void
.end method

.method public final walkToNewTarget(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Pedestrian;)Z
    .registers 26

    .line 477
    invoke-virtual/range {p4 .. p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getNextParcelX()I

    move-result v2

    .line 478
    invoke-virtual/range {p4 .. p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getNextParcelY()I

    move-result v3

    .line 479
    invoke-virtual/range {p4 .. p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getParcelX()I

    move-result v6

    .line 480
    invoke-virtual/range {p4 .. p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getParcelY()I

    move-result v7

    const/4 v8, 0x0

    if-ltz v2, :cond_c0

    if-ltz v3, :cond_c0

    .line 482
    div-int/lit8 v0, v2, 0x2

    move/from16 v12, p1

    if-ne v0, v12, :cond_c0

    div-int/lit8 v0, v3, 0x2

    move/from16 v13, p2

    if-eq v0, v13, :cond_23

    goto/16 :goto_c0

    .line 486
    :cond_23
    rem-int/lit8 v0, v2, 0x2

    rem-int/lit8 v1, v3, 0x2

    move-object/from16 v10, p3

    invoke-virtual {v10, v0, v1}, Linfo/flowersoft/theotown/city/objects/Road;->getPedestrianPaths(II)[B

    move-result-object v9

    .line 490
    array-length v0, v9

    if-nez v0, :cond_31

    return v8

    .line 494
    :cond_31
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    array-length v1, v9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    const/16 v1, 0x14

    .line 497
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_61

    move v4, v2

    move v5, v3

    move-object/from16 v0, p0

    move-object v1, v10

    .line 498
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getNextRoad(Linfo/flowersoft/theotown/city/objects/Road;IIII)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 499
    invoke-virtual/range {p4 .. p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getDraft()Linfo/flowersoft/theotown/draft/PedestrianDraft;

    move-result-object v0

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->flags:J

    move v5, v3

    move-object v3, v4

    move v4, v2

    move-wide v1, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->canMoveToParcel(JLinfo/flowersoft/theotown/city/objects/Road;II)Z

    move-result v1

    move v2, v4

    move-object v4, v3

    move v3, v5

    if-nez v1, :cond_62

    :cond_61
    move-object v4, v14

    :cond_62
    move v0, v2

    move v1, v3

    move v10, v8

    .line 502
    :goto_65
    array-length v5, v9

    if-ge v10, v5, :cond_ae

    if-nez v4, :cond_ae

    add-int v0, v11, v10

    .line 503
    array-length v1, v9

    rem-int/2addr v0, v1

    .line 504
    aget-byte v0, v9, v0

    shl-int/lit8 v1, v0, 0x18

    shr-int/lit8 v1, v1, 0x1c

    shl-int/lit8 v0, v0, 0x1c

    shr-int/lit8 v0, v0, 0x1c

    add-int/2addr v1, v2

    add-int v5, v3, v0

    if-ne v1, v6, :cond_84

    if-ne v5, v7, :cond_84

    move/from16 v19, v1

    move/from16 v20, v5

    goto :goto_a7

    :cond_84
    move-object/from16 v0, p0

    move v4, v1

    move-object/from16 v1, p3

    .line 511
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->getNextRoad(Linfo/flowersoft/theotown/city/objects/Road;IIII)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v18

    move/from16 v19, v4

    move/from16 v20, v5

    if-eqz v18, :cond_a5

    .line 513
    invoke-virtual/range {p4 .. p4}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->getDraft()Linfo/flowersoft/theotown/draft/PedestrianDraft;

    move-result-object v0

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->flags:J

    move-object/from16 v15, p0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v20}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->canMoveToParcel(JLinfo/flowersoft/theotown/city/objects/Road;II)Z

    move-result v0

    if-nez v0, :cond_a5

    move-object v4, v14

    goto :goto_a7

    :cond_a5
    move-object/from16 v4, v18

    :goto_a7
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    goto :goto_65

    :cond_ae
    if-nez v4, :cond_b1

    return v8

    :cond_b1
    move-object/from16 v14, p4

    .line 519
    invoke-virtual {v14, v0, v1}, Linfo/flowersoft/theotown/city/objects/Pedestrian;->walkTo(II)V

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object v11, v4

    .line 520
    invoke-virtual/range {v9 .. v14}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->calculateInnerCoords(Linfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/objects/Road;IILinfo/flowersoft/theotown/city/objects/Pedestrian;)V

    const/4 v0, 0x1

    return v0

    :cond_c0
    :goto_c0
    return v8
.end method
