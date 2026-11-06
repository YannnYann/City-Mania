###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;,
        Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;,
        Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$EmptyListItem;,
        Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;,
        Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$CategoryListItem;,
        Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$TopicListItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;)V
    .registers 1

    .line 42
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->playSound()V

    return-void
.end method

.method public static createEstateLabel(Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultBudget;Lio/blueflower/stapel2d/gamestack/Translator;)Lio/blueflower/stapel2d/gui/Label;
    .registers 12

    .line 67
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/16 v5, 0xf

    const-string v1, ""

    const/4 v2, 0x0

    const/16 v3, -0xf

    move-object v6, p0

    move-object v8, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/components/DefaultBudget;)V

    return-object v0
.end method


# virtual methods
.method public final addCategory(Ljava/lang/String;Lio/blueflower/stapel2d/gui/ListBox;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)V
    .registers 6

    .line 286
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;)V

    .line 287
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$302(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 288
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE_ULTRA_LIGHT:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$402(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 289
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$202(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 290
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$CategoryListItem;

    invoke-direct {v0, p0, p1, p3}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$CategoryListItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Ljava/lang/String;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)V

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public final addTopic(Ljava/lang/String;Lio/blueflower/stapel2d/gui/ListBox;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)V
    .registers 5

    .line 294
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$TopicListItem;

    invoke-direct {v0, p0, p1, p3}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$TopicListItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Ljava/lang/String;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)V

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 35

    const/4 v0, 0x0

    move-object/from16 v1, p1

    .line 84
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 85
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/lit8 v16, v2, 0x1

    .line 86
    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v9

    .line 88
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v2

    const/4 v4, 0x2

    const/16 v21, 0x0

    if-nez v2, :cond_3d

    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v2, :cond_3d

    .line 90
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 91
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAllowBuyMoney()Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_43

    :cond_3d
    move-object/from16 v1, p0

    move/from16 v20, v0

    goto/16 :goto_f5

    .line 94
    :cond_43
    :goto_43
    new-instance v17, Lio/blueflower/stapel2d/gui/ElementLine;

    .line 95
    invoke-virtual/range {p2 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v22

    const/16 v23, 0x1e

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v24, p2

    invoke-direct/range {v17 .. v24}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v2, v13, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->createEstateLabel(Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultBudget;Lio/blueflower/stapel2d/gamestack/Translator;)Lio/blueflower/stapel2d/gui/Label;

    const/4 v1, 0x3

    .line 99
    new-array v5, v1, [D

    const-wide v6, 0x40cd4c0000000000L    # 15000.0

    aput-wide v6, v5, v0

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    aput-wide v6, v5, v3

    const-wide v6, 0x412e848000000000L    # 1000000.0

    aput-wide v6, v5, v4

    const/16 v6, 0x96

    const/16 v7, 0x4b0

    const/16 v8, 0x1e

    .line 104
    filled-new-array {v8, v6, v7}, [I

    move-result-object v18

    .line 109
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_GAMEMODE_HARD:I

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_GAMEMODE_MIDDLE:I

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_GAMEMODE_EASY:I

    filled-new-array {v6, v7, v8}, [I

    move-result-object v19

    move v6, v0

    :goto_8c
    if-ge v6, v1, :cond_9f

    .line 116
    aget-wide v7, v5, v6

    aget v10, v18, v6

    invoke-virtual {v13, v10}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMoneyForDiamonds(I)D

    move-result-wide v10

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8c

    :cond_9f
    move v6, v0

    :goto_a0
    if-ge v6, v1, :cond_ef

    .line 120
    aget-wide v10, v5, v6

    .line 121
    aget v12, v18, v6

    move v7, v0

    .line 123
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;

    aget v2, v19, v6

    const/16 v8, 0x788

    invoke-interface {v9, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    .line 124
    invoke-static {v10, v11}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    .line 123
    invoke-static {v8, v14}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move v14, v7

    .line 124
    invoke-virtual/range {v17 .. v17}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    move v15, v3

    move-object v3, v8

    invoke-virtual/range {v17 .. v17}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    move/from16 v20, v4

    const/4 v4, 0x0

    move-object/from16 v21, v5

    const/4 v5, 0x0

    move/from16 v22, v6

    const/4 v6, 0x0

    move-object/from16 v15, p3

    move/from16 v20, v14

    move/from16 v23, v22

    move-object/from16 v14, p4

    move-object/from16 v22, v21

    move/from16 v21, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v15}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;DILinfo/flowersoft/theotown/components/DefaultBudget;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    add-int/lit8 v6, v23, 0x1

    move-object/from16 v2, p2

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v5, v22

    const/4 v3, 0x1

    const/4 v4, 0x2

    goto :goto_a0

    :cond_ef
    move-object/from16 v1, p0

    move/from16 v20, v0

    const/16 v21, 0x1f

    :goto_f5
    move/from16 v26, v21

    .line 149
    new-instance v24, Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual/range {p2 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    sub-int v28, v0, v26

    const/16 v25, 0x0

    move-object/from16 v29, p2

    invoke-direct/range {v24 .. v29}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v8, v24

    const/4 v15, 0x1

    .line 151
    invoke-virtual {v13, v15}, Linfo/flowersoft/theotown/components/DefaultBudget;->getIncomeItems(Z)Ljava/util/List;

    move-result-object v6

    .line 152
    invoke-virtual {v13, v15}, Linfo/flowersoft/theotown/components/DefaultBudget;->getSpendingItems(Z)Ljava/util/List;

    move-result-object v7

    .line 153
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move/from16 v0, v20

    .line 154
    :goto_11c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_12e

    .line 155
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11c

    :cond_12e
    move/from16 v0, v20

    .line 157
    :goto_130
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_142

    .line 158
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_130

    .line 161
    :cond_142
    sget-object v11, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 163
    new-instance v4, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    const/4 v12, 0x0

    invoke-direct {v4, v12}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;)V

    .line 164
    iget-object v0, v11, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v4, v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$202(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 165
    iget-object v0, v11, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iget-object v2, v11, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    const v14, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v2, v14}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v4, v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$302(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 166
    iget-object v0, v11, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iget-object v2, v11, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2, v14}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v4, v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$402(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    const/16 v0, 0x152

    .line 167
    invoke-interface {v9, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8, v4}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->addCategory(Ljava/lang/String;Lio/blueflower/stapel2d/gui/ListBox;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)V

    const/16 v0, 0xcbf

    .line 168
    invoke-interface {v9, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8, v4}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->addTopic(Ljava/lang/String;Lio/blueflower/stapel2d/gui/ListBox;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)V

    move/from16 v15, v20

    :goto_184
    const/16 v0, 0x9

    if-ge v15, v0, :cond_1b6

    .line 170
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/components/BudgetItem;

    .line 171
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;

    move-object/from16 v3, p3

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/BudgetItem;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Z)V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    const/4 v2, 0x2

    if-eq v15, v2, :cond_1a1

    const/4 v0, 0x5

    if-ne v15, v0, :cond_1b1

    .line 173
    :cond_1a1
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$EmptyListItem;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$EmptyListItem;-><init>()V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 174
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;)V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    :cond_1b1
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v5

    goto :goto_184

    :cond_1b6
    move/from16 v5, v16

    .line 178
    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$EmptyListItem;

    invoke-direct {v2}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$EmptyListItem;-><init>()V

    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 179
    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;)V

    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    move v15, v0

    .line 181
    :goto_1c9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_1e9

    .line 182
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/components/BudgetItem;

    .line 183
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/BudgetItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 184
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/BudgetItem;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Z)V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    :cond_1e6
    add-int/lit8 v15, v15, 0x1

    goto :goto_1c9

    .line 188
    :cond_1e9
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$EmptyListItem;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$EmptyListItem;-><init>()V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 189
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;)V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 191
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;

    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$3;

    invoke-direct {v2, v1, v13, v6}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$3;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/DefaultBudget;Ljava/util/List;)V

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/BudgetItem;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Z)V

    move-object v6, v4

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 215
    new-instance v4, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    invoke-direct {v4, v12}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;)V

    .line 216
    iget-object v0, v11, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v4, v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$202(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 217
    iget-object v0, v11, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iget-object v2, v11, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2, v14}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v4, v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$302(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 218
    iget-object v0, v11, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iget-object v2, v11, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2, v14}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v4, v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$402(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    const/16 v0, 0x636

    .line 219
    invoke-interface {v9, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8, v4}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->addCategory(Ljava/lang/String;Lio/blueflower/stapel2d/gui/ListBox;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)V

    .line 220
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_23e
    :goto_23e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/components/BudgetItem;

    .line 221
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/BudgetItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_23e

    .line 222
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/BudgetItem;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Z)V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    goto :goto_23e

    .line 226
    :cond_25c
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$EmptyListItem;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$EmptyListItem;-><init>()V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 227
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;)V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 229
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;

    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$4;

    invoke-direct {v2, v1, v13, v7}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$4;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/DefaultBudget;Ljava/util/List;)V

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/BudgetItem;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Z)V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 250
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;)V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 251
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;)V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 253
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$6;

    new-instance v2, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$5;

    invoke-direct {v2, v1, v13, v10}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$5;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/DefaultBudget;Ljava/util/List;)V

    move-object v7, v4

    move-object v4, v6

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$6;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/BudgetItem;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;ZLinfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)V

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 59
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 60
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x2ef

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :cond_15
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x733

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 45
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 484
    const-string v0, "BudgetCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 50
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0x267

    return p1

    :cond_d
    const/16 p1, 0x996

    return p1
