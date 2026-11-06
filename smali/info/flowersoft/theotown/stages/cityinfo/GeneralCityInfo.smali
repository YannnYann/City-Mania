###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.source "GeneralCityInfo.java"


# instance fields
.field public sandboxDialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public static synthetic $r8$lambda$1SkNq9lo43iZGcIri12gAZYO0UE(Linfo/flowersoft/theotown/city/City;Ljava/lang/String;)V
    .registers 2

    .line 135
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->setAuthor(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lio/blueflower/stapel2d/gui/GUICache;->invalidateAllCaches()V

    return-void
.end method

.method public static synthetic $r8$lambda$1YE7hZbAiVQF2HRE3DSBTKB1peM(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/ScenarioInfo;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 5

    .line 98
    sget-object v0, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;->Companion:Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;

    .line 101
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p2

    check-cast p2, Lio/blueflower/stapel2d/gui/Master;

    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda8;-><init>()V

    .line 98
    invoke-virtual {v0, p0, p1, p2, v1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;->forInfo(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/ScenarioInfo;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$1jLFtAmBRzB4pf90FNQUrgA1hcI(Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 4

    .line 163
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->showConvertToSandboxDialog(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D50NilCZu4PGU52RlZ5VxvU_-Mg(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 3

    .line 153
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getSeed()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Linfo/flowersoft/theotown/util/OSUtil;->pasteIntoClipboard(Ljava/lang/String;)V

    .line 154
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const/16 v0, 0xbc2

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P64Lsm35zH0h7jTtui3prhfMiDQ(Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 113
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 114
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p0

    check-cast p0, Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 115
    new-instance p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda9;

    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 116
    new-instance p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda10;

    invoke-direct {p0, p3}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 120
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    const/16 p2, 0xa11

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x62c

    .line 121
    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object p3

    .line 120
    invoke-virtual {v0, p0, p2, p1, p3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 122
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$XJlXgzXa902Yc7q75Blw70T7sVc(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xb41

    .line 126
    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getAuthor()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 126
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z-qjT5vrOEmQCXAw5Ta96dMghKk()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$coa4jM9SxB16DcFCUcy-Tc1AQ7k(Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 132
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p0

    check-cast p0, Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 133
    new-instance p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda11;

    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 134
    new-instance p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda12;

    invoke-direct {p0, p3}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda12;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 138
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/City;->getAuthor()Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2a

    goto :goto_2c

    :cond_2a
    const-string p0, ""

    .line 140
    :goto_2c
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MAYOR:I

    const/16 p3, 0x2c5

    .line 141
    invoke-interface {p1, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0x8ae

    .line 142
    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {v0, p2, p3, p1, p0}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$d3411bWKzj9_Mh3WJyvtqyZXcV8(Ljava/lang/String;)Z
    .registers 2

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$dqFCnCzzp2pD58U-sMIgSSHeuYw(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 181
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 182
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/stages/CityInfoStage;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 183
    new-instance p1, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    const-class p2, Linfo/flowersoft/theotown/components/statistics/ResidentialLvl1Item;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/stages/CityInfoStage;->selectCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    .line 184
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qTuu9PuNN_aRcz5Ij7_f5tJLFiY(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x460

    .line 108
    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 108
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wwjEA8brPxsqlCfKzyYoAXOHzN4(Linfo/flowersoft/theotown/city/City;Ljava/lang/String;)V
    .registers 2

    .line 117
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->setName(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lio/blueflower/stapel2d/gui/GUICache;->invalidateAllCaches()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;-><init>()V

    return-void
.end method

.method public static buildCityInfos(Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/gamestack/Translator;",
            "Linfo/flowersoft/theotown/cityloader/LightCityInfo;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 267
    :cond_3
    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    const/16 v1, 0x460

    .line 269
    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x49e

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->getLocalizationId()I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isUber()Z

    move-result v1

    if-eqz v1, :cond_5c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x4c3

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_5c
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getSeed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getTradingRelations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_84

    const/16 v0, 0xc43

    .line 276
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getSeed()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_84
    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object p1

    iget-wide p1, p1, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 24

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 64
    invoke-super/range {p0 .. p4}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    const/4 v0, 0x3

    .line 66
    invoke-virtual {v7, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    const/16 v1, 0x9

    .line 67
    invoke-virtual {v7, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Linfo/flowersoft/theotown/city/components/People;

    const/16 v1, 0x17

    .line 68
    invoke-virtual {v7, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultScenario;

    .line 69
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v12

    .line 70
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    .line 71
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v13

    .line 72
    new-instance v1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v1, v7}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 73
    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    if-eqz v0, :cond_9b

    .line 77
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAuthor()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-class v5, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    if-eqz v4, :cond_54

    .line 81
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v3, v4, Linfo/flowersoft/theotown/draft/Draft;->author:Ljava/lang/String;

    :cond_54
    const/16 v1, 0x7d3

    .line 85
    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6f

    move-object v2, v4

    goto :goto_7d

    :cond_6f
    const/16 v2, 0x174

    .line 89
    invoke-interface {v13, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 88
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    :goto_7d
    new-instance v3, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-direct {v3, v1}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    if-nez v2, :cond_87

    :goto_84
    move-object v1, v3

    move-object v2, v4

    goto :goto_8d

    .line 94
    :cond_87
    new-instance v4, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-direct {v4, v2}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    goto :goto_84

    :goto_8d
    iget-object v3, v14, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_SCENARIO:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5, v9, v0, v8}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda0;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/ScenarioInfo;Lio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v0, p0

    .line 92
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    .line 107
    :cond_9b
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1, v13, v7}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda1;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)V

    iget-object v3, v14, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda2;

    invoke-direct {v5, v8, v13, v9, v7}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda2;-><init>(Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    .line 123
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    const/4 v15, 0x1

    xor-int/lit8 v6, v0, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    .line 107
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;Z)V

    .line 125
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda3;

    invoke-direct {v1, v13, v7}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda3;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)V

    iget-object v3, v14, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda4;

    invoke-direct {v5, v8, v13, v9, v7}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda4;-><init>(Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    .line 144
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->isOnline()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    .line 125
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;Z)V

    .line 146
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getSeed()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fd

    .line 147
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    const/16 v0, 0xc43

    .line 148
    invoke-interface {v13, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getSeed()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    iget-object v3, v14, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_COPY:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda5;

    invoke-direct {v5, v7, v13}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Translator;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    .line 147
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    goto :goto_ff

    :cond_fd
    move-object/from16 v0, p0

    .line 158
    :goto_ff
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x49e

    invoke-interface {v13, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/GameMode;->getLocalizationId()I

    move-result v4

    invoke-interface {v13, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v4

    if-eqz v4, :cond_147

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x4c3

    invoke-interface {v13, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    :cond_147
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->isOnline()Z

    move-result v3

    if-nez v3, :cond_185

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/GameMode;->hasGameLogic()Z

    move-result v3

    if-eqz v3, :cond_185

    const-string v3, "_mooncolonydsa"

    const-wide/16 v4, 0x0

    invoke-virtual {v7, v3, v4, v5}, Linfo/flowersoft/theotown/city/City;->getTransitionVar(Ljava/lang/String;J)J

    move-result-wide v16

    cmp-long v3, v16, v4

    if-nez v3, :cond_185

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v3

    if-nez v3, :cond_185

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v3

    if-nez v3, :cond_185

    move-object v3, v1

    .line 162
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_WIZARD:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0, v7, v8, v10}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 163
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v2

    xor-int/lit8 v6, v2, 0x1

    const/4 v2, 0x0

    move-object v8, v3

    const/4 v3, 0x0

    .line 162
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;Z)V

    goto :goto_189

    :cond_185
    move-object v8, v1

    .line 165
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    .line 168
    :goto_189
    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    if-eq v8, v1, :cond_1b0

    const/16 v1, 0xbf1

    .line 169
    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getCurrentXp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%1$,d"

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    .line 173
    :cond_1b0
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addSpace()V

    .line 175
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    const/16 v2, 0xb07

    .line 176
    invoke-interface {v13, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lio/blueflower/stapel2d/util/StaticGetter;

    const-string v3, ""

    invoke-direct {v2, v3}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    iget-object v3, v14, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_STATISTICS:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda7;

    invoke-direct {v5, v10, v7, v9}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda7;-><init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 175
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    .line 187
    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;

    const/4 v1, 0x6

    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v14}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Skin;)V

    const/16 v1, 0x1dc

    .line 188
    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v4

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->COLOR_RES1:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v2, v4, v5}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->addEntry(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Color;)V

    const/16 v2, 0x1dd

    .line 189
    invoke-interface {v13, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v15}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v5

    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->COLOR_RES2:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v4, v5, v7}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->addEntry(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Color;)V

    const/16 v4, 0x1de

    .line 190
    invoke-interface {v13, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v11, v7}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v8

    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->COLOR_RES3:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v5, v8, v9}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->addEntry(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Color;)V

    .line 192
    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;

    const/16 v8, 0x62b

    invoke-interface {v13, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v14}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Skin;)V

    .line 193
    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v6, v6}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v9

    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->COLOR_COM1:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v8, v9, v10}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->addEntry(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Color;)V

    .line 194
    invoke-interface {v13, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v15, v6}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v9

    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->COLOR_COM2:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v8, v9, v10}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->addEntry(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Color;)V

    .line 195
    invoke-interface {v13, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v6}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v9

    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->COLOR_COM3:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v8, v9, v10}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->addEntry(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Color;)V

    move-object v8, v5

    .line 197
    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;

    const/16 v9, 0xc02

    invoke-interface {v13, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9, v14}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Skin;)V

    .line 198
    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v6, v6}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v9

    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->COLOR_IND1:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v1, v9, v10}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->addEntry(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Color;)V

    .line 199
    invoke-interface {v13, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v15, v6}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v2

    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->COLOR_IND2:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v1, v2, v9}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->addEntry(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Color;)V

    .line 200
    invoke-interface {v13, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v7, v6}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v2

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->COLOR_IND3:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v1, v2, v4}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->addEntry(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Color;)V

    .line 202
    iget-object v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$1;

    const-string v2, ""

    move-object/from16 v1, p0

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$1;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;Ljava/lang/String;Linfo/flowersoft/theotown/stages/cityinfo/PieChart;Linfo/flowersoft/theotown/stages/cityinfo/PieChart;Linfo/flowersoft/theotown/stages/cityinfo/PieChart;)V

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    const/16 v1, 0xd39

    .line 219
    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v6}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    const/16 v1, 0xd38

    .line 220
    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v15}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    const/16 v1, 0xd36

    .line 221
    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v7}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addSeparator()V

    const/16 v1, 0xbca

    .line 225
    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    return-void
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 59
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x1a8

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 49
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 254
    const-string v0, "GeneralCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0x8e0

    return p1
