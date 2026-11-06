###### Class info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo (info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.source "NeighborCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;,
        Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;)V
    .registers 1

    .line 43
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->indicateAchievement()V

    return-void
.end method

.method public static getDirName(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/neighbors/NeighborCity;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 365
    instance-of v0, p1, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    if-eqz v0, :cond_43

    .line 366
    check-cast p1, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    .line 367
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 368
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    .line 369
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v2, 0x0

    if-le p0, p1, :cond_37

    move v1, v2

    goto :goto_38

    :cond_37
    move v0, v2

    .line 374
    :goto_38
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result p0

    invoke-static {p0}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result p0

    .line 375
    aget-object p0, p2, p0

    return-object p0

    .line 377
    :cond_43
    const-string p0, "Far away"

    return-object p0
.end method


# virtual methods
.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 48

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    const/4 v13, 0x4

    const/4 v14, 0x1

    .line 71
    invoke-super/range {p0 .. p4}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    const/4 v0, 0x5

    .line 73
    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultPower;

    const/16 v2, 0x8

    .line 74
    invoke-virtual {v10, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultWater;

    const/4 v15, 0x0

    .line 75
    invoke-virtual {v10, v15}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Linfo/flowersoft/theotown/components/DefaultBudget;

    const/4 v12, 0x3

    .line 76
    invoke-virtual {v10, v12}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 77
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    move-result-object v3

    .line 78
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v4

    xor-int/2addr v4, v14

    .line 80
    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v5

    .line 82
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultPower;->nativeAvailablePower()I

    move-result v6

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultPower;->nativeConsumedPower()I

    move-result v0

    sub-int/2addr v6, v0

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 83
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultWater;->nativeAvailableWater()J

    move-result-wide v6

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultWater;->nativeConsumedWater()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 84
    invoke-virtual {v3, v12}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getNativeProvidedAmount(I)I

    move-result v2

    .line 85
    invoke-virtual {v3, v12}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getNativeNeededAmount(I)I

    move-result v6

    sub-int/2addr v2, v6

    .line 84
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 86
    invoke-virtual {v3, v13}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getNativeProvidedAmount(I)I

    move-result v2

    .line 87
    invoke-virtual {v3, v13}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getNativeNeededAmount(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 86
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v15

    .line 91
    :goto_70
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v6

    if-ge v3, v6, :cond_8d

    .line 92
    invoke-virtual {v10, v3}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v6

    if-eqz v6, :cond_8b

    .line 93
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isCreated()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isDirect()Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 94
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8b
    add-int/2addr v3, v14

    goto :goto_70

    .line 98
    :cond_8d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 99
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Lio/blueflower/stapel2d/gui/ListItem;

    const/16 v3, 0xc14

    invoke-interface {v5, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void

    :cond_a4
    const/16 v3, 0x92b

    .line 102
    invoke-interface {v5, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x818

    .line 103
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x81b

    .line 104
    invoke-interface {v5, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x931

    .line 105
    invoke-interface {v5, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v3, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    move v6, v15

    .line 108
    :goto_c1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_282

    .line 109
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    .line 110
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v9

    .line 112
    invoke-static {v10, v8, v3}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->getDirName(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/neighbors/NeighborCity;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 116
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->hasInfinityMoney()Z

    move-result v20

    const-wide/16 v21, 0x2

    const-wide/16 v23, 0x1f4

    const-wide v25, 0x7fffffffffffffffL

    if-eqz v20, :cond_ea

    move/from16 v27, v14

    move-wide/from16 v13, v25

    goto :goto_f5

    .line 117
    :cond_ea
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants()I

    move-result v12

    move/from16 v27, v14

    int-to-long v13, v12

    mul-long v13, v13, v21

    add-long v13, v13, v23

    :goto_f5
    const-wide/16 v28, 0x4

    if-eqz v20, :cond_100

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-wide/from16 v32, v25

    goto :goto_10f

    .line 118
    :cond_100
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants()I

    move-result v12

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    int-to-long v2, v12

    mul-long v2, v2, v28

    add-long v2, v2, v23

    move-wide/from16 v32, v2

    :goto_10f
    if-eqz v20, :cond_114

    move-wide/from16 v28, v25

    goto :goto_11f

    .line 119
    :cond_114
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants()I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, v28

    add-long v2, v2, v23

    move-wide/from16 v28, v2

    :goto_11f
    if-eqz v20, :cond_122

    goto :goto_12b

    .line 120
    :cond_122
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants()I

    move-result v2

    int-to-long v2, v2

    div-long v2, v2, v21

    add-long v25, v2, v23

    .line 123
    :goto_12b
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->hasPowerConnection()Z

    move-result v2

    if-eqz v2, :cond_137

    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->checkAnyPowerConnection(Linfo/flowersoft/theotown/city/City;)Z

    move-result v2

    if-nez v2, :cond_13d

    .line 124
    :cond_137
    invoke-virtual {v1, v10, v8}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->checkPowerConnection(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)Z

    move-result v2

    if-eqz v2, :cond_141

    :cond_13d
    move v2, v4

    move/from16 v4, v27

    goto :goto_143

    :cond_141
    move v2, v4

    move v4, v15

    .line 126
    :goto_143
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->hasWaterConnection()Z

    move-result v3

    if-eqz v3, :cond_14f

    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->checkAnyWaterConnection(Linfo/flowersoft/theotown/city/City;)Z

    move-result v3

    if-nez v3, :cond_155

    .line 127
    :cond_14f
    invoke-virtual {v1, v10, v8}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->checkWaterConnection(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)Z

    move-result v3

    if-eqz v3, :cond_158

    :cond_155
    move/from16 v12, v27

    goto :goto_159

    :cond_158
    move v12, v15

    .line 129
    :goto_159
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->hasRoadConnection()Z

    move-result v3

    if-eqz v3, :cond_165

    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->checkAnyRoadConnection(Linfo/flowersoft/theotown/city/City;)Z

    move-result v3

    if-nez v3, :cond_16b

    .line 130
    :cond_165
    invoke-virtual {v1, v10, v8}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->checkRoadConnection(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)Z

    move-result v3

    if-eqz v3, :cond_16e

    :cond_16b
    move/from16 v20, v27

    goto :goto_170

    :cond_16e
    move/from16 v20, v15

    .line 133
    :goto_170
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->canTrade()Z

    move-result v3

    if-eqz v3, :cond_199

    .line 134
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->hasInfinityMoney()Z

    move-result v3

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v15

    if-ne v3, v15, :cond_199

    .line 135
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->isOnline()Z

    move-result v3

    if-eqz v3, :cond_196

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getOwnerId()J

    move-result-wide v23

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getAuthorId()J

    move-result-wide v34

    cmp-long v3, v23, v34

    if-nez v3, :cond_199

    :cond_196
    move/from16 v3, v27

    goto :goto_19a

    :cond_199
    const/4 v3, 0x0

    .line 137
    :goto_19a
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v15

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v15

    move/from16 v21, v0

    .line 141
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v0

    move/from16 v23, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v3

    .line 143
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " <-> "

    filled-new-array {v0, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 139
    invoke-virtual {v1, v0, v3, v2}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableCategory([Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 147
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;

    move/from16 v22, v3

    move-object v2, v5

    move/from16 v36, v6

    move-wide v6, v13

    move/from16 v5, v21

    move/from16 v3, v24

    const-wide/16 v13, 0x0

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;Lio/blueflower/stapel2d/gamestack/Translator;ZZIJLinfo/flowersoft/theotown/city/neighbors/NeighborCity;Linfo/flowersoft/theotown/city/TradingRelation;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/DefaultBudget;)V

    move-object/from16 v24, v0

    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;

    move-object/from16 v1, p0

    move-object v10, v9

    move v4, v12

    move-wide/from16 v5, v16

    const/16 v16, 0x3

    move-object v9, v8

    move-object v12, v11

    move-wide/from16 v7, v32

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;Lio/blueflower/stapel2d/gamestack/Translator;ZZJJLinfo/flowersoft/theotown/city/neighbors/NeighborCity;Linfo/flowersoft/theotown/city/TradingRelation;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/DefaultBudget;)V

    move-wide/from16 v32, v5

    move-object v8, v9

    move-object v9, v10

    move-object v11, v12

    move-object v12, v0

    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;

    move-object/from16 v10, p1

    move/from16 v5, v18

    move/from16 v4, v20

    move-wide/from16 v6, v28

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;Lio/blueflower/stapel2d/gamestack/Translator;ZZIJLinfo/flowersoft/theotown/city/neighbors/NeighborCity;Linfo/flowersoft/theotown/city/TradingRelation;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/DefaultBudget;)V

    move-object/from16 v18, v0

    move/from16 v17, v5

    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;

    move/from16 v5, v19

    move-wide/from16 v6, v25

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;Lio/blueflower/stapel2d/gamestack/Translator;ZZIJLinfo/flowersoft/theotown/city/neighbors/NeighborCity;Linfo/flowersoft/theotown/city/TradingRelation;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/DefaultBudget;)V

    const/4 v3, 0x4

    new-array v4, v3, [Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    aput-object v24, v4, v22

    aput-object v12, v4, v27

    const/4 v6, 0x2

    aput-object v18, v4, v6

    aput-object v0, v4, v16

    move/from16 v0, v22

    :goto_228
    if-ge v0, v3, :cond_258

    .line 342
    aget-object v6, v4, v0

    .line 344
    invoke-virtual {v6}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->canBeTraded()Z

    move-result v7

    if-eqz v7, :cond_246

    .line 346
    invoke-virtual {v6}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getAmount()J

    move-result-wide v37

    invoke-virtual {v6}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getMinAmount()J

    move-result-wide v39

    invoke-virtual {v6}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getMaxAmount()J

    move-result-wide v41

    invoke-static/range {v37 .. v42}, Lcom/badlogic/gdx/math/MathUtils;->clamp(JJJ)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->setAmount(J)V

    goto :goto_249

    .line 348
    :cond_246
    invoke-virtual {v6, v13, v14}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->setAmount(J)V

    .line 352
    :goto_249
    iget-object v7, v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v8, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;

    move/from16 v9, v23

    invoke-direct {v8, v6, v2, v9, v15}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;Lio/blueflower/stapel2d/gamestack/Translator;ZZ)V

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_228

    :cond_258
    move/from16 v9, v23

    .line 355
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move/from16 v15, v36

    if-ge v15, v0, :cond_267

    .line 356
    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addSeparator()V

    :cond_267
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v10, p1

    move v13, v3

    move/from16 v19, v5

    move v4, v9

    move/from16 v12, v16

    move/from16 v18, v17

    move/from16 v0, v21

    move/from16 v15, v22

    move/from16 v14, v27

    move-object/from16 v3, v31

    move-wide/from16 v16, v32

    move-object v5, v2

    move-object/from16 v2, v30

    goto/16 :goto_c1

    :cond_282
    return-void
.end method

.method public final checkAnyPowerConnection(Linfo/flowersoft/theotown/city/City;)Z
    .registers 2

    .line 384
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result p1

    if-lez p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final checkAnyRoadConnection(Linfo/flowersoft/theotown/city/City;)Z
    .registers 2

    .line 392
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result p1

    if-lez p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final checkAnyWaterConnection(Linfo/flowersoft/theotown/city/City;)Z
    .registers 2

    .line 388
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result p1

    if-lez p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final checkPowerConnection(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)Z
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 396
    :goto_2
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 397
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnection(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Wire;

    .line 398
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Wire;->hasConnection()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 399
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Wire;->getConnectionDir()I

    move-result v3

    .line 401
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Wire;->getX()I

    move-result v4

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 402
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Wire;->getY()I

    move-result v2

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 400
    invoke-virtual {p2, v4, v2}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 p1, 0x1

    return p1

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3d
    return v0
.end method

.method public final checkRoadConnection(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)Z
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 424
    :goto_2
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 425
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnection(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Road;

    .line 426
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->hasConnection()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 427
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getConnectionDir()I

    move-result v3

    .line 429
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v4

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 430
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v2

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 428
    invoke-virtual {p2, v4, v2}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 p1, 0x1

    return p1

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3d
    return v0
.end method

.method public final checkWaterConnection(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)Z
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 410
    :goto_2
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 411
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnection(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Pipe;

    .line 412
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Pipe;->hasConnection()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 413
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Pipe;->getConnectionDir()I

    move-result v3

    .line 415
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Pipe;->getX()I

    move-result v4

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 416
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Pipe;->getY()I

    move-result v2

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 414
    invoke-virtual {p2, v4, v2}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 p1, 0x1

    return p1

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3d
    return v0
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 62
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x3bd

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 52
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEIGHBORHOOD_COMMERCIAL:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 566
    const-string v0, "NeighborCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0x569

    return p1
.end method

.method public final indicateAchievement()V
    .registers 3

    .line 66
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v1, "neighborhood_commercial_init"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    return-void
.end method

.method public isAvailable(Linfo/flowersoft/theotown/city/City;)Z
    .registers 2

    .line 47
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 571
    const-string v0, "Neighbor"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.AnonymousClass1 (info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo$1)
.class public Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;
.super Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;
.source "NeighborCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

.field public final synthetic val$availablePower:I

.field public final synthetic val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$hasPowerConnection:Z

.field public final synthetic val$maxPowerExport:J

.field public final synthetic val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

.field public final synthetic val$tradingPossible:Z

.field public final synthetic val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;Lio/blueflower/stapel2d/gamestack/Translator;ZZIJLinfo/flowersoft/theotown/city/neighbors/NeighborCity;Linfo/flowersoft/theotown/city/TradingRelation;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/DefaultBudget;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 148
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-boolean p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$tradingPossible:Z

    iput-boolean p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$hasPowerConnection:Z

    iput p5, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$availablePower:I

    iput-wide p6, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$maxPowerExport:J

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$city:Linfo/flowersoft/theotown/city/City;

    iput-object p11, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;)V

    return-void
.end method


# virtual methods
.method public canBeTraded()Z
    .registers 2

    .line 161
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$tradingPossible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$hasPowerConnection:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()J
    .registers 3

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/TradingRelation;->getEnergyExport()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon()I
    .registers 2

    .line 151
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ENERGY:I

    return v0
.end method

.method public getMaxAmount()J
    .registers 5

    .line 166
    iget v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$availablePower:I

    int-to-long v0, v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$maxPowerExport:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinAmount()J
    .registers 3

    .line 171
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getAvailablePower()J

    move-result-wide v0

    neg-long v0, v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x92e

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice(J)J
    .registers 5

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPowerTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public localizeAmount(J)Ljava/lang/String;
    .registers 5

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAmount(J)V
    .registers 5

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/TradingRelation;->setEnergyExport(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_18

    .line 182
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->access$100(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;)V

    :cond_18
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.AnonymousClass2 (info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo$2)
.class public Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;
.super Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;
.source "NeighborCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

.field public final synthetic val$availableWater:J

.field public final synthetic val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$hasWaterConnection:Z

.field public final synthetic val$maxWaterExport:J

.field public final synthetic val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

.field public final synthetic val$tradingPossible:Z

.field public final synthetic val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;Lio/blueflower/stapel2d/gamestack/Translator;ZZJJLinfo/flowersoft/theotown/city/neighbors/NeighborCity;Linfo/flowersoft/theotown/city/TradingRelation;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/DefaultBudget;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 196
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-boolean p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$tradingPossible:Z

    iput-boolean p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$hasWaterConnection:Z

    iput-wide p5, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$availableWater:J

    iput-wide p7, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$maxWaterExport:J

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    iput-object p11, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$city:Linfo/flowersoft/theotown/city/City;

    iput-object p12, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;)V

    return-void
.end method


# virtual methods
.method public canBeTraded()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$tradingPossible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$hasWaterConnection:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()J
    .registers 3

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/TradingRelation;->getWaterExport()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon()I
    .registers 2

    .line 199
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_WATER:I

    return v0
.end method

.method public getMaxAmount()J
    .registers 5

    .line 214
    iget-wide v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$availableWater:J

    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$maxWaterExport:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinAmount()J
    .registers 3

    .line 219
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getAvailableWater()J

    move-result-wide v0

    neg-long v0, v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x41a

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice(J)J
    .registers 5

    .line 240
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getWaterTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public localizeAmount(J)Ljava/lang/String;
    .registers 5

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x1a1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAmount(J)V
    .registers 5

    .line 229
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/TradingRelation;->setWaterExport(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_18

    .line 230
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->access$100(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;)V

    :cond_18
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.AnonymousClass3 (info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo$3)
.class public Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;
.super Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;
.source "NeighborCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

.field public final synthetic val$availableWasteDisposal:I

.field public final synthetic val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$hasRoadConnection:Z

.field public final synthetic val$maxWasteDisposalExport:J

.field public final synthetic val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

.field public final synthetic val$tradingPossible:Z

.field public final synthetic val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;Lio/blueflower/stapel2d/gamestack/Translator;ZZIJLinfo/flowersoft/theotown/city/neighbors/NeighborCity;Linfo/flowersoft/theotown/city/TradingRelation;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/DefaultBudget;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 244
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-boolean p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$tradingPossible:Z

    iput-boolean p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$hasRoadConnection:Z

    iput p5, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$availableWasteDisposal:I

    iput-wide p6, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$maxWasteDisposalExport:J

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$city:Linfo/flowersoft/theotown/city/City;

    iput-object p11, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;)V

    return-void
.end method


# virtual methods
.method public canBeTraded()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$tradingPossible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$hasRoadConnection:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()J
    .registers 3

    .line 272
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/TradingRelation;->getWasteDisposalExport()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon()I
    .registers 2

    .line 247
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_WASTE_DISPOSAL:I

    return v0
.end method

.method public getMaxAmount()J
    .registers 5

    .line 262
    iget v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$availableWasteDisposal:I

    int-to-long v0, v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$maxWasteDisposalExport:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinAmount()J
    .registers 3

    .line 267
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getAvailableWasteDisposal()J

    move-result-wide v0

    neg-long v0, v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 252
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x848

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice(J)J
    .registers 5

    .line 288
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getWasteDisposalTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public localizeAmount(J)Ljava/lang/String;
    .registers 5

    .line 283
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x2fa

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAmount(J)V
    .registers 6

    .line 277
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    long-to-int v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/TradingRelation;->setWasteDisposalExport(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1a

    .line 278
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->access$100(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;)V

    :cond_1a
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.AnonymousClass4 (info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo$4)
.class public Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;
.super Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;
.source "NeighborCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

.field public final synthetic val$availableBodyDisposal:I

.field public final synthetic val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$hasRoadConnection:Z

.field public final synthetic val$maxBodyDisposalExport:J

.field public final synthetic val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

.field public final synthetic val$tradingPossible:Z

.field public final synthetic val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;Lio/blueflower/stapel2d/gamestack/Translator;ZZIJLinfo/flowersoft/theotown/city/neighbors/NeighborCity;Linfo/flowersoft/theotown/city/TradingRelation;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/DefaultBudget;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 292
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-boolean p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$tradingPossible:Z

    iput-boolean p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$hasRoadConnection:Z

    iput p5, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$availableBodyDisposal:I

    iput-wide p6, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$maxBodyDisposalExport:J

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$city:Linfo/flowersoft/theotown/city/City;

    iput-object p11, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;)V

    return-void
.end method


# virtual methods
.method public canBeTraded()Z
    .registers 2

    .line 305
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$tradingPossible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$hasRoadConnection:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()J
    .registers 3

    .line 320
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/TradingRelation;->getBodyDisposalExport()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon()I
    .registers 2

    .line 295
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BODY_DISPOSAL:I

    return v0
.end method

.method public getMaxAmount()J
    .registers 5

    .line 310
    iget v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$availableBodyDisposal:I

    int-to-long v0, v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$maxBodyDisposalExport:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinAmount()J
    .registers 3

    .line 315
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getAvailableBodyDisposal()J

    move-result-wide v0

    neg-long v0, v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 300
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x99d

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice(J)J
    .registers 5

    .line 336
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$neighborCity:Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getBodyDisposalTradingPrice(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public localizeAmount(J)Ljava/lang/String;
    .registers 5

    .line 331
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x280

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAmount(J)V
    .registers 6

    .line 325
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$tradingRelation:Linfo/flowersoft/theotown/city/TradingRelation;

    long-to-int v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/TradingRelation;->setBodyDisposalExport(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1a

    .line 326
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;->access$100(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;)V

    :cond_1a
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingItem (info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo$TradingItem)
.class public abstract Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;
.super Ljava/lang/Object;
.source "NeighborCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TradingItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$1;)V
    .registers 2

    .line 436
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canBeTraded()Z
.end method

.method public abstract getAmount()J
.end method

.method public abstract getIcon()I
.end method

.method public abstract getMaxAmount()J
.end method

.method public abstract getMinAmount()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPrice(J)J
.end method

.method public getStep()I
    .registers 2

    .line 0
    const/16 v0, 0x1f4

    return v0
.end method

.method public abstract localizeAmount(J)Ljava/lang/String;
.end method

.method public abstract setAmount(J)V
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo.TradingListItem (info.flowersoft.theotown.stages.cityinfo.NeighborCityInfo$TradingListItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "NeighborCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TradingListItem"
.end annotation


# instance fields
.field public amountWidth:I

.field public final editable:Z

.field public final infiniteMoney:Z

.field public final item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

.field public maxX:I

.field public minX:I

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;Lio/blueflower/stapel2d/gamestack/Translator;ZZ)V
    .registers 6

    .line 465
    const-string v0, ""

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 466
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    .line 467
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 468
    iput-boolean p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->editable:Z

    .line 469
    iput-boolean p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->infiniteMoney:Z

    .line 471
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->canBeTraded()Z

    move-result p2

    if-nez p2, :cond_18

    const-wide/16 p2, 0x0

    .line 472
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->setAmount(J)V

    :cond_18
    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 30

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 478
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 480
    iget-object v8, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 482
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v2, 0x3f000000    # 0.5f

    .line 483
    invoke-virtual {v8, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 484
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v10, v3

    int-to-float v12, v4

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getIcon()I

    move-result v16

    move v5, v12

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v13, 0x41a00000    # 20.0f

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f000000    # 0.5f

    move v11, v5

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    move v12, v11

    const/high16 v2, 0x3f800000    # 1.0f

    .line 485
    invoke-virtual {v8, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 487
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 488
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getName()Ljava/lang/String;

    move-result-object v10

    .line 489
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    add-int/lit8 v2, v3, 0x14

    int-to-float v11, v2

    int-to-float v14, v6

    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 490
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v2, v10}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x14

    iput v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->minX:I

    .line 492
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->canBeTraded()Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 493
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getAmount()J

    move-result-wide v4

    .line 494
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getMinAmount()J

    move-result-wide v9

    .line 495
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    move/from16 p1, v14

    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getMaxAmount()J

    move-result-wide v13

    .line 496
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    move-object/from16 p2, v1

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getPrice(J)J

    move-result-wide v1

    neg-long v1, v1

    .line 497
    iget-boolean v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->infiniteMoney:Z

    if-nez v6, :cond_c9

    move-wide v15, v9

    long-to-double v9, v1

    .line 498
    invoke-static {v9, v10}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v10

    .line 499
    iget-object v6, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v6, v10}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v6, p5, v6

    add-int/lit8 v6, v6, -0x2

    iput v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->maxX:I

    const-wide/16 v17, 0x0

    cmp-long v1, v1, v17

    if-ltz v1, :cond_ad

    .line 500
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_af

    :cond_ad
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    :goto_af
    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 501
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget v1, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->maxX:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x8

    int-to-float v11, v1

    move-wide v1, v15

    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    move-wide/from16 v17, v13

    const/4 v13, 0x0

    move/from16 v14, p1

    move-wide/from16 v19, v17

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    goto :goto_ce

    :cond_c9
    move-wide v1, v9

    move-wide/from16 v19, v13

    move/from16 v14, p1

    :goto_ce
    const/16 v6, 0x32

    .line 503
    iput v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->minX:I

    add-int/lit8 v6, p5, -0x1e

    .line 504
    iput v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->maxX:I

    .line 506
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    neg-long v9, v4

    invoke-virtual {v6, v9, v10}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->localizeAmount(J)Ljava/lang/String;

    move-result-object v10

    .line 507
    iget-object v6, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 508
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->minX:I

    iget v11, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->maxX:I

    add-int/2addr v6, v11

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    int-to-float v11, v6

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v16, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 509
    iget-object v6, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v6, v10}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    iput v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->amountWidth:I

    .line 511
    iget-boolean v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->editable:Z

    if-eqz v6, :cond_1af

    cmp-long v6, v4, v1

    if-lez v6, :cond_10e

    .line 512
    iget-object v6, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_110

    :cond_10e
    iget-object v6, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    :goto_110
    invoke-virtual {v8, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 513
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<-"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v11, 0x51e

    invoke-interface {v10, v11}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    neg-long v1, v1

    .line 514
    invoke-virtual {v11, v1, v2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->localizeAmount(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->minX:I

    iget v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->maxX:I

    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    iget v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->amountWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    int-to-float v11, v2

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    move-object/from16 v21, v10

    move-object v10, v1

    move-object/from16 v1, v21

    .line 513
    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-wide/from16 v9, v19

    cmp-long v2, v4, v9

    if-gez v2, :cond_166

    .line 517
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_168

    :cond_166
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    :goto_168
    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 518
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xcc

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    neg-long v5, v9

    .line 519
    invoke-virtual {v1, v5, v6}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->localizeAmount(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")->"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->minX:I

    iget v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->maxX:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->amountWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v4, v3

    move-object v3, v1

    move-object v1, v8

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    move-object/from16 v10, p2

    move v5, v12

    move v7, v14

    .line 518
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    goto :goto_1d7

    :cond_1af
    move-object/from16 v10, p2

    goto :goto_1d8

    :cond_1b2
    move-object v10, v1

    .line 523
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 524
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xd3d

    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->minX:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x8

    int-to-float v3, v3

    sub-int v4, p5, v4

    int-to-float v6, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    move v5, v12

    move v7, v14

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    :goto_1d7
    move-object v8, v1

    .line 527
    :goto_1d8
    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x14

    return p1
.end method

.method public onClick(II)V
    .registers 16

    .line 537
    iget-boolean p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->editable:Z

    if-nez p2, :cond_5

    goto :goto_6e

    .line 539
    :cond_5
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getMinAmount()J

    move-result-wide v0

    .line 540
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getMaxAmount()J

    move-result-wide v2

    .line 541
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getAmount()J

    move-result-wide v4

    .line 543
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->getStep()I

    move-result p2

    .line 545
    iget v6, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->minX:I

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x0

    if-lt p1, v6, :cond_41

    iget v11, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->maxX:I

    add-int/2addr v11, v6

    div-int/lit8 v11, v11, 0x2

    iget v12, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->amountWidth:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    if-gt p1, v11, :cond_41

    int-to-long p1, p2

    sub-long v2, v4, p1

    cmp-long v6, v2, v9

    if-lez v6, :cond_3c

    add-long/2addr v2, p1

    sub-long/2addr v2, v7

    .line 547
    div-long/2addr v2, p1

    mul-long/2addr v2, p1

    .line 548
    :cond_3c
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    goto :goto_62

    .line 549
    :cond_41
    iget v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->maxX:I

    add-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    iget v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->amountWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v6, v1

    if-lt p1, v6, :cond_61

    if-ge p1, v0, :cond_61

    int-to-long p1, p2

    add-long v0, v4, p1

    cmp-long v6, v0, v9

    if-gez v6, :cond_5c

    neg-long v0, v0

    add-long/2addr v0, p1

    sub-long/2addr v0, v7

    neg-long v0, v0

    .line 551
    div-long/2addr v0, p1

    mul-long/2addr v0, p1

    .line 552
    :cond_5c
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    goto :goto_62

    :cond_61
    move-wide p1, v4

    .line 555
    :goto_62
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->item:Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingItem;->setAmount(J)V

    cmp-long p1, p1, v4

    if-eqz p1, :cond_6e

    .line 556
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo$TradingListItem;->playClickSound()V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public final playClickSound()V
    .registers 4

    .line 560
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CLICK:I

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    return-void
.end method
