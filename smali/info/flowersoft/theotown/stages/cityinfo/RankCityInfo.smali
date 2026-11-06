###### Class info.flowersoft.theotown.stages.cityinfo.RankCityInfo (info.flowersoft.theotown.stages.cityinfo.RankCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.source "RankCityInfo.java"


# direct methods
.method public static synthetic $r8$lambda$BDIZW0Rr-tnwOgMsoo6admzmoAg(Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EHG4ei5Bi65KckfHOzWaxbXT6rs(Linfo/flowersoft/theotown/draft/RankDraft;ZLinfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 78
    iget v4, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    if-lez v4, :cond_68

    if-eqz p1, :cond_50

    .line 80
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Linfo/flowersoft/theotown/resources/Features;->getUnlockRankFeature(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;)Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v4

    if-eqz v4, :cond_68

    .line 82
    new-instance v5, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANK:I

    const/16 v7, 0x6a4

    .line 83
    invoke-interface {v2, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x4fa

    .line 84
    invoke-interface {v2, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, v4, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 85
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    int-to-long v10, v2

    new-instance v12, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda1;

    invoke-direct {v12, v1, v0, v3}, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    new-instance v13, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda2;

    invoke-direct {v13, v3}, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda2;-><init>(Lio/blueflower/stapel2d/gamestack/GameStack;)V

    iget-object v15, v4, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v16, "Get_Rank"

    const/16 v17, 0x0

    move-object/from16 v14, p6

    invoke-direct/range {v5 .. v17}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 90
    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    .line 92
    :cond_50
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    if-gt v4, v2, :cond_68

    .line 93
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v2

    if-nez v2, :cond_68

    .line 94
    new-instance v2, Linfo/flowersoft/theotown/stages/RankStage;

    move-object/from16 v14, p6

    invoke-direct {v2, v14, v1, v0}, Linfo/flowersoft/theotown/stages/RankStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;)V

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_68
    return-void
.end method

.method public static synthetic $r8$lambda$Jug-y1Bb-zw8nrgWAS9tyhsWuYU(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;Lio/blueflower/stapel2d/gamestack/GameStack;)Ljava/lang/Boolean;
    .registers 4

    const/16 v0, 0xb

    .line 87
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/components/DefaultRequirement;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultRequirement;->setNewRank(Linfo/flowersoft/theotown/draft/RankDraft;)V

    .line 88
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 89
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 23

    move-object/from16 v3, p1

    .line 50
    invoke-super/range {p0 .. p4}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 52
    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v4

    .line 53
    new-instance v8, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v8, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 54
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v0, v10

    move v12, v11

    .line 57
    :goto_14
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_ec

    .line 58
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RankDraft;

    .line 59
    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v2, :cond_3e

    .line 60
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Linfo/flowersoft/theotown/resources/Features;->canUnlockRank(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;)Z

    move-result v2

    if-eqz v2, :cond_3e

    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->hideRankFeature:Z

    if-nez v2, :cond_3e

    .line 62
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v2

    if-nez v2, :cond_3e

    move v2, v10

    goto :goto_3f

    :cond_3e
    move v2, v11

    :goto_3f
    const/16 v5, 0x94b

    .line 64
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Linfo/flowersoft/theotown/draft/RankDraft;->xp:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 65
    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 63
    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_73

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "     "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x6a4

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_73
    if-eqz v0, :cond_85

    const/16 v6, 0xb

    .line 71
    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/DefaultRequirement;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/DefaultRequirement;->getNewRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v6

    if-eq v1, v6, :cond_85

    move v13, v10

    goto :goto_86

    :cond_85
    move v13, v11

    .line 73
    :goto_86
    new-instance v14, Lio/blueflower/stapel2d/util/StaticGetter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v6}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    new-instance v15, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-direct {v15, v5}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    if-eqz v0, :cond_bb

    if-eqz v13, :cond_b8

    .line 75
    iget-object v5, v9, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    :goto_b5
    move-object/from16 v16, v5

    goto :goto_be

    :cond_b8
    iget-object v5, v9, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_b5

    :cond_bb
    iget-object v5, v9, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_b5

    :goto_be
    if-eqz v0, :cond_c5

    .line 76
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    :goto_c2
    move/from16 v17, v0

    goto :goto_cc

    :cond_c5
    if-eqz v2, :cond_ca

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    goto :goto_c2

    :cond_ca
    move/from16 v17, v11

    :goto_cc
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/draft/RankDraft;ZLinfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    move-object v5, v0

    move-object v6, v4

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v0, p0

    .line 73
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p1

    move-object v4, v6

    move v0, v13

    goto/16 :goto_14

    :cond_ec
    move-object/from16 v0, p0

    .line 103
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    add-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/ListBox;->selectItemIndex(I)V

    return-void
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 45
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0xb98

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 35
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANK:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 108
    const-string v0, "RankCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0x63f

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 113
    const-string v0, "Rank"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.RankCityInfo$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.cityinfo.RankCityInfo$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/draft/RankDraft;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Linfo/flowersoft/theotown/city/City;

.field public final synthetic f$3:Lio/blueflower/stapel2d/gamestack/Translator;

.field public final synthetic f$4:Lio/blueflower/stapel2d/gui/Gadget;

.field public final synthetic f$5:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final synthetic f$6:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/draft/RankDraft;ZLinfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/draft/RankDraft;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/city/City;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$3:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$4:Lio/blueflower/stapel2d/gui/Gadget;

    iput-object p6, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$5:Lio/blueflower/stapel2d/gamestack/GameStack;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$6:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/draft/RankDraft;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/city/City;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$3:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$4:Lio/blueflower/stapel2d/gui/Gadget;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$5:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda0;->f$6:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;->$r8$lambda$EHG4ei5Bi65KckfHOzWaxbXT6rs(Linfo/flowersoft/theotown/draft/RankDraft;ZLinfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.RankCityInfo$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.cityinfo.RankCityInfo$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;

.field public final synthetic f$1:Linfo/flowersoft/theotown/draft/RankDraft;

.field public final synthetic f$2:Lio/blueflower/stapel2d/gamestack/GameStack;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/city/City;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/draft/RankDraft;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda1;->f$2:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/city/City;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/draft/RankDraft;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda1;->f$2:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;->$r8$lambda$Jug-y1Bb-zw8nrgWAS9tyhsWuYU(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RankDraft;Lio/blueflower/stapel2d/gamestack/GameStack;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.RankCityInfo$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.cityinfo.RankCityInfo$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda2;
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

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda2;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo$$ExternalSyntheticLambda2;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;->$r8$lambda$BDIZW0Rr-tnwOgMsoo6admzmoAg(Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method