.end method

.method public final showConvertToSandboxDialog(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 10

    .line 229
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->sandboxDialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x1

    if-nez v0, :cond_47

    .line 230
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    .line 231
    new-instance v2, Linfo/flowersoft/theotown/ui/Dialog;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_OVERLOADED:I

    const/16 v4, 0x26c

    .line 232
    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x634

    .line 233
    invoke-interface {v0, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 234
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p2

    check-cast p2, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v2, v3, v4, v5, p2}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 236
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 v3, 0x5c5

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p2

    invoke-virtual {p2, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 237
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_GAMEMODE_SANDBOX:I

    const/16 v3, 0x178

    .line 238
    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$2;

    invoke-direct {v3, p0, p1, p3}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$2;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    const/4 p1, 0x0

    .line 237
    invoke-virtual {v2, p2, v0, p1, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 245
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 246
    iput-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->sandboxDialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 249
    :cond_47
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->sandboxDialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 259
    const-string v0, "General"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo.AnonymousClass1 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$1)
.class public Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$1;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "GeneralCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;

.field public final synthetic val$comPie:Linfo/flowersoft/theotown/stages/cityinfo/PieChart;

.field public final synthetic val$indPie:Linfo/flowersoft/theotown/stages/cityinfo/PieChart;

.field public final synthetic val$resPie:Linfo/flowersoft/theotown/stages/cityinfo/PieChart;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;Ljava/lang/String;Linfo/flowersoft/theotown/stages/cityinfo/PieChart;Linfo/flowersoft/theotown/stages/cityinfo/PieChart;Linfo/flowersoft/theotown/stages/cityinfo/PieChart;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$1;->val$resPie:Linfo/flowersoft/theotown/stages/cityinfo/PieChart;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$1;->val$comPie:Linfo/flowersoft/theotown/stages/cityinfo/PieChart;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$1;->val$indPie:Linfo/flowersoft/theotown/stages/cityinfo/PieChart;

    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 16

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 205
    invoke-super/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    add-int/lit8 p5, v6, -0x1

    sub-int p6, v6, p5

    .line 207
    div-int/lit8 p6, p6, 0x2

    add-int p4, v4, p6

    .line 209
    iget-object p1, v0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$1;->val$resPie:Linfo/flowersoft/theotown/stages/cityinfo/PieChart;

    iget-object p2, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    div-int/lit8 p3, v5, 0x6

    add-int/2addr p3, v3

    div-int/lit8 p7, p5, 0x2

    sub-int/2addr p3, p7

    move p6, p5

    invoke-virtual/range {p1 .. p6}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V

    .line 210
    iget-object p1, v0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$1;->val$comPie:Linfo/flowersoft/theotown/stages/cityinfo/PieChart;

    iget-object p2, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-int/lit8 p3, v5, 0x3

    div-int/lit8 p3, p3, 0x6

    add-int/2addr p3, v3

    sub-int/2addr p3, p7

    invoke-virtual/range {p1 .. p6}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V

    .line 211
    iget-object p1, v0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$1;->val$indPie:Linfo/flowersoft/theotown/stages/cityinfo/PieChart;

    iget-object p2, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-int/lit8 p3, v5, 0x5

    div-int/lit8 p3, p3, 0x6

    add-int/2addr p3, v3

    sub-int/2addr p3, p7

    invoke-virtual/range {p1 .. p6}, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x64

    return p1
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo.AnonymousClass2 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$2)
.class public Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$2;
.super Ljava/lang/Object;
.source "GeneralCityInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->showConvertToSandboxDialog(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$2;->val$city:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$2;->val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 241
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$2;->val$city:Linfo/flowersoft/theotown/city/City;

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->setGameMode(Linfo/flowersoft/theotown/city/GameMode;)V

    .line 242
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$2;->val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/ScenarioInfo;

.field public final synthetic f$2:Lio/blueflower/stapel2d/gui/Gadget;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/ScenarioInfo;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/ScenarioInfo;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/gui/Gadget;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/ScenarioInfo;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$1YE7hZbAiVQF2HRE3DSBTKB1peM(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/ScenarioInfo;Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$Z-qjT5vrOEmQCXAw5Ta96dMghKk()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/Translator;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$qTuu9PuNN_aRcz5Ij7_f5tJLFiY(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda10 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$wwjEA8brPxsqlCfKzyYoAXOHzN4(Linfo/flowersoft/theotown/city/City;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda11 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$d3411bWKzj9_Mh3WJyvtqyZXcV8(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda12 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/city/City;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$1SkNq9lo43iZGcIri12gAZYO0UE(Linfo/flowersoft/theotown/city/City;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gui/Gadget;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Translator;

.field public final synthetic f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$3:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda2;->f$0:Lio/blueflower/stapel2d/gui/Gadget;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda2;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda2;->f$3:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda2;->f$0:Lio/blueflower/stapel2d/gui/Gadget;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda2;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda2;->f$3:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$P64Lsm35zH0h7jTtui3prhfMiDQ(Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/Translator;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda3;->f$0:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda3;->f$0:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$XJlXgzXa902Yc7q75Blw70T7sVc(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gui/Gadget;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Translator;

.field public final synthetic f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$3:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda4;->f$0:Lio/blueflower/stapel2d/gui/Gadget;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda4;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda4;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda4;->f$3:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda4;->f$0:Lio/blueflower/stapel2d/gui/Gadget;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda4;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda4;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda4;->f$3:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$coa4jM9SxB16DcFCUcy-Tc1AQ7k(Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/city/City;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda5;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/city/City;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda5;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$D50NilCZu4PGU52RlZ5VxvU_-Mg(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Translator;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;

.field public final synthetic f$2:Lio/blueflower/stapel2d/gui/Gadget;

.field public final synthetic f$3:Lio/blueflower/stapel2d/gamestack/GameStack;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda6;->f$2:Lio/blueflower/stapel2d/gui/Gadget;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda6;->f$3:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda6;->f$2:Lio/blueflower/stapel2d/gui/Gadget;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda6;->f$3:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$1jLFtAmBRzB4pf90FNQUrgA1hcI(Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;

.field public final synthetic f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda7;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda7;->f$1:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda7;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda7;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda7;->f$1:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda7;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->$r8$lambda$dqFCnCzzp2pD58U-sMIgSSHeuYw(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda9 (info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isCityNameValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
