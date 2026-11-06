###### Class info.flowersoft.theotown.stages.LoadWaitingStage (info.flowersoft.theotown.stages.LoadWaitingStage)
.class public Linfo/flowersoft/theotown/stages/LoadWaitingStage;
.super Linfo/flowersoft/theotown/stages/WaitingStage;
.source "LoadWaitingStage.java"


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 13

    .line 15
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAD:I

    .line 18
    invoke-static {p1, p4}, Linfo/flowersoft/theotown/stages/LoadWaitingStage;->getTitle(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityloader/CityKeeper;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {p4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getProgressProvider()Linfo/flowersoft/theotown/util/ProgressProvider;

    move-result-object v6

    .line 22
    invoke-virtual {p4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getStateProvider()Lio/blueflower/stapel2d/util/Getter;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 15
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    .line 24
    sget-boolean p1, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz p1, :cond_26

    .line 25
    iget-object p1, v0, Linfo/flowersoft/theotown/stages/WaitingStage;->infos:Ljava/util/List;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p2

    invoke-virtual {p4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p3

    invoke-static {p1, p2, p3}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;->buildCityInfos(Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V

    :cond_26
    return-void
.end method

.method public static getTitle(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityloader/CityKeeper;)Ljava/lang/String;
    .registers 3

    .line 32
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 33
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-eqz p1, :cond_1e

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    return-object p1

    .line 37
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p0

    const/16 p1, 0x1bc

    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, "LoadWaitingStage"

    return-object v0
.end method