.end method

.method public final playSound()V
    .registers 4

    .line 282
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_MONEY:I

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 489
    const-string v0, "Budget"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.AnonymousClass1 (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$1)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;
.super Lio/blueflower/stapel2d/gui/Label;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->createEstateLabel(Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultBudget;Lio/blueflower/stapel2d/gamestack/Translator;)Lio/blueflower/stapel2d/gui/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/components/DefaultBudget;)V
    .registers 9

    .line 67
    iput-object p7, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-direct/range {p0 .. p6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 6

    .line 75
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 76
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_11

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0

    :cond_11
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x6d4

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v1

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.AnonymousClass2 (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$2)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

.field public final synthetic val$amount:D

.field public final synthetic val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final synthetic val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic val$diamondPrice:I

.field public final synthetic val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$WOAcqzq9A4YTcBbSivynwYcFO_g(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;Linfo/flowersoft/theotown/components/DefaultBudget;DI)Ljava/lang/Boolean;
    .registers 6

    .line 135
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    .line 135
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;)V

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "watch money ad "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    .line 137
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 138
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zxd6pL5NMBxBxYVgfiYMNy6PEKM(Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 140
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;DILinfo/flowersoft/theotown/components/DefaultBudget;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    move-object/from16 p1, p9

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    move-wide/from16 v0, p10

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$amount:D

    move/from16 p1, p12

    iput p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$diamondPrice:I

    move-object/from16 p1, p13

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    move-object/from16 p1, p14

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    move-object/from16 p1, p15

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 14

    .line 127
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 128
    new-instance v6, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x788

    .line 129
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$amount:D

    .line 130
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 129
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x537

    .line 131
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$amount:D

    .line 132
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 131
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 133
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lio/blueflower/stapel2d/gui/Master;

    iget v5, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$diamondPrice:I

    int-to-long v11, v5

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-wide v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$amount:D

    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda0;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;Linfo/flowersoft/theotown/components/DefaultBudget;DI)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    move-object v2, v8

    new-instance v8, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda1;-><init>(Lio/blueflower/stapel2d/gamestack/GameStack;)V

    move-object v3, v9

    iget-object v9, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->val$amount:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " money"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v10

    move-object v10, v1

    move v1, v7

    move-object v7, v0

    move-object v0, v6

    move-wide v5, v11

    const-string v11, "Earn_Money"

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$2$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$2$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final synthetic f$2:D

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;Linfo/flowersoft/theotown/components/DefaultBudget;DI)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-wide p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda0;->f$2:D

    iput p5, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda0;->f$2:D

    iget v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->$r8$lambda$WOAcqzq9A4YTcBbSivynwYcFO_g(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;Linfo/flowersoft/theotown/components/DefaultBudget;DI)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$2$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$2$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/GameStack;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$2;->$r8$lambda$Zxd6pL5NMBxBxYVgfiYMNy6PEKM(Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.AnonymousClass3 (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$3)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$3;
.super Linfo/flowersoft/theotown/components/BudgetItem;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

.field public final synthetic val$incomeItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/DefaultBudget;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 191
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$3;->val$incomeItems:Ljava/util/List;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/BudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;)V

    return-void
