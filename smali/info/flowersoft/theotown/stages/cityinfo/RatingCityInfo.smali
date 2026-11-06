###### Class info.flowersoft.theotown.stages.cityinfo.RatingCityInfo (info.flowersoft.theotown.stages.cityinfo.RatingCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.source "RatingCityInfo.java"


# instance fields
.field public final happinessAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;


# direct methods
.method public static synthetic $r8$lambda$hPYMPC-EiVavW_hxPTGmVmbtl_A(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V
    .registers 3

    .line 169
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 170
    new-instance p0, Linfo/flowersoft/theotown/tools/ToolResolver;

    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object p0

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ryamEq5SlC-Y6M0_j-yCz8U5QLU(Lio/blueflower/stapel2d/util/Tuple;Lio/blueflower/stapel2d/util/Tuple;)I
    .registers 2

    .line 127
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    neg-float p0, p0

    float-to-int p0, p0

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;-><init>()V

    .line 43
    const-string v0, "$anim_ui_happiness00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;->happinessAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public static getDeltaSign(F)Ljava/lang/String;
    .registers 6

    .line 176
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_58

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_16

    .line 177
    const-string v0, "+"

    goto :goto_18

    :cond_16
    const-string v0, "-"

    .line 178
    :goto_18
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_39

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :cond_39
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v1, p0

    const-wide v3, 0x3f747ae147ae147bL    # 0.005

    cmpl-double p0, v1, v3

    if-ltz p0, :cond_57

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_57
    return-object v0

    .line 185
    :cond_58
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 24

    move-object/from16 v1, p1

    .line 77
    invoke-super/range {p0 .. p4}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    const/4 v0, 0x3

    .line 79
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 80
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 85
    monitor-enter p1

    .line 86
    :try_start_19
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    .line 88
    :goto_1e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_cf

    .line 89
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 90
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_cb

    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v11

    if-eqz v11, :cond_cb

    .line 91
    sget-boolean v11, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-nez v11, :cond_45

    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isVisible()Z

    move-result v11

    if-nez v11, :cond_45

    goto/16 :goto_cb

    :catchall_42
    move-exception v0

    goto/16 :goto_1bd

    :cond_45
    const/4 v11, 0x0

    move v14, v11

    move v15, v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 96
    :goto_4a
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v16

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/city/BuildingList;->size()I

    move-result v9

    if-ge v12, v9, :cond_a2

    .line 97
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v9

    invoke-virtual {v9, v12}, Linfo/flowersoft/theotown/city/BuildingList;->get(I)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v9

    .line 98
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v16

    check-cast v16, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    .line 99
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v17

    if-eqz v17, :cond_9e

    .line 100
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v6

    sget-object v10, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v6, v10, :cond_9e

    .line 101
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v6

    if-nez v6, :cond_9e

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9e

    if-eqz v16, :cond_9e

    .line 103
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallHabitants()I

    move-result v6

    .line 104
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v9

    aget v9, v9, v7

    .line 105
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getDeltas()[F

    move-result-object v10

    aget v10, v10, v7

    cmpl-float v16, v9, v11

    if-ltz v16, :cond_9e

    int-to-float v11, v6

    mul-float/2addr v9, v11

    add-float/2addr v14, v9

    mul-float/2addr v11, v10

    add-float/2addr v15, v11

    add-int/2addr v13, v6

    :cond_9e
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto :goto_4a

    :cond_a2
    if-lez v13, :cond_b4

    int-to-float v6, v13

    div-float/2addr v14, v6

    const/4 v9, 0x0

    .line 114
    invoke-static {v14, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    div-float v11, v15, v6

    goto :goto_b8

    :cond_b4
    const/4 v9, 0x0

    move v11, v9

    move/from16 v9, p2

    .line 120
    :goto_b8
    new-instance v6, Lio/blueflower/stapel2d/util/Tuple;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cb
    :goto_cb
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1e

    :cond_cf
    const/high16 p2, 0x3f000000    # 0.5f

    .line 124
    monitor-exit p1
    :try_end_d2
    .catchall {:try_start_19 .. :try_end_d2} :catchall_42

    .line 126
    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    const-class v5, Linfo/flowersoft/theotown/components/management/attribute/GeneralHappiness;

    invoke-static {v5}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v5

    .line 130
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v0

    .line 131
    new-instance v6, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getRatingValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 132
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getRatingDelta()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v7

    .line 135
    :goto_101
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1bc

    .line 136
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/util/Tuple;

    .line 138
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 139
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 140
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 142
    new-instance v11, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v8, 0xff

    invoke-direct {v11, v8, v8, v8}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    cmpg-float v8, v0, p2

    const/high16 v9, 0x40000000    # 2.0f

    if-gtz v8, :cond_13f

    mul-float/2addr v9, v0

    .line 145
    iget-object v8, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v10, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v11, v9, v8, v10}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_14b

    :cond_13f
    mul-float/2addr v9, v0

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v9, v9, v18

    .line 151
    iget-object v8, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v10, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v11, v9, v8, v10}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 158
    :goto_14b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v10

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getNameLocalizationId()I

    move-result v12

    invoke-interface {v10, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": %1$,.1f%%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v10, v0

    .line 159
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 158
    invoke-static {v9, v10}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {v7}, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;->getDeltaSign(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p0

    .line 160
    iget-object v9, v8, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;->happinessAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v9, v9, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v10, v9

    int-to-float v10, v10

    mul-float/2addr v0, v10

    float-to-int v0, v0

    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget v12, v9, v0

    .line 162
    new-instance v9, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-direct {v9, v7}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    .line 167
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    if-nez v6, :cond_1aa

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    :goto_1a8
    move-object v13, v0

    goto :goto_1ad

    :cond_1aa
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    goto :goto_1a8

    :goto_1ad
    new-instance v14, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda1;

    move-object/from16 v0, p4

    invoke-direct {v14, v0, v1, v5}, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda1;-><init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    const/4 v10, 0x0

    .line 162
    invoke-virtual/range {v8 .. v14}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILio/blueflower/stapel2d/drawing/Font;Ljava/lang/Runnable;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_101

    :cond_1bc
    return-void

    .line 124
    :goto_1bd
    :try_start_1bd
    monitor-exit p1
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_42

    throw v0
.end method

.method public createIcon(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Z)Lio/blueflower/stapel2d/gui/Icon;
    .registers 12

    const/4 p3, 0x3

    .line 58
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getRatingValue()F

    move-result p1

    .line 60
    iget-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;->happinessAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p3, p3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, p3

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget v2, p3, p1

    .line 62
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$1;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 71
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    return-object v0
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 52
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x603

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 191
    const-string v0, "RatingCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0x8af

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 196
    const-string v0, "Rating"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.RatingCityInfo.AnonymousClass1 (info.flowersoft.theotown.stages.cityinfo.RatingCityInfo$1)
.class public Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$1;
.super Lio/blueflower/stapel2d/gui/Icon;
.source "RatingCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;->createIcon(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Z)Lio/blueflower/stapel2d/gui/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;IIIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 65
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v0, 0x40000000    # 2.0f

    .line 66
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 67
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    int-to-float v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    int-to-float v4, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    const/high16 v8, 0x3f000000    # 0.5f

    iget v9, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 68
    invoke-virtual {v1, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.RatingCityInfo$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.cityinfo.RatingCityInfo$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/blueflower/stapel2d/util/Tuple;

    check-cast p2, Lio/blueflower/stapel2d/util/Tuple;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;->$r8$lambda$ryamEq5SlC-Y6M0_j-yCz8U5QLU(Lio/blueflower/stapel2d/util/Tuple;Lio/blueflower/stapel2d/util/Tuple;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.RatingCityInfo$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.cityinfo.RatingCityInfo$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;

.field public final synthetic f$2:Linfo/flowersoft/theotown/components/management/attribute/Attribute;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;->$r8$lambda$hPYMPC-EiVavW_hxPTGmVmbtl_A(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    return-void
.end method
