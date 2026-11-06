###### Class info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation (info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;
.source "ConstructionBuildingInformation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 2

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/ui/Dialog;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide v4

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    int-to-long v8, v0

    goto :goto_36

    :cond_24
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgrade()Linfo/flowersoft/theotown/draft/UpgradeDraft;

    move-result-object v0

    iget-wide v8, v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;->buildTime:J

    goto :goto_36

    :cond_35
    move-wide v8, v6

    .line 101
    :goto_36
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_42

    neg-double v2, v4

    :goto_40
    double-to-int v0, v2

    goto :goto_52

    :cond_42
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgradeDaysLeft(D)D

    move-result-wide v2

    goto :goto_40

    :cond_51
    move v0, v10

    :goto_52
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-lez v11, :cond_166

    cmp-long v0, v8, v6

    if-lez v0, :cond_166

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_166

    .line 104
    const-string v0, "construction"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-wide/16 v2, 0x5

    cmp-long v2, v8, v2

    if-ltz v2, :cond_a7

    .line 106
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->freeBuildTimeSkip:Z

    if-eqz v2, :cond_77

    goto :goto_a7

    .line 107
    :cond_77
    const-string v2, "skip price factor"

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    invoke-virtual {v0, v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v2, v5

    int-to-double v5, v11

    const-string v7, "skip price divisor"

    .line 109
    invoke-virtual {v0, v7, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    div-double/2addr v5, v3

    const-string v3, "skip price inner offset"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v3, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    add-double/2addr v5, v3

    .line 108
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    const-string v3, "skip price outer offset"

    const-wide/16 v4, 0x0

    .line 110
    invoke-virtual {v0, v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    add-float/2addr v2, v0

    .line 107
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v12, v0

    goto :goto_a8

    :cond_a7
    :goto_a7
    move v12, v10

    .line 112
    :goto_a8
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 113
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xd6

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;)V

    .line 126
    :cond_d4
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    const/16 v2, 0xcb4

    if-eqz v0, :cond_137

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v0

    mul-int/2addr v11, v0

    mul-int/lit8 v11, v11, 0x64

    int-to-long v3, v11

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 130
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFASTFAST:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 131
    invoke-interface {v7, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v7, v3

    invoke-static {v7, v8}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v6

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    .line 133
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v6

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    move-wide v10, v3

    const/4 v4, 0x0

    move-object v3, v2

    move v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultBudget;JLinfo/flowersoft/theotown/ui/Dialog;)V

    .line 145
    invoke-virtual {v9, v10, v11}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    return-void

    .line 147
    :cond_137
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFASTFAST:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 148
    invoke-interface {v4, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    .line 150
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, v3

    move-object v3, v2

    move v2, v1

    move-object v1, p0

    move-object/from16 v13, p3

    move v9, v11

    move v10, v12

    move-object v11, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v13}, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;IILinfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    :cond_166
    return-void
.end method

.method public getText()Ljava/lang/String;
    .registers 12

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    .line 50
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getShortBuildTimeFactor()I

    move-result v0

    .line 51
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v4

    .line 52
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_32

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    long-to-double v2, v2

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide v2

    neg-double v2, v2

    :goto_30
    double-to-int v2, v2

    goto :goto_43

    :cond_32
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    long-to-double v2, v2

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgradeDaysLeft(D)D

    move-result-wide v2

    goto :goto_30

    :cond_42
    move v2, v6

    .line 54
    :goto_43
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 55
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v3

    if-eqz v3, :cond_52

    iget v3, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    goto :goto_65

    :cond_52
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgrade()Linfo/flowersoft/theotown/draft/UpgradeDraft;

    move-result-object v3

    iget-wide v7, v3, Linfo/flowersoft/theotown/draft/UpgradeDraft;->buildTime:J

    long-to-int v3, v7

    goto :goto_65

    :cond_64
    move v3, v6

    .line 57
    :goto_65
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 58
    iget v5, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    div-int v7, v5, v0

    sub-int v7, v5, v7

    sub-int/2addr v2, v7

    .line 59
    div-int v0, v5, v0

    sub-int/2addr v5, v0

    sub-int/2addr v3, v5

    :cond_78
    int-to-float v0, v2

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v0, v5

    .line 62
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v5, v0

    const/4 v1, 0x0

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 64
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x67c

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 64
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v1

    const-string v3, "\n"

    if-eqz v1, :cond_d2

    .line 68
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgrade()Linfo/flowersoft/theotown/draft/UpgradeDraft;

    move-result-object v1

    .line 69
    new-instance v5, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v5, v7}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_d2
    iget-boolean v1, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->idleBuildTime:Z

    if-eqz v1, :cond_106

    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v1, :cond_106

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x6bc

    invoke-interface {v0, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/resources/Constants;->MS_PER_IDLE_DAY()J

    move-result-wide v7

    int-to-long v9, v2

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_106
    iget v1, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v2, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v1, v2

    .line 79
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->getBaseType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v4

    sget-object v5, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v4, v5, :cond_148

    .line 81
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xdb

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_148
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 86
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xcbc

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_17c
    return-object v0
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$1;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "ConstructionBuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 117
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 119
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgrade()Linfo/flowersoft/theotown/draft/UpgradeDraft;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeUpgrade(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    .line 121
    :cond_22
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation.AnonymousClass2 (info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation$2)
.class public Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "ConstructionBuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

.field public final synthetic val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$price:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultBudget;JLinfo/flowersoft/theotown/ui/Dialog;)V
    .registers 13
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
            null
        }
    .end annotation

    .line 133
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-wide p10, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->val$price:J

    iput-object p12, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 136
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-wide v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->val$price:J

    long-to-double v1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DLjava/lang/String;)V

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_41

    .line 139
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v3, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishBuilding(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    goto :goto_5b

    .line 140
    :cond_41
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 141
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v3, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishUpgrade(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 143
    :cond_5b
    :goto_5b
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation.AnonymousClass3 (info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation$3)
.class public Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "ConstructionBuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

.field public final synthetic val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic val$daysToSkip:I

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$diamondPrice:I

.field public final synthetic val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public static synthetic $r8$lambda$OjXRZLHVrXrNah1UqM55pACpKhQ(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;ILinfo/flowersoft/theotown/ui/BuyOrVideoDialog;Linfo/flowersoft/theotown/ui/Dialog;I)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p4, :cond_55

    .line 177
    sget-object p4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video skip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " days"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wachted ad"

    const-string v2, ""

    invoke-interface {p4, v0, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object p4, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object p4, p4, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result p4

    if-eqz p4, :cond_3c

    .line 179
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildDay()J

    move-result-wide v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setBuildDay(J)V

    goto :goto_4e

    .line 180
    :cond_3c
    iget-object p4, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object p4, p4, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result p4

    if-eqz p4, :cond_4e

    .line 181
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->skipPendingUpgradeDays(J)V

    :cond_4e
    :goto_4e
    const/4 p0, 0x0

    .line 183
    invoke-virtual {p2, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 184
    invoke-virtual {p3, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    :cond_55
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;IILinfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 14
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
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iput p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$daysToSkip:I

    iput p10, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$diamondPrice:I

    iput-object p11, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p12, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p13, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 16

    .line 153
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 154
    new-instance v2, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFASTFAST:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xcb4

    .line 155
    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x80c

    .line 156
    invoke-interface {v0, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$daysToSkip:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/blueflower/stapel2d/gui/Master;

    iget v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$diamondPrice:I

    int-to-long v7, v0

    new-instance v9, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;

    invoke-direct {v9, p0}, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;)V

    iget-object v11, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    const-string v12, "Skip build time"

    invoke-direct/range {v2 .. v14}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v10, v2

    .line 171
    iget v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$diamondPrice:I

    const/4 v11, 0x1

    if-lez v0, :cond_b6

    .line 172
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->getDiamondButton()Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 173
    const-string v0, "construction"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v2, "ad skip days"

    const/16 v3, 0x2d

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 174
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->videoAdStageFactory:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    new-instance v5, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0, v10, v4}, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;ILinfo/flowersoft/theotown/ui/BuyOrVideoDialog;Linfo/flowersoft/theotown/ui/Dialog;)V

    const-string v4, "Skip_Build_Time"

    invoke-interface {v2, v3, v4, v5}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;->create(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    move-result-object v9

    move v2, v0

    .line 187
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$2;

    move v3, v2

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY_AD_VIDEO:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x797

    .line 188
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$2;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/crossplatform/VideoAdStage;)V

    .line 201
    invoke-virtual {v0, v11}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 202
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/IconButton;->setMaxWidth(I)V

    .line 204
    :cond_b6
    invoke-virtual {v10, v11}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation.AnonymousClass3.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation$3$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;
.super Ljava/lang/Object;
.source "ConstructionBuildingInformation.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 5

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    .line 161
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v3, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishBuilding(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    goto :goto_43

    .line 162
    :cond_23
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 163
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v3, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishUpgrade(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 165
    :cond_43
    :goto_43
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 166
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 157
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$1;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation.AnonymousClass3.AnonymousClass2 (info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation$3$2)
.class public Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$2;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "ConstructionBuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

.field public final synthetic val$videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/crossplatform/VideoAdStage;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$2;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$2;->val$videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    .line 198
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$2;->val$videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    invoke-interface {v0}, Linfo/flowersoft/theotown/util/Loadable;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 192
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$2;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$2;->val$videoAdStage:Linfo/flowersoft/theotown/crossplatform/VideoAdStage;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation$3$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation$3$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

.field public final synthetic f$1:I

.field public final synthetic f$2:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

.field public final synthetic f$3:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;ILinfo/flowersoft/theotown/ui/BuyOrVideoDialog;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    iput p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method


# virtual methods
.method public final handle(I)V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;

    iget v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0, v1, v2, v3, p1}, Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;->$r8$lambda$OjXRZLHVrXrNah1UqM55pACpKhQ(Linfo/flowersoft/theotown/stages/tiledialog/ConstructionBuildingInformation$3;ILinfo/flowersoft/theotown/ui/BuyOrVideoDialog;Linfo/flowersoft/theotown/ui/Dialog;I)V

    return-void
.end method