.end method


# virtual methods
.method public getAmount()J
    .registers 5

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$3;->val$incomeItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/BudgetItem;

    .line 196
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/BudgetItem;->getAmount()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    goto :goto_7

    .line 198
    :cond_1a
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getDoubleIncomeDays()I

    move-result v0

    if-lez v0, :cond_2a

    mul-int/lit8 v1, v1, 0x2

    :cond_2a
    int-to-long v0, v1

    return-wide v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0xcf0

    return v0
.end method

.method public getNameRaw()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.AnonymousClass4 (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$4)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$4;
.super Linfo/flowersoft/theotown/components/BudgetItem;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

.field public final synthetic val$spendingItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/DefaultBudget;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 229
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$4;->val$spendingItems:Ljava/util/List;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/BudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;)V

    return-void
.end method


# virtual methods
.method public getAmount()J
    .registers 5

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$4;->val$spendingItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/BudgetItem;

    .line 234
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/BudgetItem;->getAmount()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_1a
    int-to-long v0, v1

    return-wide v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0xc56

    return v0
.end method

.method public getNameRaw()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.AnonymousClass5 (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$5)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$5;
.super Linfo/flowersoft/theotown/components/BudgetItem;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

.field public final synthetic val$items:Ljava/util/List;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/DefaultBudget;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 253
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$5;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$5;->val$items:Ljava/util/List;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/BudgetItem;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;)V

    return-void
