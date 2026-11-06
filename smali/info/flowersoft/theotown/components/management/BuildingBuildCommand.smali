###### Class info.flowersoft.theotown.components.management.BuildingBuildCommand (info.flowersoft.theotown.components.management.BuildingBuildCommand)
.class public Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;
.super Linfo/flowersoft/theotown/components/management/BuildCommand;
.source "BuildingBuildCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;
    }
.end annotation


# instance fields
.field public absoluteDay:J

.field public final buildSelectionSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/ProbabilitySelector<",
            "Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;",
            ">;"
        }
    .end annotation
.end field

.field public final drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final frames:Lio/blueflower/stapel2d/util/IntList;

.field public final oldBuildings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public final positionsXY:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public static synthetic $r8$lambda$5QpTq-PHG2S7K7d18mRiDd2KP8E(Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;Linfo/flowersoft/theotown/draft/BuildingDraft;III)V
    .registers 12

    .line 285
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .line 286
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;IIZZI)Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    move-result-object p1

    move v4, v6

    if-nez p1, :cond_44

    .line 289
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 291
    iget-object p3, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->decorationBuilder:Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;

    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;->onBuildBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    goto :goto_1c

    .line 293
    :cond_2e
    iget-object p0, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 294
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getPeopleInfoGrid()Linfo/flowersoft/theotown/util/InfoGrid;

    move-result-object p0

    iget p1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget p2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    .line 295
    invoke-virtual {p0, v2, v3, p1}, Linfo/flowersoft/theotown/util/InfoGrid;->add(IIF)V

    :cond_44
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;Linfo/flowersoft/theotown/city/modifier/CityModifier;Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;)V
    .registers 5

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/management/BuildCommand;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;Linfo/flowersoft/theotown/city/modifier/CityModifier;Linfo/flowersoft/theotown/components/decoration/DecorationBuilder;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->drafts:Ljava/util/List;

    .line 40
    new-instance p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->positionsXY:Lio/blueflower/stapel2d/util/IntList;

    .line 41
    new-instance p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->frames:Lio/blueflower/stapel2d/util/IntList;

    .line 43
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->oldBuildings:Ljava/util/Set;

    .line 51
    new-instance p1, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 p3, 0x64

    invoke-direct {p1, p2, p3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;I)V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->buildSelectionSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    return-void
.end method


# virtual methods
.method public final evalF(Lio/blueflower/stapel2d/util/MinimumSelector;Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;II)F
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/MinimumSelector<",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            ">;",
            "Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;",
            "II)F"
        }
    .end annotation

    .line 318
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/MinimumSelector;->clear()V

    int-to-float v0, p4

    mul-int/2addr p3, p3

    int-to-float p3, p3

    div-float/2addr v0, p3

    .line 319
    iput v0, p2, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->density:F

    .line 320
    iput p4, p2, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    .line 321
    iget-object p3, p0, Linfo/flowersoft/theotown/components/management/BuildCommand;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p1, p4}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->calculateHappinessImmediate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Lio/blueflower/stapel2d/util/MinimumSelector;Z)V

    const p2, 0x3efae148    # 0.49f

    .line 322
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimumValue()F

    move-result p1

    sub-float/2addr p2, p1

    return p2
.end method

.method public getMinDaysUntilReplaced(Linfo/flowersoft/theotown/city/objects/Building;)D
    .registers 8

    .line 326
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_50

    .line 328
    :cond_13
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v0, v1, :cond_22

    goto :goto_4a

    .line 331
    :cond_22
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->absoluteDay:J

    long-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide v0

    .line 332
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    const v2, 0x3c23d70a    # 0.01f

    int-to-float p1, p1

    mul-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p1, v2

    float-to-double v2, p1

    .line 334
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    const-wide v4, 0x4046800000000000L    # 45.0

    add-double/2addr v2, v4

    sub-double/2addr v2, v0

    return-wide v2

    :cond_4a
    :goto_4a
    const-wide v0, -0x10000000000001L

    return-wide v0

    :cond_50
    :goto_50
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide v0
.end method

