###### Class info.flowersoft.theotown.stages.CreateCityStage (info.flowersoft.theotown.stages.CreateCityStage)
.class public Linfo/flowersoft/theotown/stages/CreateCityStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "CreateCityStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/CreateCityStage$GameModeRepr;
    }
.end annotation


# instance fields
.field public cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

.field public gameModeDescription:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

.field public final generator:Linfo/flowersoft/theotown/util/CityGenerator;

.field public mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

.field public final region:Z

.field public tfAuthor:Linfo/flowersoft/theotown/ui/TextField;

.field public tfName:Linfo/flowersoft/theotown/ui/TextField;


# direct methods
.method public static synthetic $r8$lambda$1S2IX984sCrrfg2mb4s33fsJc68(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStage$5;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStage$5;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3DC8FqUPsBh0UgIgFEyWt3GYSPI(Linfo/flowersoft/theotown/stages/CreateCityStage;ILinfo/flowersoft/theotown/creation/RegionCreator;Linfo/flowersoft/theotown/util/Status;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;)V
    .registers 13

    .line 288
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 288
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getRegionLayout()Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/RegionLayout;->getMaxDivisor()I

    move-result v1

    const/4 v2, 0x0

    .line 290
    :goto_b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/RegionLayout;->countPlaces()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 291
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/RegionLayout;->getEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 292
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/RegionLayout;->getDivisor(I)I

    move-result v3

    .line 293
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/RegionLayout;->getX(I)I

    move-result v4

    mul-int/2addr v4, p1

    div-int/2addr v4, v1

    .line 294
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/RegionLayout;->getY(I)I

    move-result v5

    mul-int/2addr v5, p1

    div-int/2addr v5, v1

    sub-int v5, p1, v5

    div-int v3, p1, v3

    sub-int/2addr v5, v3

    .line 297
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 299
    invoke-virtual {p2, v4, v5, v3}, Linfo/flowersoft/theotown/creation/RegionCreator;->addRegionMap(III)V

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 303
    :cond_35
    const-string p1, "End creation"

    invoke-virtual {p3, p1}, Linfo/flowersoft/theotown/util/Status;->set(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Linfo/flowersoft/theotown/creation/RegionCreator;->endCreation()V

    .line 305
    invoke-virtual {p3}, Linfo/flowersoft/theotown/util/Status;->done()V

    .line 307
    invoke-virtual {p4}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object p1

    .line 308
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/CityGenerator;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->setName(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p4, p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z

    const/4 p0, 0x1

    .line 311
    invoke-interface {p5, p0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;->report(Z)V

    .line 312
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object p0

    iget-object p0, p0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_CREATED_REGION:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 313
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string p1, "region_generate"

    invoke-interface {p0, p1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 316
    invoke-virtual {p4}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->setSelectedRegionPath(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B1H97xYKQ6fj2fUc3D3qVdsPfRw(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 5

    .line 233
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    .line 233
    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-boolean p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->region:Z

    invoke-direct {v1, v2, v3, p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;-><init>(Linfo/flowersoft/theotown/util/CityGenerator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LDD5ZBX1WzHQmw9A4UbtqhqMU2w(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/Status;[Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    const-string v0, "Finalize"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/Status;->set(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 352
    aget-object p2, p2, v0

    .line 353
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->leftSideTrafficNewCities:Z

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->setLeftSideTraffic(Z)V

    .line 354
    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 355
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/Status;->done()V

    .line 357
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logNewCity(Linfo/flowersoft/theotown/city/City;)V

    .line 358
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/CityGenerator;->getSize()Linfo/flowersoft/theotown/city/MapSize;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result p1

    sget-object p2, Linfo/flowersoft/theotown/city/MapSize;->BIG4:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result p2

    if-lt p1, p2, :cond_34

    .line 359
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string p2, "giant_map_create"

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 362
    :cond_34
    new-instance v0, Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/cityfile/RegionInformation;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V

    invoke-virtual {p4, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    if-eqz p5, :cond_4a

    .line 365
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p5, p0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_4a
    return-void
.end method

.method public static synthetic $r8$lambda$Or4JSRlvhGr8rCutown4CwMDL_Q(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 1

    .line 318
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->deleteAnything()V

    .line 319
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static synthetic $r8$lambda$R6n-MRw9hYh2mCfvMK52qn-dmSU(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 1

    .line 234
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 234
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static synthetic $r8$lambda$SBSQVHoK2MIoi0Z3D4vOzIP12FM(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/Status;Linfo/flowersoft/theotown/creation/RegionCreator;Linfo/flowersoft/theotown/util/ProgressVariable;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    const-string v0, "Generate region"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/Status;->set(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 283
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getEffectiveSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x40

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 284
    invoke-virtual {p0, p3, p1}, Linfo/flowersoft/theotown/util/CityGenerator;->generate(Linfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    move-result-object p0

    .line 282
    invoke-virtual {p2, v0, p0}, Linfo/flowersoft/theotown/creation/RegionCreator;->beginCreation(ILinfo/flowersoft/theotown/creation/CityCreator$CityData;)V

    .line 285
    const-string p0, "Extract cities"

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/util/Status;->set(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SPxQPAL4tuichiU1NwVvBQ8Xovg(Z)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$_fYW2nkfgL-JHF3QuFrMYoo79gE(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/CityGenerator;)Linfo/flowersoft/theotown/city/City;
    .registers 3

    .line 414
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

    .line 414
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/MapPreview;->getProgress()Linfo/flowersoft/theotown/util/ProgressVariable;

    move-result-object v0

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/MapPreview;->getStatus()Lio/blueflower/stapel2d/util/Setter;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Linfo/flowersoft/theotown/util/CityGenerator;->generate(Linfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 415
    iget-object p0, p0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dSC5t0NRzCHtDXOcD7CQuT7nbjQ(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/city/GameMode;)V
    .registers 3

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 155
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/CityGenerator;->setGameMode(Linfo/flowersoft/theotown/city/GameMode;)V

    .line 156
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->updateGameModeDescription()V

    return-void
.end method

.method public static synthetic $r8$lambda$mmwj050gjGwuUMHe9vkmDeYD78s(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 15

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 191
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isCityNameValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 192
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->region:Z

    if-eqz v0, :cond_52

    .line 193
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->getDiamondPrice()I

    move-result v0

    if-nez v0, :cond_1f

    .line 195
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->createRegion(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    return-void

    .line 198
    :cond_1f
    new-instance v1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x1ff

    .line 200
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x226

    .line 201
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v6, 0x0

    .line 202
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    new-instance v8, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda7;

    invoke-direct {v8, p0}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    .line 207
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v9

    iget-object v10, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v13, 0x0

    const-string v11, "generate region"

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v13}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    .line 210
    :cond_52
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->FREE:Linfo/flowersoft/theotown/city/GameMode;

    if-ne v0, v1, :cond_80

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_80

    .line 211
    invoke-static {}, Linfo/flowersoft/theotown/resources/FreeModeManager;->getInstance()Linfo/flowersoft/theotown/resources/FreeModeManager;

    move-result-object v1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 212
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getSize()Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 213
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v5

    new-instance v6, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    const/4 v7, 0x0

    .line 211
    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/resources/FreeModeManager;->showDialog(ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;)V

    return-void

    :cond_80
    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->createCity(Lio/blueflower/stapel2d/util/Setter;)V

    :cond_84
    return-void
.end method

.method public static synthetic $r8$lambda$qAe0BglAZPizHbKGB8j69Jx0jDU(Linfo/flowersoft/theotown/stages/CreateCityStage;)Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->createCity(Lio/blueflower/stapel2d/util/Setter;)V

    .line 218
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$rBjTkk8eXEUVlGht2UdKxAS4ogc(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 1

    .line 91
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static synthetic $r8$lambda$sKi_2p8aqduH66W10cklxzWL-IE(Ljava/lang/Boolean;)V
    .registers 1

    .line 215
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_d

    .line 216
    invoke-static {}, Linfo/flowersoft/theotown/resources/FreeModeManager;->getInstance()Linfo/flowersoft/theotown/resources/FreeModeManager;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/FreeModeManager;->rollback()V

    :cond_d
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V
    .registers 4

    .line 65
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 67
    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->region:Z

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/util/CityGenerator;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    if-eqz p2, :cond_17

    .line 71
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getRegionLayout()Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 72
    invoke-virtual {p1, p2, v0}, Linfo/flowersoft/theotown/util/RegionLayout;->divide(II)I

    :cond_17
    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/CreateCityStage;)Linfo/flowersoft/theotown/util/CityGenerator;
    .registers 1

    .line 50
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/CreateCityStage;)Linfo/flowersoft/theotown/ui/TextField;
    .registers 1

    .line 50
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/creation/CityCreator$CityData;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 50
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/CreateCityStage;->prepareCity(Linfo/flowersoft/theotown/creation/CityCreator$CityData;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 1

    .line 50
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->generateMinimap()V

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStage;->createRegion(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    return-void
.end method


# virtual methods
.method public final createCity(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getDefault(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->findFileForNewCity(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 325
    new-instance v5, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {v5, v0, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;-><init>(Ljava/io/File;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 326
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for city "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/CityGenerator;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CityCreation"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v12, Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Linfo/flowersoft/theotown/util/ProgressVariable;-><init>(F)V

    .line 329
    new-instance v3, Linfo/flowersoft/theotown/util/Status;

    const-string v0, "City creation"

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/util/Status;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 330
    new-array v4, v0, [Linfo/flowersoft/theotown/city/City;

    .line 331
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v6

    .line 333
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 334
    new-instance v0, Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-object v9, v8

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x9d7

    .line 335
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    move-object v11, v9

    move-object v9, v10

    new-instance v10, Linfo/flowersoft/theotown/stages/CreateCityStage$6;

    invoke-direct {v10, p0, v12, v3, v4}, Linfo/flowersoft/theotown/stages/CreateCityStage$6;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/ProgressVariable;Linfo/flowersoft/theotown/util/Status;[Linfo/flowersoft/theotown/city/City;)V

    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/Status;[Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/util/Setter;)V

    move-object v13, v3

    move-object p1, v6

    move-object v7, v11

    move-object v6, v0

    move-object v11, v1

    invoke-direct/range {v6 .. v13}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    .line 334
    invoke-virtual {p1, v6}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public final createRegion(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 27

    move-object/from16 v1, p0

    .line 243
    new-instance v8, Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Linfo/flowersoft/theotown/util/ProgressVariable;-><init>(F)V

    .line 244
    new-instance v4, Linfo/flowersoft/theotown/util/Status;

    const-string v0, "Region creation"

    invoke-direct {v4, v0}, Linfo/flowersoft/theotown/util/Status;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v9

    .line 248
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getSize()Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result v0

    div-int/lit8 v2, v0, 0x40

    .line 250
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v3}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getNewRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v5

    .line 251
    new-instance v3, Linfo/flowersoft/theotown/creation/RegionCreator;

    iget-object v12, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 255
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getSeed()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 256
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getSeed()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 257
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->isTrees()Z

    move-result v16

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 258
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->isDecos()Z

    move-result v17

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 259
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->isTerrain()Z

    move-result v18

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 260
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->isRivers()Z

    move-result v19

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 261
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getRoughness()I

    move-result v20

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 262
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getActiveBiomes()Ljava/util/List;

    move-result-object v21

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 263
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v22

    const/16 v23, 0x0

    sget-boolean v24, Linfo/flowersoft/theotown/resources/Settings;->regionOriginBackup:Z

    const/16 v13, 0x40

    move-object v10, v3

    move-object v11, v5

    invoke-direct/range {v10 .. v24}, Linfo/flowersoft/theotown/creation/RegionCreator;-><init>(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/String;ZZZZILjava/util/List;Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/creation/HeightMap;Z)V

    .line 267
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 269
    :goto_73
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    instance-of v0, v0, Linfo/flowersoft/theotown/stages/RegionStage;

    if-nez v0, :cond_85

    .line 270
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    goto :goto_73

    .line 272
    :cond_85
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 273
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 275
    :cond_8e
    new-instance v7, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v7, v0}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 276
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, v6, v7}, Linfo/flowersoft/theotown/stages/RegionStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/RegionProvider;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/stages/RegionStage;->setLoadLastCity(Z)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 278
    new-instance v10, Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v11, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    sget v12, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x567

    .line 279
    invoke-interface {v0, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/Thread;

    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda9;

    invoke-direct {v0, v1, v4, v3, v8}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda9;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/Status;Linfo/flowersoft/theotown/creation/RegionCreator;Linfo/flowersoft/theotown/util/ProgressVariable;)V

    invoke-direct {v14, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;ILinfo/flowersoft/theotown/creation/RegionCreator;Linfo/flowersoft/theotown/util/Status;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;)V

    move-object v7, v4

    move-object v6, v8

    move-object v1, v11

    move v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v11, v5

    move-object v5, v0

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda11;

    invoke-direct {v1, v11}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda11;-><init>(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    .line 317
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/WaitingStage;->setAborted(Ljava/lang/Runnable;)Linfo/flowersoft/theotown/stages/WaitingStage;

    move-result-object v0

    .line 278
    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public drop()V
    .registers 2

    .line 465
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/MapPreview;->stopRendering()V

    .line 466
    :cond_7
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    return-void
.end method

.method public enter()V
    .registers 18

    move-object/from16 v1, p0

    .line 85
    invoke-super {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 87
    new-instance v7, Linfo/flowersoft/theotown/ui/Page;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 88
    iget-boolean v3, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->region:Z

    if-eqz v3, :cond_12

    const/16 v3, 0x567

    goto :goto_14

    :cond_12
    const/16 v3, 0x101

    :goto_14
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v7, v0, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V

    .line 91
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    invoke-virtual {v7, v0}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v7}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    .line 96
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    const/4 v2, 0x3

    sub-int/2addr v0, v2

    const/4 v3, 0x4

    div-int/2addr v0, v3

    const/16 v4, 0x1e

    .line 98
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 100
    new-instance v8, Linfo/flowersoft/theotown/ui/MapPreview;

    .line 101
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    add-int/lit8 v9, v5, -0x3c

    iget-object v14, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3c

    const/16 v12, 0x3c

    move-object v13, v6

    invoke-direct/range {v8 .. v15}, Linfo/flowersoft/theotown/ui/MapPreview;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Z)V

    iput-object v8, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

    .line 103
    new-instance v8, Linfo/flowersoft/theotown/util/LineLayoutFiller;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9, v6}, Linfo/flowersoft/theotown/util/LineLayoutFiller;-><init>(IILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 v0, 0x50

    .line 104
    invoke-virtual {v8, v10, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 105
    invoke-virtual {v8, v9, v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    const/4 v11, 0x2

    .line 106
    invoke-virtual {v8, v11, v4}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 107
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x3e

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setLineWidth(I)V

    .line 109
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-boolean v4, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->region:Z

    if-eqz v4, :cond_73

    const/16 v4, 0x6b

    goto :goto_75

    :cond_73
    const/16 v4, 0x530

    :goto_75
    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    .line 110
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStage$1;

    const/4 v4, 0x0

    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getLineHeight()I

    move-result v5

    move v12, v2

    const/4 v2, 0x0

    move v13, v3

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CreateCityStage$1;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    .line 116
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/CityGenerator;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    .line 117
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->setActive()V

    .line 118
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 119
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANDOM:I

    new-instance v2, Linfo/flowersoft/theotown/stages/CreateCityStage$2;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/stages/CreateCityStage$2;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    const-string v14, ""

    invoke-virtual {v8, v0, v14, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 126
    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 129
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->isRegion()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 130
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x86a

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    .line 131
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStage$3;

    const/4 v4, 0x0

    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getLineHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CreateCityStage$3;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v16, v1

    move-object v1, v0

    move-object v0, v6

    move-object/from16 v6, v16

    iput-object v1, v6, Linfo/flowersoft/theotown/stages/CreateCityStage;->tfAuthor:Linfo/flowersoft/theotown/ui/TextField;

    .line 137
    iget-object v2, v6, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/CityGenerator;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    .line 138
    iget-object v1, v6, Linfo/flowersoft/theotown/stages/CreateCityStage;->tfAuthor:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v8, v1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 139
    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    goto :goto_e9

    :cond_e7
    move-object v0, v6

    move-object v6, v1

    .line 144
    :goto_e9
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    invoke-virtual {v8, v1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setLineWidth(I)V

    .line 145
    invoke-virtual {v8, v9, v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 146
    invoke-virtual {v8, v11, v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 147
    invoke-virtual {v8, v12, v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 148
    invoke-virtual {v8, v13, v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    const/4 v1, 0x5

    .line 149
    invoke-virtual {v8, v1, v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 151
    iget-object v1, v6, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->isRegion()Z

    move-result v1

    if-nez v1, :cond_191

    .line 152
    iget-object v1, v6, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x49e

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    move-object v1, v8

    .line 153
    new-instance v8, Linfo/flowersoft/theotown/ui/ComboButton;

    move-object v2, v14

    new-instance v14, Linfo/flowersoft/theotown/stages/CreateCityStage$GameModeRepr;

    const/4 v3, 0x0

    invoke-direct {v14, v6, v3}, Linfo/flowersoft/theotown/stages/CreateCityStage$GameModeRepr;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/stages/CreateCityStage$1;)V

    new-instance v15, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda1;

    invoke-direct {v15, v6}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    move v3, v9

    const/4 v9, 0x0

    move v4, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v0

    invoke-direct/range {v8 .. v15}, Linfo/flowersoft/theotown/ui/ComboButton;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;Lio/blueflower/stapel2d/util/Setter;)V

    .line 159
    sget-object v0, Linfo/flowersoft/theotown/city/GameMode;->EASY:Linfo/flowersoft/theotown/city/GameMode;

    sget-object v5, Linfo/flowersoft/theotown/city/GameMode;->MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

    sget-object v9, Linfo/flowersoft/theotown/city/GameMode;->HARD:Linfo/flowersoft/theotown/city/GameMode;

    filled-new-array {v0, v5, v9}, [Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/ui/ComboButton;->addItems([Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Linfo/flowersoft/theotown/resources/FreeModeManager;->getInstance()Linfo/flowersoft/theotown/resources/FreeModeManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/FreeModeManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 161
    sget-object v0, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/ui/ComboButton;->addItem(Ljava/lang/Object;)V

    .line 163
    :cond_148
    iget-object v0, v6, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/ui/ComboButton;->select(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v1, v8}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 165
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStage$4;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD:I

    iget-object v8, v6, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0x1e8

    invoke-interface {v8, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v5, v8, v13}, Linfo/flowersoft/theotown/stages/CreateCityStage$4;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 177
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 179
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getVerticalSpace()I

    move-result v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setLineHeight(I)V

    .line 180
    new-instance v8, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    const/4 v12, 0x0

    move-object v0, v13

    const/4 v13, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v14, v0

    invoke-direct/range {v8 .. v14}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v8, v6, Linfo/flowersoft/theotown/stages/CreateCityStage;->gameModeDescription:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    .line 181
    invoke-virtual {v8, v4}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setShowBorder(Z)V

    .line 182
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    .line 183
    iget-object v0, v6, Linfo/flowersoft/theotown/stages/CreateCityStage;->gameModeDescription:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 184
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 185
    invoke-virtual {v6}, Linfo/flowersoft/theotown/stages/CreateCityStage;->updateGameModeDescription()V

    goto :goto_192

    :cond_191
    move v3, v9

    .line 188
    :goto_192
    invoke-virtual {v6}, Linfo/flowersoft/theotown/stages/CreateCityStage;->prepareInvalidNameDialog()V

    .line 190
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v0, v6, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x184

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda2;

    invoke-direct {v5, v6}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    move v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v16, v7

    move v7, v0

    move-object/from16 v0, v16

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    iput-object v1, v6, Linfo/flowersoft/theotown/stages/CreateCityStage;->cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 228
    invoke-virtual {v1, v7}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 229
    iget-object v1, v6, Linfo/flowersoft/theotown/stages/CreateCityStage;->cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 232
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    iget-object v2, v6, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x970

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda3;

    invoke-direct {v5, v6}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 234
    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda4;

    invoke-direct {v1, v6}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    .line 237
    invoke-virtual {v6}, Linfo/flowersoft/theotown/stages/CreateCityStage;->prepareHugeDialog()V

    .line 239
    invoke-virtual {v6}, Linfo/flowersoft/theotown/stages/CreateCityStage;->generateMinimap()V

    return-void
.end method

.method public final generateMinimap()V
    .registers 6

    .line 412
    new-instance v0, Linfo/flowersoft/theotown/util/CityGenerator;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/CityGenerator;-><init>(Linfo/flowersoft/theotown/util/CityGenerator;)V

    .line 413
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

    new-instance v2, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/CityGenerator;)V

    .line 416
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getEffectiveSize()I

    move-result v3

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getEffectiveGridSize()I

    move-result v4

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getRegionLayout()Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object v0

    .line 413
    invoke-virtual {v1, v2, v3, v4, v0}, Linfo/flowersoft/theotown/ui/MapPreview;->issueMinimapRendering(Lio/blueflower/stapel2d/util/Getter;IILinfo/flowersoft/theotown/util/RegionLayout;)V

    return-void
.end method

.method public final getDiamondPrice()I
    .registers 4

    .line 420
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 423
    :cond_6
    const-string v0, "generator"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v1, "region price per tile"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 424
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_CREATED_REGION:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_25

    if-nez v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, -0x1

    return v0

    .line 425
    :cond_25
    :goto_25
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->getSize()Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    mul-int/2addr v1, v0

    return v1
.end method

.method public leave()V
    .registers 2

    .line 455
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->saveSettings()V

    .line 457
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    .line 459
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    return-void
.end method

.method public onBack()V
    .registers 6

    .line 379
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_19

    .line 380
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-boolean v4, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->region:Z

    invoke-direct {v1, v2, v3, v4}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;-><init>(Linfo/flowersoft/theotown/util/CityGenerator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void

    .line 382
    :cond_19
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onBack()V

    return-void
.end method

.method public onUpdate()V
    .registers 5

    .line 434
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 436
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->region:Z

    if-eqz v0, :cond_35

    .line 437
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->getDiamondPrice()I

    move-result v0

    if-lez v0, :cond_1f

    .line 439
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

    int-to-long v2, v0

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/IconButton;->setIcon(I)V

    goto :goto_35

    :cond_1f
    if-gez v0, :cond_35

    .line 442
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x2c9

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_AWARD:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/IconButton;->setIcon(I)V

    .line 447
    :cond_35
    :goto_35
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isCityNameValid(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    .line 449
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/TextField;->setVisible(Z)V

    .line 450
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->tfAuthor:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/TextField;->setVisible(Z)V

    :cond_5c
    return-void
.end method

.method public prepare()V
    .registers 6

    .line 78
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    .line 80
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-boolean v4, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->region:Z

    invoke-direct {v1, v2, v3, v4}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;-><init>(Linfo/flowersoft/theotown/util/CityGenerator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public final prepareCity(Linfo/flowersoft/theotown/creation/CityCreator$CityData;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/creation/CityCreator$CityData;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 475
    new-instance v0, Linfo/flowersoft/theotown/creation/CityCreator;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 476
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->isDecos()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->prepareCity(Linfo/flowersoft/theotown/creation/CityCreator$CityData;Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

.method public final prepareHugeDialog()V
    .registers 7

    .line 395
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x2a3

    .line 397
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xe9

    .line 398
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 399
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xc9

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/CreateCityStage$7;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/CreateCityStage$7;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 406
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x227

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 407
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 408
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final prepareInvalidNameDialog()V
    .registers 6

    .line 387
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x645

    .line 388
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x6c8

    .line 389
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 390
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x454

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    const/4 v1, 0x0

    .line 391
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateCityStage2;region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->region:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateGameModeDescription()V
    .registers 3

    .line 371
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->gameModeDescription:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    if-eqz v0, :cond_19

    .line 372
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/GameMode;->getDescriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage;->gameModeDescription:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setText(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage.AnonymousClass1 (info.flowersoft.theotown.stages.CreateCityStage$1)
.class public Linfo/flowersoft/theotown/stages/CreateCityStage$1;
.super Linfo/flowersoft/theotown/ui/TextField;
.source "CreateCityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$1;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/String;)V
    .registers 3

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$1;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStage;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/CityGenerator;->setName(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage.AnonymousClass2 (info.flowersoft.theotown.stages.CreateCityStage$2)
.class public Linfo/flowersoft/theotown/stages/CreateCityStage$2;
.super Ljava/lang/Object;
.source "CreateCityStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStage;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->setRandomName()V

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->access$100(Linfo/flowersoft/theotown/stages/CreateCityStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/CreateCityStage;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStage;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage.AnonymousClass3 (info.flowersoft.theotown.stages.CreateCityStage$3)
.class public Linfo/flowersoft/theotown/stages/CreateCityStage$3;
.super Linfo/flowersoft/theotown/ui/TextField;
.source "CreateCityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/String;)V
    .registers 3

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStage;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/CityGenerator;->setAuthor(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage.AnonymousClass4 (info.flowersoft.theotown.stages.CreateCityStage$4)
.class public Linfo/flowersoft/theotown/stages/CreateCityStage$4;
.super Linfo/flowersoft/theotown/ui/IconRadioButton;
.source "CreateCityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 165
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/ui/IconRadioButton;-><init>(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 2

    .line 174
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->leftSideTrafficNewCities:Z

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 168
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/IconRadioButton;->onClick()V

    .line 169
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->leftSideTrafficNewCities:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->leftSideTrafficNewCities:Z

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage.AnonymousClass5 (info.flowersoft.theotown.stages.CreateCityStage$5)
.class public Linfo/flowersoft/theotown/stages/CreateCityStage$5;
.super Ljava/lang/Object;
.source "CreateCityStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

.field public final synthetic val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$5;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$5;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$5;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$5;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CreateCityStage;->access$500(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage.AnonymousClass6 (info.flowersoft.theotown.stages.CreateCityStage$6)
.class public Linfo/flowersoft/theotown/stages/CreateCityStage$6;
.super Ljava/lang/Thread;
.source "CreateCityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStage;->createCity(Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

.field public final synthetic val$c0:[Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

.field public final synthetic val$status:Linfo/flowersoft/theotown/util/Status;


# direct methods
.method public static synthetic $r8$lambda$2SSe8ygnW6SEdvJsdPjcGLfcRkw(Linfo/flowersoft/theotown/util/ProgressVariable;Ljava/lang/Float;)V
    .registers 3

    .line 346
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/ProgressVariable;Linfo/flowersoft/theotown/util/Status;[Linfo/flowersoft/theotown/city/City;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 336
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6;->val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6;->val$status:Linfo/flowersoft/theotown/util/Status;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6;->val$c0:[Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 340
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStage;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStage$6$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Linfo/flowersoft/theotown/stages/CreateCityStage$6$1;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage$6;F)V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6;->val$status:Linfo/flowersoft/theotown/util/Status;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/CityGenerator;->generate(Linfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    move-result-object v0

    .line 346
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6;->val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    new-instance v3, Linfo/flowersoft/theotown/stages/CreateCityStage$6$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Linfo/flowersoft/theotown/stages/CreateCityStage$6$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/util/ProgressVariable;)V

    invoke-static {v1, v0, v3}, Linfo/flowersoft/theotown/stages/CreateCityStage;->access$300(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/creation/CityCreator$CityData;Lio/blueflower/stapel2d/util/Setter;)V

    .line 347
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6;->val$c0:[Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x0

    iget-object v0, v0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    aput-object v0, v1, v2

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage.AnonymousClass6.AnonymousClass1 (info.flowersoft.theotown.stages.CreateCityStage$6$1)
.class public Linfo/flowersoft/theotown/stages/CreateCityStage$6$1;
.super Linfo/flowersoft/theotown/util/ProgressVariable;
.source "CreateCityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStage$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/CreateCityStage$6;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage$6;F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 340
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6$1;->this$1:Linfo/flowersoft/theotown/stages/CreateCityStage$6;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/util/ProgressVariable;-><init>(F)V

    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .registers 4

    .line 343
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6$1;->this$1:Linfo/flowersoft/theotown/stages/CreateCityStage$6;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/CreateCityStage$6;->val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$6$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.CreateCityStage$6$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/ProgressVariable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/ProgressVariable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/ProgressVariable;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$6$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/ProgressVariable;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStage$6;->$r8$lambda$2SSe8ygnW6SEdvJsdPjcGLfcRkw(Linfo/flowersoft/theotown/util/ProgressVariable;Ljava/lang/Float;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage.AnonymousClass7 (info.flowersoft.theotown.stages.CreateCityStage$7)
.class public Linfo/flowersoft/theotown/stages/CreateCityStage$7;
.super Ljava/lang/Object;
.source "CreateCityStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStage;->prepareHugeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 399
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$7;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 402
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$7;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStage;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/city/MapSize;->BIG2:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/CityGenerator;->setSize(Linfo/flowersoft/theotown/city/MapSize;)V

    .line 403
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$7;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->access$400(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage.GameModeRepr (info.flowersoft.theotown.stages.CreateCityStage$GameModeRepr)
.class public Linfo/flowersoft/theotown/stages/CreateCityStage$GameModeRepr;
.super Ljava/lang/Object;
.source "CreateCityStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/CreateCityStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameModeRepr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr<",
        "Linfo/flowersoft/theotown/city/GameMode;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 479
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$GameModeRepr;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/stages/CreateCityStage$1;)V
    .registers 3

    .line 479
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStage$GameModeRepr;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    return-void
.end method


# virtual methods
.method public getIcon(Linfo/flowersoft/theotown/city/GameMode;)I
    .registers 2

    .line 482
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/GameMode;->getIcon()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getIcon(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 479
    check-cast p1, Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStage$GameModeRepr;->getIcon(Linfo/flowersoft/theotown/city/GameMode;)I

    move-result p1

    return p1
.end method

.method public getText(Linfo/flowersoft/theotown/city/GameMode;)Ljava/lang/String;
    .registers 3

    .line 487
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$GameModeRepr;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/GameMode;->getLocalizationId()I

    move-result p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 479
    check-cast p1, Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStage$GameModeRepr;->getText(Linfo/flowersoft/theotown/city/GameMode;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$rBjTkk8eXEUVlGht2UdKxAS4ogc(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    check-cast p1, Linfo/flowersoft/theotown/city/GameMode;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$dSC5t0NRzCHtDXOcD7CQuT7nbjQ(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/city/GameMode;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda10 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

.field public final synthetic f$1:I

.field public final synthetic f$2:Linfo/flowersoft/theotown/creation/RegionCreator;

.field public final synthetic f$3:Linfo/flowersoft/theotown/util/Status;

.field public final synthetic f$4:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

.field public final synthetic f$5:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

.field public final synthetic f$6:Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;ILinfo/flowersoft/theotown/creation/RegionCreator;Linfo/flowersoft/theotown/util/Status;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iput p2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$1:I

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$2:Linfo/flowersoft/theotown/creation/RegionCreator;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$3:Linfo/flowersoft/theotown/util/Status;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$4:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iput-object p6, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$5:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$6:Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iget v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$1:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$2:Linfo/flowersoft/theotown/creation/RegionCreator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$3:Linfo/flowersoft/theotown/util/Status;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$4:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$5:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda10;->f$6:Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;

    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$3DC8FqUPsBh0UgIgFEyWt3GYSPI(Linfo/flowersoft/theotown/stages/CreateCityStage;ILinfo/flowersoft/theotown/creation/RegionCreator;Linfo/flowersoft/theotown/util/Status;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda11 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$Or4JSRlvhGr8rCutown4CwMDL_Q(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda12 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/Status;

.field public final synthetic f$2:[Linfo/flowersoft/theotown/city/City;

.field public final synthetic f$3:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$4:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final synthetic f$5:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/Status;[Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$1:Linfo/flowersoft/theotown/util/Status;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$2:[Linfo/flowersoft/theotown/city/City;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$3:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$4:Lio/blueflower/stapel2d/gamestack/GameStack;

    iput-object p6, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$5:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$1:Linfo/flowersoft/theotown/util/Status;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$2:[Linfo/flowersoft/theotown/city/City;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$3:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$4:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda12;->f$5:Lio/blueflower/stapel2d/util/Setter;

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$LDD5ZBX1WzHQmw9A4UbtqhqMU2w(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/Status;[Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda13 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$sKi_2p8aqduH66W10cklxzWL-IE(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$mmwj050gjGwuUMHe9vkmDeYD78s(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$B1H97xYKQ6fj2fUc3D3qVdsPfRw(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$R6n-MRw9hYh2mCfvMK52qn-dmSU(Linfo/flowersoft/theotown/stages/CreateCityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/CityGenerator;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/CityGenerator;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda5;->f$1:Linfo/flowersoft/theotown/util/CityGenerator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda5;->f$1:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$_fYW2nkfgL-JHF3QuFrMYoo79gE(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/CityGenerator;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final report(Z)V
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$SPxQPAL4tuichiU1NwVvBQ8Xovg(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    return-void
.end method


# virtual methods
.method public final handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$1S2IX984sCrrfg2mb4s33fsJc68(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$qAe0BglAZPizHbKGB8j69Jx0jDU(Linfo/flowersoft/theotown/stages/CreateCityStage;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda9 (info.flowersoft.theotown.stages.CreateCityStage$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/Status;

.field public final synthetic f$2:Linfo/flowersoft/theotown/creation/RegionCreator;

.field public final synthetic f$3:Linfo/flowersoft/theotown/util/ProgressVariable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/Status;Linfo/flowersoft/theotown/creation/RegionCreator;Linfo/flowersoft/theotown/util/ProgressVariable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda9;->f$1:Linfo/flowersoft/theotown/util/Status;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda9;->f$2:Linfo/flowersoft/theotown/creation/RegionCreator;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda9;->f$3:Linfo/flowersoft/theotown/util/ProgressVariable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda9;->f$1:Linfo/flowersoft/theotown/util/Status;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda9;->f$2:Linfo/flowersoft/theotown/creation/RegionCreator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CreateCityStage$$ExternalSyntheticLambda9;->f$3:Linfo/flowersoft/theotown/util/ProgressVariable;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/CreateCityStage;->$r8$lambda$SBSQVHoK2MIoi0Z3D4vOzIP12FM(Linfo/flowersoft/theotown/stages/CreateCityStage;Linfo/flowersoft/theotown/util/Status;Linfo/flowersoft/theotown/creation/RegionCreator;Linfo/flowersoft/theotown/util/ProgressVariable;)V

    return-void
.end method