.end method


# virtual methods
.method public getAmount()J
    .registers 5

    .line 257
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$5;->val$items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/BudgetItem;

    .line 258
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/BudgetItem;->getAmount()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_1a
    int-to-long v0, v1

    return-wide v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0x4c8

    return v0
.end method

.method public getNameRaw()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.AnonymousClass6 (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$6)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$6;
.super Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

.field public final synthetic val$greenStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

.field public final synthetic val$redStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/BudgetItem;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;ZLinfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null
        }
    .end annotation

    .line 272
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$6;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    iput-object p6, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$6;->val$greenStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$6;->val$redStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    invoke-direct/range {p0 .. p5}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/BudgetItem;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Z)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 12

    .line 275
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->item:Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/BudgetItem;->getAmount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$6;->val$greenStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    goto :goto_11

    :cond_f
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$6;->val$redStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    :goto_11
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->colorStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    .line 276
    invoke-super/range {p0 .. p7}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.BlackLineItem (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$BlackLineItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlackLineItem"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 298
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BlackLineItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    .line 299
    const-string p1, ""

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 15

    .line 309
    iget-object p1, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object p2, p7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 310
    iget-object v0, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    const/high16 v5, 0x3f800000    # 1.0f

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 311
    iget-object p1, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/4 p1, 0x2

    return p1
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.BudgetListItem (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$BudgetListItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BudgetListItem"
.end annotation


# instance fields
.field public colorStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

.field public editable:Z

.field public item:Linfo/flowersoft/theotown/components/BudgetItem;

.field public modifierX:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Linfo/flowersoft/theotown/components/BudgetItem;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
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
            null
        }
    .end annotation

    .line 342
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    .line 343
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/BudgetItem;->getNameId()I

    move-result p3

    invoke-interface {p1, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/BudgetItem;->getNameId()I

    move-result p1

    if-nez p1, :cond_1d

    .line 345
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/BudgetItem;->getNameRaw()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    .line 347
    :cond_1d
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->item:Linfo/flowersoft/theotown/components/BudgetItem;

    .line 348
    iput-object p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->colorStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    .line 349
    iput-boolean p5, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->editable:Z

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 21

    .line 354
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->colorStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v8

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->colorStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$400(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v9

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 356
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 358
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->item:Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/BudgetItem;->getExtra()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 359
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v3, p3, 0x5

    int-to-float v3, v3

    sub-int v2, p6, v2

    .line 361
    div-int/lit8 v2, v2, 0x2

    add-int v2, p4, v2

    int-to-float v2, v2

    .line 362
    iget-object v4, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->colorStyle:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$200(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 363
    iget-object v4, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v6, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v4, v6, v1, v3, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 365
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->item:Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BudgetItem;->getAmount()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v1

    add-int v3, p3, v5

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    .line 366
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 367
    iget-object v4, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v6, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v4, v6, v1, v3, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 369
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->item:Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BudgetItem;->isModifyable()Z

    move-result v1

    if-eqz v1, :cond_125

    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->editable:Z

    if-eqz v1, :cond_125

    .line 370
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->getModifierX(I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->modifierX:I

    .line 372
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 373
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->item:Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/BudgetItem;->getModifyable()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%1$,.1f%%"

    invoke-static {v3, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 374
    iget v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->modifierX:I

    add-int v3, p3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 375
    iget-object v4, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v6, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v4, v6, v1, v3, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 377
    iget-object v3, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v4, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 379
    const-string v3, "+"

    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v4, v5

    .line 380
    iget v6, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->modifierX:I

    add-int v6, p3, v6

    int-to-float v6, v6

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v8, v5

    sub-float/2addr v6, v8

    const/16 v8, 0x14

    int-to-float v8, v8

    sub-float/2addr v6, v8

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v4

    sub-float/2addr v6, v9

    .line 381
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v10, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    const-string v11, "--"

    invoke-virtual {v9, v10, v11, v6, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 382
    iget v6, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->modifierX:I

    add-int v6, p3, v6

    int-to-float v6, v6

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v9

    div-float/2addr v9, v5

    sub-float/2addr v6, v9

    const/16 v9, 0xa

    int-to-float v9, v9

    sub-float/2addr v6, v9

    sub-float/2addr v6, v4

    .line 383
    iget-object v10, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v11, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    const-string v12, "-"

    invoke-virtual {v10, v11, v12, v6, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 385
    iget v6, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->modifierX:I

    add-int v6, p3, v6

    int-to-float v6, v6

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v10

    div-float/2addr v10, v5

    add-float/2addr v6, v10

    add-float/2addr v6, v9

    .line 386
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v10, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v9, v10, v3, v6, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 387
    iget v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->modifierX:I

    add-int v3, p3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr v3, p1

    add-float/2addr v3, v8

    add-float/2addr v3, v4

    .line 388
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    const-string v4, "++"

    invoke-virtual {p1, v1, v4, v3, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 391
    :cond_125
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x14

    return p1
.end method

.method public final getModifierX(I)I
    .registers 2

    .line 0
    add-int/lit8 p1, p1, -0x64

    return p1
.end method

.method public onClick(II)V
    .registers 5

    .line 401
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->item:Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/BudgetItem;->isModifyable()Z

    move-result p2

    if-eqz p2, :cond_5b

    iget-boolean p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->editable:Z

    if-eqz p2, :cond_5b

    .line 402
    iget p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->modifierX:I

    sub-int/2addr p1, p2

    .line 403
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0x1e

    if-gt p2, v0, :cond_30

    .line 404
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object p2

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CLICK:I

    sget-object v1, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {p2, v0, v1}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    if-gez p1, :cond_2a

    .line 406
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->item:Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/BudgetItem;->decrementModifyable()V

    return-void

    .line 408
    :cond_2a
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->item:Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/BudgetItem;->incrementModifyable()V

    return-void

    .line 410
    :cond_30
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0x32

    if-gt p2, v0, :cond_5b

    .line 411
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object p2

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CLICK:I

    sget-object v1, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {p2, v0, v1}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    const/4 p2, 0x5

    const/4 v0, 0x0

    if-gez p1, :cond_51

    :goto_47
    if-ge v0, p2, :cond_5b

    .line 413
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->item:Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/BudgetItem;->decrementModifyable()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_51
    :goto_51
    if-ge v0, p2, :cond_5b

    .line 415
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$BudgetListItem;->item:Linfo/flowersoft/theotown/components/BudgetItem;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/BudgetItem;->incrementModifyable()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_5b
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.CategoryListItem (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$CategoryListItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$CategoryListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategoryListItem"
.end annotation


# instance fields
.field public style:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Ljava/lang/String;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 429
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$CategoryListItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    .line 430
    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 431
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$CategoryListItem;->style:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 25

    move-object/from16 v0, p0

    .line 441
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$CategoryListItem;->style:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v8

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$CategoryListItem;->style:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$400(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v9

    const/4 v1, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 443
    iget-object v8, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 444
    invoke-virtual {v8}, Lio/blueflower/stapel2d/drawing/Engine;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    .line 445
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$CategoryListItem;->style:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$200(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 446
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    .line 447
    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 448
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v10, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    move/from16 v3, p3

    int-to-float v11, v3

    int-to-float v12, v4

    int-to-float v13, v5

    int-to-float v14, v6

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v16, 0x3f000000    # 0.5f

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 449
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    const v4, 0x3ecccccd    # 0.4f

    add-float/2addr v4, v11

    move-object v5, v2

    move-object v2, v1

    move-object v1, v8

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v10, v5

    move v5, v12

    move v6, v13

    move v7, v14

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v8, v1

    .line 450
    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x1e

    return p1
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.EmptyListItem (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$EmptyListItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$EmptyListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyListItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 317
    const-string v0, ""

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 8

    .line 0
    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.ListItemColorStyle (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$ListItemColorStyle)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;
.super Ljava/lang/Object;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItemColorStyle"
.end annotation


# instance fields
.field public bg0:Lio/blueflower/stapel2d/drawing/Color;

.field public bg1:Lio/blueflower/stapel2d/drawing/Color;

.field public text:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$1;)V
    .registers 2

    .line 330
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 1

    .line 330
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->text:Lio/blueflower/stapel2d/drawing/Color;

    return-object p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 330
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->text:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 1

    .line 330
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->bg0:Lio/blueflower/stapel2d/drawing/Color;

    return-object p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 330
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->bg0:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 1

    .line 330
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->bg1:Lio/blueflower/stapel2d/drawing/Color;

    return-object p0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 330
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->bg1:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo.TopicListItem (info.flowersoft.theotown.stages.cityinfo.BudgetCityInfo$TopicListItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$TopicListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "BudgetCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopicListItem"
.end annotation


# instance fields
.field public final style:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;Ljava/lang/String;Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 457
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$TopicListItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    .line 458
    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 459
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$TopicListItem;->style:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 18

    .line 469
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$TopicListItem;->style:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v8

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$TopicListItem;->style:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$400(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v9

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 471
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    const-string p2, " "

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 472
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 p3, p3, 0x5

    sub-int p1, p6, p1

    .line 474
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p4, p1

    .line 476
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$TopicListItem;->style:Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;

    invoke-static {p2}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;->access$200(Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo$ListItemColorStyle;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 477
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object p2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p5, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {p1, p2, p5, p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 478
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x14

    return p1
.end method