.method public run()Linfo/flowersoft/theotown/components/BuildCommandResult;
    .registers 36

    move-object/from16 v0, p0

    .line 56
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDING_PEOPLE_COUNTER:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v3, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->level:I

    .line 57
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;->getCounter(Linfo/flowersoft/theotown/draft/ZoneDraft;I)Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;

    move-result-object v1

    .line 59
    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    iput-wide v2, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->absoluteDay:J

    .line 61
    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->oldBuildings:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 69
    new-instance v2, Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-direct {v2}, Lio/blueflower/stapel2d/util/MinimumSelector;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v29, 0x0

    .line 73
    :goto_2c
    iget-object v6, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v6

    const/16 v21, -0x1

    if-ge v3, v6, :cond_2d6

    const/4 v6, 0x0

    .line 74
    :goto_37
    iget-object v7, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_2cb

    .line 75
    iget-object v7, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v6, v3}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v7

    .line 76
    iget-object v12, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v12, v6, v3}, Linfo/flowersoft/theotown/city/Tiles;->getMinZoneSize(II)I

    move-result v12

    .line 77
    iget-object v13, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v6, v3}, Linfo/flowersoft/theotown/city/Tiles;->getMaxZoneSize(II)I

    move-result v13

    if-eqz v7, :cond_2a1

    .line 79
    invoke-virtual {v1, v7}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->contains(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v14

    if-eqz v14, :cond_2a1

    add-int/lit8 v22, v18, 0x1

    .line 82
    invoke-virtual {v1, v7}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->getMaxSize(Linfo/flowersoft/theotown/draft/ZoneDraft;)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 84
    iget-object v14, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->oldBuildings:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->clear()V

    const-wide v14, -0x10000000000001L

    move v9, v8

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_72
    if-gt v9, v13, :cond_292

    const-wide/16 v18, 0x0

    cmpg-double v20, v14, v18

    if-gtz v20, :cond_292

    move/from16 v11, v16

    move/from16 v24, v17

    const/4 v10, 0x0

    const/16 v23, 0x0

    :goto_81
    const/4 v8, 0x2

    if-ge v10, v9, :cond_135

    cmpg-double v16, v14, v18

    if-gtz v16, :cond_135

    move/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v3, v24

    const/4 v4, 0x0

    :goto_8f
    if-ge v4, v8, :cond_9b

    move/from16 v26, v8

    const/4 v8, 0x1

    if-lt v4, v8, :cond_a0

    add-int/lit8 v8, v9, -0x1

    if-ge v10, v8, :cond_9b

    goto :goto_a0

    :cond_9b
    move/from16 v28, v5

    move v8, v6

    goto/16 :goto_128

    :cond_a0
    :goto_a0
    cmpg-double v8, v14, v18

    if-gtz v8, :cond_9b

    rsub-int/lit8 v8, v4, 0x1

    mul-int v20, v10, v8

    add-int/lit8 v24, v9, -0x1

    mul-int v27, v24, v4

    add-int v20, v20, v27

    mul-int v27, v10, v4

    mul-int v24, v24, v8

    add-int v27, v27, v24

    .line 95
    iget-object v8, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    move/from16 v24, v4

    add-int v4, v6, v20

    move/from16 v28, v5

    add-int v5, v17, v27

    invoke-virtual {v8, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v4

    if-eqz v4, :cond_11e

    .line 98
    iget-object v5, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->oldBuildings:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11e

    move v8, v6

    .line 100
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->getMinDaysUntilReplaced(Linfo/flowersoft/theotown/city/objects/Building;)D

    move-result-wide v5

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 102
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->isFullOfWaste()Z

    move-result v14

    const-wide v31, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v14, :cond_e3

    :cond_e0
    :goto_e0
    move-wide/from16 v14, v31

    goto :goto_11f

    .line 104
    :cond_e3
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_113

    .line 105
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v14

    iget v15, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->level:I

    if-gt v14, v15, :cond_e0

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v14

    iget-boolean v14, v14, Linfo/flowersoft/theotown/draft/BuildingDraft;->rebuild:Z

    if-eqz v14, :cond_e0

    iget-boolean v14, v7, Linfo/flowersoft/theotown/draft/ZoneDraft;->rebuild:Z

    if-nez v14, :cond_fe

    goto :goto_e0

    .line 108
    :cond_fe
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v14

    iget v15, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->level:I

    if-ne v14, v15, :cond_115

    .line 109
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getCurrentPeople()I

    move-result v14

    add-int/2addr v11, v14

    .line 112
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getCurrentPeople()I

    move-result v4

    .line 110
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_113
    :goto_113
    move-wide v14, v5

    goto :goto_11f

    .line 116
    :cond_115
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getCurrentPeople()I

    move-result v4

    .line 114
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_113

    :cond_11e
    move v8, v6

    :goto_11f
    add-int/lit8 v4, v24, 0x1

    move v6, v8

    move/from16 v8, v26

    move/from16 v5, v28

    goto/16 :goto_8f

    :goto_128
    add-int/lit8 v10, v10, 0x1

    move/from16 v24, v3

    move v6, v8

    move-object/from16 v4, v16

    move/from16 v3, v17

    move/from16 v5, v28

    goto/16 :goto_81

    :cond_135
    move/from16 v17, v3

    move-object/from16 v16, v4

    move/from16 v28, v5

    move/from16 v26, v8

    move v8, v6

    if-lt v9, v12, :cond_26d

    rsub-int/lit8 v3, v9, 0x8

    mul-int/lit8 v3, v3, 0x4

    int-to-double v3, v3

    add-double/2addr v3, v14

    cmpg-double v3, v3, v18

    if-gtz v3, :cond_26d

    add-int v3, v24, v11

    .line 125
    div-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    const/16 v30, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 126
    iget v4, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->pressure:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v11

    move v5, v12

    .line 128
    iget-object v12, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    move-wide/from16 v18, v14

    iget-object v14, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v15, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->level:I

    const/16 v20, 0x0

    move-wide/from16 v31, v18

    move/from16 v19, v9

    move/from16 v18, v9

    move v6, v13

    move-object/from16 v13, v16

    move/from16 v16, v8

    move-wide/from16 v8, v31

    invoke-virtual/range {v12 .. v20}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->getHappinessContext(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/draft/ZoneDraft;IIIIIF)Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    move-result-object v10

    move/from16 v12, v16

    move/from16 v14, v17

    move/from16 v13, v18

    .line 133
    invoke-virtual {v0, v2, v10, v13, v3}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->evalF(Lio/blueflower/stapel2d/util/MinimumSelector;Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;II)F

    move-result v15

    cmpg-float v15, v15, v23

    if-gtz v15, :cond_1cf

    invoke-virtual {v0, v2, v10, v13, v4}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->evalF(Lio/blueflower/stapel2d/util/MinimumSelector;Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;II)F

    move-result v15

    cmpl-float v15, v15, v23

    if-lez v15, :cond_1cf

    .line 136
    invoke-virtual {v0, v2, v10, v13, v3}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->evalF(Lio/blueflower/stapel2d/util/MinimumSelector;Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;II)F

    move-result v15

    invoke-virtual {v0, v2, v10, v13, v4}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->evalF(Lio/blueflower/stapel2d/util/MinimumSelector;Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;II)F

    move-result v16

    mul-float v15, v15, v16

    cmpg-float v15, v15, v23

    if-gtz v15, :cond_1cc

    move v15, v3

    move/from16 v16, v4

    :goto_1a3
    sub-int v4, v16, v15

    move/from16 v17, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_1c3

    add-int v4, v15, v16

    .line 139
    div-int/lit8 v4, v4, 0x2

    .line 140
    invoke-virtual {v0, v2, v10, v13, v4}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->evalF(Lio/blueflower/stapel2d/util/MinimumSelector;Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;II)F

    move-result v5

    cmpg-float v18, v5, v23

    if-gez v18, :cond_1b8

    move v15, v4

    goto :goto_1be

    :cond_1b8
    cmpl-float v5, v5, v23

    if-lez v5, :cond_1c1

    move/from16 v16, v4

    :goto_1be
    move/from16 v5, v17

    goto :goto_1a3

    :cond_1c1
    const/4 v5, 0x1

    goto :goto_1c6

    :cond_1c3
    move/from16 v4, v21

    const/4 v5, 0x0

    :goto_1c6
    if-nez v5, :cond_1c9

    goto :goto_1ca

    :cond_1c9
    move v15, v4

    :goto_1ca
    move v4, v15

    goto :goto_1dc

    :cond_1cc
    move/from16 v17, v5

    goto :goto_1da

    :cond_1cf
    move/from16 v17, v5

    .line 155
    invoke-virtual {v0, v2, v10, v13, v3}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->evalF(Lio/blueflower/stapel2d/util/MinimumSelector;Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;II)F

    move-result v5

    cmpg-float v5, v5, v23

    if-gtz v5, :cond_1da

    goto :goto_1dc

    :cond_1da
    :goto_1da
    move/from16 v4, v21

    .line 159
    :goto_1dc
    invoke-virtual {v1, v7, v13, v3, v4}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->evaluate(Linfo/flowersoft/theotown/draft/ZoneDraft;III)I

    move-result v5

    if-lez v5, :cond_233

    .line 162
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/MinimumSelector;->clear()V

    int-to-float v5, v4

    mul-int v15, v13, v13

    int-to-float v15, v15

    div-float/2addr v5, v15

    .line 163
    iput v5, v10, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->density:F

    .line 164
    iput v4, v10, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    .line 165
    iget-object v5, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    move-object/from16 v16, v1

    const/4 v1, 0x1

    invoke-virtual {v5, v10, v2, v1}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->calculateHappinessImmediate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Lio/blueflower/stapel2d/util/MinimumSelector;Z)V

    int-to-float v5, v3

    div-float/2addr v5, v15

    .line 167
    iput v5, v10, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->density:F

    .line 168
    iput v3, v10, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    .line 169
    iget-object v5, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    invoke-virtual {v5, v10, v2, v1}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->calculateHappinessImmediate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Lio/blueflower/stapel2d/util/MinimumSelector;Z)V

    .line 171
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimumValue()F

    move-result v1

    cmpl-float v5, v1, v23

    if-lez v5, :cond_22d

    int-to-float v5, v13

    mul-float/2addr v1, v5

    move v15, v6

    neg-double v5, v8

    double-to-float v5, v5

    mul-float/2addr v1, v5

    .line 176
    new-instance v5, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;-><init>(Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$1;)V

    .line 177
    iput-object v7, v5, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->z:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 178
    iput v12, v5, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->x:I

    .line 179
    iput v14, v5, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->y:I

    .line 180
    iput v13, v5, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->size:I

    .line 181
    iput v11, v5, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->displacedPeople:I

    .line 182
    iput v3, v5, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->minPeople:I

    .line 183
    iput v4, v5, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->maxPeople:I

    .line 184
    iget-object v3, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->buildSelectionSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    const v4, 0x3dcccccd    # 0.1f

    sub-float/2addr v1, v4

    invoke-virtual {v3, v5, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_22f

    :cond_22d
    move v15, v6

    const/4 v6, 0x0

    :goto_22f
    move-object v4, v10

    :goto_230
    move/from16 v5, v28

    goto :goto_280

    :cond_233
    move-object/from16 v16, v1

    move v15, v6

    const/4 v6, 0x0

    .line 187
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/MinimumSelector;->clear()V

    int-to-float v1, v3

    mul-int v4, v13, v13

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 188
    iput v1, v10, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->density:F

    .line 189
    iput v3, v10, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    .line 190
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    const/4 v5, 0x1

    invoke-virtual {v1, v10, v2, v5}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->calculateHappinessImmediate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Lio/blueflower/stapel2d/util/MinimumSelector;Z)V

    .line 191
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimumValue()F

    move-result v1

    cmpl-float v3, v1, v28

    if-lez v3, :cond_261

    .line 192
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/MinimumSelector;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_261

    .line 194
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimum()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move v5, v1

    goto :goto_263

    :cond_261
    move/from16 v5, v28

    :goto_263
    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_26b

    move-object/from16 v29, v6

    :cond_26b
    move-object v4, v10

    goto :goto_280

    :cond_26d
    move-object/from16 v4, v16

    const/4 v6, 0x0

    move-object/from16 v16, v1

    move/from16 v33, v12

    move v12, v8

    move/from16 v34, v13

    move v13, v9

    move-wide v8, v14

    move/from16 v14, v17

    move/from16 v17, v33

    move/from16 v15, v34

    goto :goto_230

    :goto_280
    add-int/lit8 v1, v13, 0x1

    move v6, v12

    move v3, v14

    move v13, v15

    move/from16 v12, v17

    move/from16 v17, v24

    move-wide v14, v8

    const/4 v8, 0x1

    move v9, v1

    move-object/from16 v1, v16

    move/from16 v16, v11

    goto/16 :goto_72

    :cond_292
    move-object/from16 v16, v1

    move v14, v3

    move/from16 v28, v5

    move v12, v6

    const/4 v6, 0x0

    const/16 v23, 0x0

    move/from16 v18, v22

    move/from16 v5, v28

    :cond_29f
    const/4 v1, 0x1

    goto :goto_2ba

    :cond_2a1
    move-object/from16 v16, v1

    move v14, v3

    move v12, v6

    const/4 v6, 0x0

    const/16 v23, 0x0

    if-eqz v7, :cond_2b2

    .line 204
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v3, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq v1, v3, :cond_29f

    :cond_2b2
    const/4 v1, 0x1

    .line 205
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v1

    add-int/2addr v3, v12

    move v12, v3

    .line 74
    :goto_2ba
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int v1, v12, v3

    move v6, v1

    move v3, v14

    move-object/from16 v1, v16

    const/4 v8, 0x1

    goto/16 :goto_37

    :cond_2cb
    move-object/from16 v16, v1

    move v14, v3

    const/4 v6, 0x0

    const/16 v23, 0x0

    add-int/lit8 v3, v14, 0x1

    const/4 v8, 0x1

    goto/16 :goto_2c

    :cond_2d6
    move-object/from16 v16, v1

    const/4 v6, 0x0

    const/16 v23, 0x0

    .line 215
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->buildSelectionSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_475

    .line 216
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->drafts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 217
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->positionsXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 218
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->frames:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    const/4 v8, 0x0

    .line 220
    :goto_2f3
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->buildSelectionSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResultCount()I

    move-result v1

    if-ge v8, v1, :cond_3e8

    iget v1, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->pressure:F

    cmpl-float v1, v1, v23

    if-lez v1, :cond_3e8

    .line 221
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->buildSelectionSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;

    move-object/from16 v25, v6

    .line 222
    iget v6, v1, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->x:I

    .line 223
    iget v7, v1, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->y:I

    .line 224
    iget v3, v1, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->size:I

    const/4 v2, 0x0

    .line 227
    :goto_312
    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->drafts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_362

    .line 228
    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->positionsXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-static {v4}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v4

    .line 229
    iget-object v5, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->positionsXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    invoke-static {v5}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v5

    .line 230
    iget-object v9, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->frames:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v9, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v9

    .line 231
    iget-object v10, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->drafts:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 232
    invoke-virtual {v10, v9}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v11

    .line 233
    invoke-virtual {v10, v9}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v9

    add-int/2addr v11, v4

    const/16 v30, 0x1

    add-int/lit8 v11, v11, -0x1

    if-lt v11, v6, :cond_35f

    add-int v10, v6, v3

    add-int/lit8 v10, v10, -0x1

    if-lt v10, v4, :cond_35f

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v9, v7, :cond_35f

    add-int v4, v7, v3

    add-int/lit8 v4, v4, -0x1

    if-lt v4, v5, :cond_35f

    move-object/from16 v9, v25

    goto :goto_363

    :cond_35f
    add-int/lit8 v2, v2, 0x1

    goto :goto_312

    :cond_362
    move-object v9, v1

    :goto_363
    if-nez v9, :cond_367

    goto/16 :goto_3e2

    .line 243
    :cond_367
    iget-object v2, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->z:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v4, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->minPeople:I

    iget v5, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->maxPeople:I

    move-object/from16 v1, v16

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->selectDraft(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;Linfo/flowersoft/theotown/draft/ZoneDraft;IIIII)Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    if-eqz v2, :cond_3e2

    .line 247
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v1

    if-nez v1, :cond_3b5

    .line 250
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 253
    iget v5, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->size:I

    mul-int/2addr v5, v5

    .line 254
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v6

    .line 255
    iget v7, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->displacedPeople:I

    mul-int/2addr v7, v6

    div-int/2addr v7, v5

    iput v7, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->displacedPeople:I

    .line 258
    iget v5, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->x:I

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v6

    sub-int v6, v3, v6

    const/16 v30, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->x:I

    .line 259
    iget v5, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->y:I

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v6

    sub-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v5, v1

    iput v5, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->y:I

    goto :goto_3bd

    .line 260
    :cond_3b5
    iget-object v1, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-eqz v1, :cond_3bb

    const/4 v4, 0x0

    goto :goto_3bd

    :cond_3bb
    move/from16 v4, v21

    .line 264
    :goto_3bd
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->drafts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->positionsXY:Lio/blueflower/stapel2d/util/IntList;

    iget v3, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->x:I

    iget v5, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->y:I

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 266
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->frames:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 267
    iget v1, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->pressure:F

    iget v3, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    add-int/2addr v3, v2

    iget v2, v9, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->displacedPeople:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->pressure:F

    :cond_3e2
    :goto_3e2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v25

    goto/16 :goto_2f3

    :cond_3e8
    move-object/from16 v25, v6

    .line 271
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->drafts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_477

    .line 272
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->buildSelectionSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;

    .line 273
    new-instance v12, Linfo/flowersoft/theotown/components/BuildCommandResult;

    iget-object v13, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v14, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->level:I

    iget v2, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->pressure:F

    iget-object v3, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v5, 0x1

    .line 275
    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v19

    iget v3, v1, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->x:I

    iget v4, v1, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->y:I

    iget v5, v1, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->size:I

    iget v6, v1, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->displacedPeople:I

    iget v7, v1, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->minPeople:I

    iget v1, v1, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;->maxPeople:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    move/from16 v26, v1

    move/from16 v16, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    invoke-direct/range {v12 .. v28}, Linfo/flowersoft/theotown/components/BuildCommandResult;-><init>(Linfo/flowersoft/theotown/draft/ZoneDraft;IZFZIJIIIIIIZLinfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    const/4 v9, 0x0

    .line 279
    :goto_434
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->drafts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_473

    .line 280
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->drafts:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 281
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->positionsXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v3

    .line 282
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->positionsXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v4

    .line 283
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->frames:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    .line 284
    iget-object v6, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->finalActions:Ljava/util/List;

    new-instance v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;Linfo/flowersoft/theotown/draft/BuildingDraft;III)V

    move-object/from16 v33, v1

    move-object v1, v0

    move-object/from16 v0, v33

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_434

    :cond_473
    move-object v10, v12

    goto :goto_479

    :cond_475
    move-object/from16 v25, v6

    :cond_477
    move-object/from16 v10, v25

    .line 301
    :goto_479
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->buildSelectionSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    if-nez v10, :cond_4b4

    .line 307
    new-instance v12, Linfo/flowersoft/theotown/components/BuildCommandResult;

    iget-object v13, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v14, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->level:I

    iget v1, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->pressure:F

    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v5, 0x1

    .line 309
    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v19

    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->buildSelectionSelector:Lio/blueflower/stapel2d/util/ProbabilitySelector;

    .line 310
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v2

    xor-int/lit8 v27, v2, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v16, v1

    move-object/from16 v28, v29

    invoke-direct/range {v12 .. v28}, Linfo/flowersoft/theotown/components/BuildCommandResult;-><init>(Linfo/flowersoft/theotown/draft/ZoneDraft;IZFZIJIIIIIIZLinfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    return-object v12

    :cond_4b4
    return-object v10
.end method

.method public final selectDraft(Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;Linfo/flowersoft/theotown/draft/ZoneDraft;IIIII)Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p6

    move/from16 v3, p7

    .line 340
    new-instance v4, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v4, v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    mul-int v5, v1, v1

    int-to-float v5, v5

    .line 342
    iget-object v6, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getPeopleInfoGrid()Linfo/flowersoft/theotown/util/InfoGrid;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Linfo/flowersoft/theotown/util/InfoGrid;->get(II)F

    move-result v6

    mul-float/2addr v5, v6

    .line 344
    invoke-virtual/range {p1 .. p5}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->iterate(Linfo/flowersoft/theotown/draft/ZoneDraft;III)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 345
    iget-boolean v8, v7, Linfo/flowersoft/theotown/draft/Draft;->active:Z

    if-nez v8, :cond_3d

    goto :goto_2c

    .line 348
    :cond_3d
    iget v8, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v9, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 350
    iget-object v9, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v9

    invoke-virtual {v9, v7}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v9

    .line 351
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    const/4 v11, 0x0

    .line 354
    invoke-virtual {v7, v11}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v12

    invoke-virtual {v7, v11}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v13

    add-int/2addr v12, v13

    mul-int/lit8 v13, v12, 0x9

    .line 358
    invoke-virtual {v7}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v14

    if-eqz v14, :cond_65

    const/4 v14, -0x1

    goto :goto_66

    :cond_65
    move v14, v11

    :goto_66
    move v15, v11

    .line 360
    :goto_67
    invoke-virtual {v7, v14}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v11

    const/16 v16, 0x0

    if-ge v15, v11, :cond_a3

    move/from16 v17, v5

    const/4 v11, 0x0

    .line 361
    :goto_72
    invoke-virtual {v7, v14}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v5

    if-ge v11, v5, :cond_98

    .line 362
    iget-object v5, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    move-object/from16 v18, v6

    add-int v6, v2, v11

    move/from16 v19, v8

    add-int v8, v3, v15

    invoke-virtual {v5, v6, v8}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    if-eqz v5, :cond_91

    .line 364
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v5

    if-ne v5, v7, :cond_91

    move/from16 v8, v16

    goto :goto_9c

    :cond_91
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v18

    move/from16 v8, v19

    goto :goto_72

    :cond_98
    move-object/from16 v18, v6

    move/from16 v19, v8

    :goto_9c
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v17

    move-object/from16 v6, v18

    goto :goto_67

    :cond_a3
    move/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v8

    cmpl-float v5, v19, v16

    if-nez v5, :cond_b3

    :goto_ad
    move/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_2c

    .line 372
    :cond_b3
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-lez v5, :cond_e4

    .line 374
    new-instance v5, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v5, v9}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_c4
    :goto_c4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/city/objects/Building;

    .line 375
    iget-object v11, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getDistance()Linfo/flowersoft/theotown/util/Distance;

    move-result-object v11

    invoke-virtual {v11, v9, v2, v3}, Linfo/flowersoft/theotown/util/Distance;->get(Linfo/flowersoft/theotown/city/objects/Building;II)I

    move-result v9

    if-gt v9, v12, :cond_df

    add-int/lit8 v8, v8, 0x1

    goto :goto_c4

    :cond_df
    if-gt v9, v13, :cond_c4

    add-int/lit8 v6, v6, 0x1

    goto :goto_c4

    :cond_e4
    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_e6
    const/4 v5, 0x0

    .line 384
    :goto_e7
    iget-object v9, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->drafts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_11b

    .line 385
    iget-object v9, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->drafts:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_118

    .line 386
    iget-object v9, v0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->positionsXY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v9, v5}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v9

    .line 387
    invoke-static {v9}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v11

    .line 388
    invoke-static {v9}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v9

    .line 389
    iget-object v14, v0, Linfo/flowersoft/theotown/components/management/BuildCommand;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/City;->getDistance()Linfo/flowersoft/theotown/util/Distance;

    move-result-object v14

    invoke-virtual {v14, v2, v3, v11, v9}, Linfo/flowersoft/theotown/util/Distance;->get(IIII)I

    move-result v9

    if-gt v9, v12, :cond_114

    add-int/lit8 v8, v8, 0x1

    goto :goto_118

    :cond_114
    if-gt v9, v13, :cond_118

    add-int/lit8 v6, v6, 0x1

    :cond_118
    :goto_118
    add-int/lit8 v5, v5, 0x1

    goto :goto_e7

    :cond_11b
    add-int/2addr v6, v8

    const/4 v5, 0x4

    if-le v6, v5, :cond_124

    const/high16 v5, 0x43480000    # 200.0f

    div-float v8, v19, v5

    goto :goto_12f

    :cond_124
    if-lez v8, :cond_12d

    if-ge v8, v5, :cond_12d

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float v8, v19, v5

    goto :goto_12f

    :cond_12d
    move/from16 v8, v19

    .line 404
    :goto_12f
    iget v5, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v6, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int v9, v5, v6

    iget v11, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    div-int/2addr v9, v11

    int-to-float v9, v9

    cmpg-float v9, v17, v9

    const/4 v11, 0x1

    if-gez v9, :cond_15a

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float v5, v5, v17

    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v6

    div-float/2addr v8, v5

    if-le v1, v11, :cond_15a

    add-int/lit8 v5, v1, -0x1

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    move/from16 v12, p5

    const/4 v13, 0x0

    .line 406
    invoke-virtual {v6, v9, v5, v13, v12}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter$ConcreteCounter;->evaluate(Linfo/flowersoft/theotown/draft/ZoneDraft;III)I

    move-result v5

    if-lez v5, :cond_160

    goto/16 :goto_ad

    :cond_15a
    move-object/from16 v6, p1

    move-object/from16 v9, p2

    move/from16 v12, p5

    :cond_160
    mul-int/2addr v10, v10

    add-int/2addr v10, v11

    int-to-float v5, v10

    div-float/2addr v8, v5

    .line 411
    iget v5, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->autoBuildFactor:F

    mul-float/2addr v8, v5

    .line 412
    invoke-virtual {v4, v7, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto/16 :goto_ad

    .line 415
    :cond_16c
    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_179

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-object v1

    :cond_179
    const/4 v1, 0x0

    return-object v1
.end method

###### Class info.flowersoft.theotown.components.management.BuildingBuildCommand.AnonymousClass1 (info.flowersoft.theotown.components.management.BuildingBuildCommand$1)
.class public synthetic Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$1;
.super Ljava/lang/Object;
.source "BuildingBuildCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.components.management.BuildingBuildCommand.BuildSelection (info.flowersoft.theotown.components.management.BuildingBuildCommand$BuildSelection)
.class public Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;
.super Ljava/lang/Object;
.source "BuildingBuildCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuildSelection"
.end annotation


# instance fields
.field public displacedPeople:I

.field public maxPeople:I

.field public minPeople:I

.field public size:I

.field public x:I

.field public y:I

.field public z:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$1;)V
    .registers 2

    .line 421
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$BuildSelection;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.management.BuildingBuildCommand$$ExternalSyntheticLambda0 (info.flowersoft.theotown.components.management.BuildingBuildCommand$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;

.field public final synthetic f$1:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;Linfo/flowersoft/theotown/draft/BuildingDraft;III)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput p3, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;->$r8$lambda$5QpTq-PHG2S7K7d18mRiDd2KP8E(Linfo/flowersoft/theotown/components/management/BuildingBuildCommand;Linfo/flowersoft/theotown/draft/BuildingDraft;III)V

    return-void
.end method
