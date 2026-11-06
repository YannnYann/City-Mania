###### Class info.flowersoft.theotown.stages.RegionStage (info.flowersoft.theotown.stages.RegionStage)
.class public Linfo/flowersoft/theotown/stages/RegionStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "RegionStage.java"


# instance fields
.field public MAX_CONCURRENT_WAITING:I

.field public REDUCE_TIME_MIN:I

.field public TIME_TO_UNLOCK_MIN:I

.field public allowToGoBack:Z

.field public duringScreenshot:Z

.field public executor:Ljava/util/concurrent/ExecutorService;

.field public ignoreCoolDownTime:Z

.field public final iso:Linfo/flowersoft/theotown/city/IsoConverter;

.field public lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public lastTPCount:I

.field public loadLastCity:Z

.field public loadSelectedCity:Z

.field public final maxScale:F

.field public final minScale:F

.field public moveMomentumX:F

.field public moveMomentumY:F

.field public movementPivotX:I

.field public movementPivotY:I

.field public movementTargetX:I

.field public movementTargetY:I

.field public pendingLoadCity:Z

.field public region:Linfo/flowersoft/theotown/region/Region;

.field public regionBackground:Linfo/flowersoft/theotown/stages/background/RegionBackground;

.field public final regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

.field public selectedMapForUpload:I

.field public targetCityId:I

.field public final tempFloats:Lcom/badlogic/gdx/utils/FloatArray;

.field public touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

.field public touchStartCityScale:F

.field public touchStartDistance:F

.field public visitingCity:Z

.field public willBeShutDown:Z


# direct methods
.method public static synthetic $r8$lambda$-PdlUIQ6-IGnH6fdpwspAPCfasI(Linfo/flowersoft/theotown/stages/RegionStage;[Ljava/lang/String;)V
    .registers 6

    .line 562
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 562
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 562
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 563
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x98f

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 564
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda53;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda53;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 565
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x57b

    .line 567
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x10c

    .line 568
    invoke-interface {p0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    .line 569
    aget-object p1, p1, v3

    if-nez p1, :cond_3b

    const-string p1, ""

    .line 565
    :cond_3b
    invoke-virtual {v0, v1, v2, p0, p1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 569
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$25upcqDrDHm4SRkHRozewOzLE_A(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getLastCityManager()Linfo/flowersoft/theotown/mechanics/LastCityManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/LastCityManager;->getLastCityPath()Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->getDefaultRegionId(Ljava/lang/String;)I

    move-result v0

    .line 210
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/RegionStage;->selectRegion(I)V

    .line 212
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoLoading:Z

    if-nez v0, :cond_20

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->isFirstStart:Z

    if-eqz v0, :cond_37

    :cond_20
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    .line 213
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->isOnline()Z

    move-result v0

    if-nez v0, :cond_37

    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->loadLastCity:Z

    if-eqz v0, :cond_37

    sget-object v0, Linfo/flowersoft/theotown/stages/RecoveryMode;->INSTANCE:Linfo/flowersoft/theotown/stages/RecoveryMode;

    .line 215
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RecoveryMode;->getActive()Z

    move-result v0

    if-nez v0, :cond_37

    .line 217
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->loadLastCity()V

    :cond_37
    return-void
.end method

.method public static synthetic $r8$lambda$2jjlAkFCqEuqkpfywwVBNGLdlB0(Linfo/flowersoft/theotown/stages/RegionStage;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xcc6

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/region/Region;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xa0e

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getInhabitants()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1341
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v1, :cond_9a

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    (#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9a
    return-object v0
.end method

.method public static synthetic $r8$lambda$2m1RQJvxagnnK3yjRWRzDQ4Gjq4(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    new-instance v0, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;

    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda43;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, p1, v1, v2, p0}, Linfo/flowersoft/theotown/ui/ConfigureOnlineRegionDialog;-><init>(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    const/4 p0, 0x1

    .line 461
    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$35RNABGFIF01oPsnDf4s2hbrtuw(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/RegionStage$1;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->clearReports(Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4DAM063ZuRgpkU9wP0_PYDAU0xk(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V
    .registers 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1851
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1852
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    if-eqz p2, :cond_18

    .line 1854
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityAuthor(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/city/City;->setAuthor(Ljava/lang/String;)V

    .line 1856
    :cond_18
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p2

    new-instance v0, Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    if-eqz p5, :cond_2e

    .line 1859
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object p0

    :goto_28
    move-object v5, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    goto :goto_30

    :cond_2e
    const/4 p0, 0x0

    goto :goto_28

    :goto_30
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/cityfile/RegionInformation;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V

    .line 1856
    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_36
    return-void
.end method

.method public static synthetic $r8$lambda$8XCSPPBFotfFMqVaSZD8xo72TYU(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x15d

    .line 654
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x535

    .line 655
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 657
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    .line 658
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xa33

    .line 660
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda47;

    invoke-direct {v4, p0, p1, p2}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda47;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 658
    invoke-virtual {v0, v1, v3, p0, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 677
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$9_d9U4JwLQL37MN3wyJ-kCREI2A(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 1

    .line 391
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->showRegionStats()V

    return-void
.end method

.method public static synthetic $r8$lambda$A8rYWaeVBOKE9qg9u88EBroTl9w(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda26;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CHwCkTivLNlI5kWSYP55N27lmx0(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 1

    .line 2617
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->reload()V

    return-void
.end method

.method public static synthetic $r8$lambda$E7nwirPvgfMuPw3-4NuXnCs4oeI(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 2

    .line 446
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->showRegionRulesDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F8kNwGLSZ5HCQ0kZ4-4qToIDLCI(Linfo/flowersoft/theotown/stages/RegionStage;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 377
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 377
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IsuBRxbPnNgtQ7vzGSX-txiz6M0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 199
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 200
    const-string p0, "RegionExecutor"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$JzyEFdkd6rihgBawlc-tGUhsVtc(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v0

    if-nez v0, :cond_15

    .line 399
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->showUploadRegionAccountNeededDialog()V

    return-void

    .line 401
    :cond_15
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->containsScenario()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 407
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->isTooBigToUpload()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 408
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->showUploadRegionTooBig()V

    return-void

    .line 409
    :cond_29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_49

    .line 410
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->hasSource()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->countCreatedMaps(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)I

    move-result v0

    if-eqz v0, :cond_45

    :cond_3f
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->allowToUploadUsedRegions()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 411
    :cond_45
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->showUploadRegionDialog(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void

    .line 413
    :cond_49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->showUploadRegionUnsuited()V

    return-void

    .line 404
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot upload scenario"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic $r8$lambda$KT0y6k1PX16pAzrwpRnxso8aAVQ(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1675
    invoke-virtual {p3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    .line 1676
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->setName(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/city/City;->setGameMode(Linfo/flowersoft/theotown/city/GameMode;)V

    .line 1678
    sget-boolean p1, Linfo/flowersoft/theotown/resources/Settings;->leftSideTrafficNewCities:Z

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->setLeftSideTraffic(Z)V

    .line 1679
    new-instance p1, Linfo/flowersoft/theotown/creation/CityCreator;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/creation/CityCreator;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/creation/CityCreator;->resetCity(Linfo/flowersoft/theotown/city/City;)V

    .line 1680
    invoke-virtual {p3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->save()V

    return-void
.end method

.method public static synthetic $r8$lambda$KThV-ej_VBgS75QuMj1F9ZXM0Xc(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda51;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LJKsha8qG8Q8LJufhJkPBNCUErI(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;[Ljava/lang/String;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 12

    const/4 v0, 0x0

    .line 592
    aget-object v5, p3, v0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/online/RegionUploader;->uploadRegion(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;Ljava/lang/String;Ljava/lang/String;Z)Lio/blueflower/stapel2d/util/Getter;

    move-result-object p0

    invoke-interface {p0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1c

    .line 594
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string p2, "region_upload"

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    goto :goto_32

    .line 596
    :cond_1c
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    :goto_32
    if-nez p0, :cond_35

    const/4 v0, 0x1

    .line 598
    :cond_35
    invoke-interface {p4, v0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;->report(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LPP1Exjq3eTj3yomeysWO4mqtwc(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->takeScreenshot()V

    return-void
.end method

.method public static synthetic $r8$lambda$LZl-tsBXBxviNq5IlGv7uUW6Tkk(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 3

    .line 471
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    .line 471
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-static {v0, v1, p0}, Linfo/flowersoft/theotown/online/DownloadUtil;->downloadRegion(Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/region/Region;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PvOLQWNP7u-fB5O7L_zantukx2s(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_19

    .line 640
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_19

    .line 641
    invoke-static {}, Linfo/flowersoft/theotown/resources/WordFilter;->getInstance()Linfo/flowersoft/theotown/resources/WordFilter;

    move-result-object v0

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/resources/WordFilter;->isForbidden(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$RVd8V7TeYqzeKE1b6l4_l-DkBrg(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 3

    .line 626
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    .line 626
    new-instance v1, Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rr6UOrVxZUkqrk-tDNZyoDCtuvE(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1710
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1, p2}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda27;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T2PdsDHect7Q6gqCjm1ZolsB4k4(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1529
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T8HA2bzYYOD25_vQlMG0ncBsXjI(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;[Linfo/flowersoft/theotown/city/GameMode;)V
    .registers 4

    .line 1589
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/4 v0, 0x0

    .line 1589
    aget-object p2, p2, v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/GameMode;->getDescriptionId()I

    move-result p2

    invoke-interface {p0, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UAt5R9Ge-IHEKj3gYWc8v0CR20M(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 2

    .line 423
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->showDeleteRegionDialog(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UnUl7JYkWbgwHQk8PpaWGlWKdlE(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->requiresPassword()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    :cond_22
    return-void
.end method

.method public static synthetic $r8$lambda$Xw2RItarQ5NsSjeyYnsmktDJaEk(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Files;->deleteFile(Ljava/io/File;)Z

    .line 737
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->reloadRegion(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YHCZ370MydOLEiDO3PsLtMoqDOY(Linfo/flowersoft/theotown/stages/RegionStage;[Ljava/lang/String;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->minUploadPrice()I

    move-result v2

    .line 578
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->uploadMapFactor()I

    move-result v3

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/region/Region;->getMapCount()I

    move-result v4

    mul-int/2addr v3, v4

    .line 579
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->uploadSizeFactor()I

    move-result v4

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/Region;->getArea()I

    move-result v5

    mul-int/2addr v4, v5

    .line 577
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    .line 580
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    mul-int/lit8 v2, v2, 0x2

    .line 581
    :cond_34
    sget-boolean v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v4, :cond_3a

    sget v3, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->FLAG_REGION_COIN:I

    .line 583
    :cond_3a
    new-instance v4, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0xb75

    .line 584
    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x1c9

    .line 585
    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 587
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->combinePriceAndFlags(II)J

    move-result-wide v9

    new-instance v11, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda52;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v11, v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda52;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;[Ljava/lang/String;Linfo/flowersoft/theotown/ui/Dialog;)V

    .line 609
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v12

    iget-object v13, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/16 v16, 0x0

    const-string v14, "upload region"

    const/4 v15, 0x0

    invoke-direct/range {v4 .. v16}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YbFaNPzguNElDpmaoVM64yUvL-0(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionId()I

    move-result p1

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->setLastSeenRegionRulesTime(IJ)V

    .line 460
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->addReloadTask()V

    return-void
.end method

.method public static synthetic $r8$lambda$a_ZYXrulFi0kOz2rT_phQ6vRAks(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$2;

    invoke-direct {v0, p0, p2, p4, p5}, Linfo/flowersoft/theotown/stages/RegionStage$2;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {p1, p3, v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->reportRegion(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bbZwwJeLjNHiw4EO-W7dAZ19bqU(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 1

    .line 449
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->showRegionStats()V

    return-void
.end method

.method public static synthetic $r8$lambda$dZ63BxK8Y5KQlDdQGLGWNuzksBY(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1711
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1712
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to acquire map: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->reload()V

    return-void
.end method

.method public static synthetic $r8$lambda$gXsIxtA48yaviJl4eVQ2OPwVTn0(Linfo/flowersoft/theotown/ui/TextField;)V
    .registers 2

    .line 1544
    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->generateFiltered()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hKFO0AuMvamvsthNaFiSHAEdod8(Lio/blueflower/stapel2d/util/Setter;Ljava/lang/String;)V
    .registers 2

    .line 638
    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hmzfL4i09IX_No03LDMBNPprVG4()V
    .registers 2

    .line 555
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->getRulesUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i0uGSx1MHDByC0EWw3hmRVQIJi8()V
    .registers 1

    .line 2604
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->closeApp()V

    return-void
.end method

.method public static synthetic $r8$lambda$ittOEcT_M397iWn7ZJKGrFNKpPQ(Ljava/lang/String;)Z
    .registers 1

    .line 316
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$iw29CEKjv3ViEy388ShTGp3Tc44(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 479
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x28c

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda42;

    invoke-direct {v4, p0, p1, v0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda42;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/ReportDialog;->show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;)Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method

.method public static synthetic $r8$lambda$izZaq9ZUv4P4Tx2-SXzHftmqwC8(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/region/RegionMap;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1827
    invoke-static {}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->waitForSaving()V

    .line 1828
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1829
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->dispose()V

    .line 1830
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 1832
    :cond_1f
    iput-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 1834
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p2}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda39;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setBeforeCityPreparationCall(Lio/blueflower/stapel2d/util/Setter;)V

    .line 1841
    :try_start_29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->load()V

    .line 1843
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p0

    if-eqz p0, :cond_3c

    if-eqz p3, :cond_3c

    .line 1844
    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p0

    .line 1846
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3c
    return-void
.end method

.method public static synthetic $r8$lambda$j4MZsR3flE9jaauaDueMp3tPFAI([Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 564
    aput-object p1, p0, v0

    return-void
.end method

.method public static synthetic $r8$lambda$lBSG-l5SF63qI-W_Jw3h46q8Z_8(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;[Ljava/lang/Runnable;)V
    .registers 7

    .line 310
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 310
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 310
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    const/4 v1, 0x1

    .line 311
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setPassword(Z)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 312
    new-instance v2, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda44;

    invoke-direct {v2, p1, p2}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda44;-><init>(Linfo/flowersoft/theotown/cityfile/MapDirectory;[Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 316
    new-instance p1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda45;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda45;-><init>()V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 317
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x98f

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 318
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xc7f

    .line 319
    invoke-interface {p2, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x24a

    .line 320
    invoke-interface {p0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    .line 321
    invoke-static {}, Linfo/flowersoft/theotown/crossplatform/TheoTown;->isPickleMode()Z

    move-result v2

    if-nez v2, :cond_4e

    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v2, :cond_4b

    goto :goto_4e

    :cond_4b
    const-string v2, ""

    goto :goto_50

    :cond_4e
    :goto_4e
    const-string v2, "KFcbCXVt"

    .line 318
    :goto_50
    invoke-virtual {v0, p1, p2, p0, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p0

    .line 321
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$o-RMmBGZF16steHApNWi5zwB2sI(Linfo/flowersoft/theotown/cityfile/MapDirectory;[Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3

    .line 313
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->setPassword(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 314
    aget-object p0, p1, p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$oVJFIsgYltHSkr1_dw0pWrTb7SE(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 1836
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    .line 1836
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/region/Region;->applyNeighbors(Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void

    .line 0
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic $r8$lambda$on60tAxKXCwtcSnyIE3VF3lmSBo(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 663
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$3;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/RegionStage$3;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    invoke-virtual {p1, p2, v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->deleteRegion(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ptL-n9LvYwydkZXTGdGE6xbpyP0(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 2

    .line 495
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->showDeleteRegionDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qZVhJhFaqjuWnzfFGSn4QUNpCXM(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 325
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    .line 325
    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->reloadRegionInformation()V

    .line 326
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->leave()V

    .line 327
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->enter()V

    return-void
.end method

.method public static synthetic $r8$lambda$rFF1haXPS5eNQzJHdtTeZBhqHTo(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 2

    .line 466
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->showRegionTransferOwnershipDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rpg7TPqENZOKb4fUBOgIJmvxQKg(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda34;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p1, p2}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda35;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s3YIYFE7hzJQGISS6FVWXH47vcs(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;[Ljava/lang/String;Linfo/flowersoft/theotown/ui/Dialog;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    new-instance v3, Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/util/ProgressVariable;-><init>(F)V

    .line 590
    new-instance v1, Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-direct {v1}, Linfo/flowersoft/theotown/online/RegionUploader;-><init>()V

    .line 591
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;-><init>(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;[Ljava/lang/String;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 600
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_FOG:I

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x7ee

    .line 603
    invoke-interface {p0, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v6

    move-object v6, v3

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    .line 600
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    const/4 p0, 0x0

    .line 608
    invoke-virtual {p3, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uyenFOR8Z3PgA9rMkOHPd4o662g(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 753
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Files;->deleteFile(Ljava/io/File;)Z

    .line 754
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->reloadRegion(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vSxoH4Pn8q4-UQNTb1CiR22bPGc(Linfo/flowersoft/theotown/stages/RegionStage;Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V
    .registers 14

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1810
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_8
    if-eqz p3, :cond_f

    .line 1812
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    .line 1812
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/region/Region;->applyNeighbors(Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 1814
    :cond_f
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    .line 1814
    new-instance v0, Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    .line 1816
    invoke-virtual {p0}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v5

    move-object v3, p4

    move-object v4, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/cityfile/RegionInformation;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V

    .line 1814
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xFW3n0irBQzvVMeHtFAMtxBUB9U(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1701
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$28;

    invoke-direct {v0, p0, p1, p2}, Linfo/flowersoft/theotown/stages/RegionStage$28;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yjILQASagEk643jbR7DYg63-ELQ(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_REGION_UPLOAD_DELETION_NOTICE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 519
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->showUploadRegionDialogRaw(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z811DLlV5FDNpAVKbIX8OVKkJBE(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 2

    .line 421
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->showResetRegionDialog(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/RegionProvider;)V
    .registers 4

    .line 183
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 134
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->minScale:F

    const/high16 p1, 0x40800000    # 4.0f

    .line 135
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->maxScale:F

    const/4 p1, 0x2

    .line 137
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->MAX_CONCURRENT_WAITING:I

    const/16 p1, 0x1e

    .line 138
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->TIME_TO_UNLOCK_MIN:I

    .line 139
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->REDUCE_TIME_MIN:I

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->loadLastCity:Z

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->loadSelectedCity:Z

    .line 150
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->pendingLoadCity:Z

    .line 161
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->ignoreCoolDownTime:Z

    const/4 p1, -0x1

    .line 163
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->movementPivotX:I

    .line 164
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->movementPivotY:I

    .line 165
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->movementTargetX:I

    .line 166
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->movementTargetY:I

    .line 168
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->targetCityId:I

    .line 170
    new-instance v0, Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/IsoConverter;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 178
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->tempFloats:Lcom/badlogic/gdx/utils/FloatArray;

    .line 2335
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->selectedMapForUpload:I

    .line 184
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;
    .registers 1

    .line 127
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;II)Z
    .registers 4

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/RegionStage;->mapContainsAbs(Linfo/flowersoft/theotown/region/RegionMap;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/stages/RegionStage;)Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->allowToGoBack:Z

    return p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/cityfile/RegionProvider;
    .registers 1

    .line 127
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    return-object p0
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/stages/RegionStage;I)V
    .registers 2

    .line 127
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->selectRegion(I)V

    return-void
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/stages/RegionStage;)Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->ignoreCoolDownTime:Z

    return p0
.end method

.method public static synthetic access$1302(Linfo/flowersoft/theotown/stages/RegionStage;Z)Z
    .registers 2

    .line 127
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->ignoreCoolDownTime:Z

    return p1
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)V
    .registers 5

    .line 127
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/stages/RegionStage;->createCity(Ljava/lang/String;Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)V

    return-void
.end method

.method public static synthetic access$1502(Linfo/flowersoft/theotown/stages/RegionStage;Z)Z
    .registers 2

    .line 127
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->loadSelectedCity:Z

    return p1
.end method

.method public static synthetic access$1600(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 1

    .line 127
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->drawMaps()V

    return-void
.end method

.method public static synthetic access$1702(Linfo/flowersoft/theotown/stages/RegionStage;Z)Z
    .registers 2

    .line 127
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->duringScreenshot:Z

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 2

    .line 127
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->clickMap(Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/RegionStage;)F
    .registers 1

    .line 127
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->getZoomStep()F

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/RegionStage;FFF)V
    .registers 4

    .line 127
    invoke-direct {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/RegionStage;->zoom(FFF)V

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/RegionStage;F)V
    .registers 2

    .line 127
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->zoom(F)V

    return-void
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/stages/RegionStage;Z)Z
    .registers 2

    .line 127
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->visitingCity:Z

    return p1
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/stages/RegionStage;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 2

    .line 127
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->showRegionActions(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 1

    .line 127
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->showGameMenu()V

    return-void
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 1

    .line 127
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->disposeLastCity()V

    return-void
.end method

.method private getZoomStep()F
    .registers 2

    .line 2037
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    if-lez v0, :cond_7

    .line 2038
    sget v0, Linfo/flowersoft/theotown/resources/Constants;->SMOOTH_ZOOM_STEP:F

    return v0

    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method private handleKeyInput()V
    .registers 8

    .line 2160
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_e3

    .line 2164
    :cond_8
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_UP:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v2, 0x41200000    # 10.0f

    if-nez v0, :cond_30

    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_UP_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_30

    .line 2166
    :cond_1d
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_DOWN:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_DOWN_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2167
    :cond_2d
    iput v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    goto :goto_32

    .line 2165
    :cond_30
    :goto_30
    iput v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    .line 2169
    :cond_32
    :goto_32
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_LEFT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    if-nez v0, :cond_56

    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_LEFT_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_56

    .line 2171
    :cond_43
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_RIGHT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    if-nez v0, :cond_53

    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_RIGHT_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2172
    :cond_53
    iput v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    goto :goto_58

    .line 2170
    :cond_56
    :goto_56
    iput v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    .line 2175
    :cond_58
    :goto_58
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_ZOOM_IN:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6c

    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_ZOOM_IN_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_6c

    :cond_6a
    const/4 v0, 0x0

    goto :goto_6d

    :cond_6c
    :goto_6c
    move v0, v1

    .line 2178
    :goto_6d
    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->CITY_ZOOM_OUT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v2

    if-nez v2, :cond_7d

    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->CITY_ZOOM_OUT_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v2

    if-eqz v2, :cond_7f

    :cond_7d
    add-int/lit8 v0, v0, -0x1

    .line 2181
    :cond_7f
    sget-object v2, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CONSOLE:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 2182
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/ConsoleStage;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v5, 0x0

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-direct {v3, v4, v5, v6, v1}, Linfo/flowersoft/theotown/stages/ConsoleStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/region/Region;Z)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_98
    if-eqz v0, :cond_e3

    .line 2186
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->getScale()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 2187
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2188
    :goto_c2
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->getScale()F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    add-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_d4

    const/high16 v1, 0x40000000    # 2.0f

    .line 2189
    invoke-direct {p0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->zoom(F)V

    goto :goto_c2

    .line 2191
    :cond_d4
    :goto_d4
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->getScale()F

    move-result v1

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_e3

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2192
    invoke-direct {p0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->zoom(F)V

    goto :goto_d4

    :cond_e3
    :goto_e3
    return-void
.end method

.method private handleTouchInput()V
    .registers 14

    const/4 v0, -0x1

    .line 2045
    iput v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->movementPivotY:I

    iput v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->movementPivotX:I

    .line 2046
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v0

    .line 2047
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v1

    .line 2049
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->getTouchPoints()Ljava/util/List;

    move-result-object v2

    .line 2050
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v3, v7, :cond_6d

    .line 2051
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 2053
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v4

    mul-float/2addr v4, v0

    .line 2054
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v8

    mul-float/2addr v8, v1

    .line 2055
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v9

    mul-float/2addr v9, v0

    .line 2056
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v10

    mul-float/2addr v10, v1

    .line 2057
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v11

    mul-float/2addr v11, v0

    .line 2058
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v0

    mul-float/2addr v0, v1

    sub-float v1, v11, v4

    sub-float v12, v0, v8

    .line 2062
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getButton()I

    move-result v3

    if-ne v3, v7, :cond_67

    const v3, -0x41333333    # -0.4f

    mul-float v9, v1, v3

    mul-float v10, v12, v3

    float-to-int v1, v4

    .line 2065
    iput v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->movementPivotX:I

    float-to-int v1, v8

    .line 2066
    iput v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->movementPivotY:I

    float-to-int v1, v11

    .line 2067
    iput v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->movementTargetX:I

    float-to-int v0, v0

    .line 2068
    iput v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->movementTargetY:I

    .line 2069
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Move:Linfo/flowersoft/theotown/ui/CursorType;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->setPreferredCursor(Linfo/flowersoft/theotown/ui/CursorType;)V

    .line 2072
    :cond_67
    iput v9, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    .line 2073
    iput v10, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    goto/16 :goto_110

    .line 2074
    :cond_6d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_106

    .line 2075
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 2076
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 2078
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v7

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    mul-float/2addr v7, v0

    .line 2079
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v9

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v10

    add-float/2addr v9, v10

    mul-float/2addr v9, v8

    mul-float/2addr v9, v1

    .line 2080
    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v8

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v10

    sub-float/2addr v8, v10

    mul-float/2addr v8, v0

    .line 2081
    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v10

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float/2addr v10, v1

    mul-float/2addr v8, v8

    mul-float/2addr v10, v10

    add-float/2addr v8, v10

    float-to-double v10, v8

    .line 2082
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v8, v10

    .line 2085
    iget v10, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastTPCount:I

    if-ge v10, v6, :cond_c1

    .line 2086
    iput v8, p0, Linfo/flowersoft/theotown/stages/RegionStage;->touchStartDistance:F

    .line 2087
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->getScale()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->touchStartCityScale:F

    goto :goto_110

    .line 2089
    :cond_c1
    iget v10, p0, Linfo/flowersoft/theotown/stages/RegionStage;->touchStartDistance:F

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_101

    .line 2090
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v10

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    mul-float/2addr v10, v0

    float-to-int v0, v10

    .line 2091
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v3

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v11

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 2093
    iget v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->touchStartCityScale:F

    mul-float/2addr v3, v8

    iget v4, p0, Linfo/flowersoft/theotown/stages/RegionStage;->touchStartDistance:F

    div-float/2addr v3, v4

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMinScale()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMaxScale()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2094
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->getScale()F

    move-result v4

    div-float/2addr v3, v4

    int-to-float v0, v0

    int-to-float v1, v1

    .line 2095
    invoke-direct {p0, v3, v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->zoom(FFF)V

    .line 2098
    :cond_101
    iput v7, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    .line 2099
    iput v9, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    goto :goto_110

    .line 2101
    :cond_106
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_110

    .line 2102
    iput v5, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    iput v5, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    .line 2105
    :cond_110
    :goto_110
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastTPCount:I

    .line 2107
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_162

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->scrollEdges:Z

    if-eqz v0, :cond_162

    .line 2109
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchMapper;->getActivePoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_162

    .line 2110
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v0

    .line 2111
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v1

    const/high16 v2, -0x3ee00000    # -10.0f

    const/high16 v3, 0x41200000    # 10.0f

    if-ge v0, v6, :cond_147

    .line 2114
    iput v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    goto :goto_152

    .line 2115
    :cond_147
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    sub-int/2addr v4, v6

    if-lt v0, v4, :cond_152

    .line 2116
    iput v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    :cond_152
    :goto_152
    if-ge v1, v6, :cond_157

    .line 2119
    iput v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    goto :goto_162

    .line 2120
    :cond_157
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    sub-int/2addr v0, v6

    if-lt v1, v0, :cond_162

    .line 2121
    iput v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    .line 2126
    :cond_162
    :goto_162
    iget v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1b8

    .line 2127
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getIso()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v0

    .line 2128
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v1

    iget v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 2129
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 2128
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 2130
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->limitView()V

    .line 2131
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getDeltaTime()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624de0000000L    # 0.0010000000474974513

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2132
    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    mul-float/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    .line 2133
    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    mul-float/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    .line 2135
    :cond_1b8
    iget v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d3

    .line 2136
    iput v5, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    iput v5, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    .line 2139
    :cond_1d3
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->smoothScrolling:Z

    if-nez v0, :cond_1db

    .line 2140
    iput v5, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumY:F

    iput v5, p0, Linfo/flowersoft/theotown/stages/RegionStage;->moveMomentumX:F

    :cond_1db
    return-void
.end method

.method private zoom(F)V
    .registers 5

    .line 2202
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v2

    div-float/2addr v2, v1

    invoke-direct {p0, p1, v0, v2}, Linfo/flowersoft/theotown/stages/RegionStage;->zoom(FFF)V

    return-void
.end method

.method private zoom(FFF)V
    .registers 9

    .line 2206
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->getScale()F

    move-result v0

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    .line 2207
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2208
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v0

    .line 2209
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v1

    .line 2210
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2, p1, p1}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsScale(FF)V

    .line 2211
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 2212
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v4, v0, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v4

    sub-float/2addr p2, v4

    div-float/2addr p2, p1

    add-float/2addr v3, p2

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 2213
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result p2

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v4, v0, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v0

    sub-float/2addr p3, v0

    div-float/2addr p3, p1

    add-float/2addr p2, p3

    .line 2211
    invoke-virtual {v2, v3, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 2214
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->limitView()V

    return-void
.end method


# virtual methods
.method public acquireMap(Linfo/flowersoft/theotown/region/RegionMap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 6

    .line 1697
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v0

    .line 1698
    instance-of v1, v0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    if-eqz v1, :cond_1d

    .line 1699
    check-cast v0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 1700
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2, v0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    new-instance p2, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p3}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda11;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->acquire(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    :cond_1d
    return-void
.end method

.method public addReloadTask()V
    .registers 2

    .line 2617
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clickMap(Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 4

    .line 1878
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getSelectedMap()Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v0

    .line 1880
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/region/Region;->selectMap(Linfo/flowersoft/theotown/region/RegionMap;)V

    if-eq p1, v0, :cond_18

    .line 1884
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object p1

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD_LAND:I

    sget-object v1, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    :cond_18
    return-void
.end method

.method public final countCreatedMaps(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)I
    .registers 5

    .line 504
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    .line 505
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 506
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_26
    return v1
.end method

.method public final createCity(Ljava/lang/String;Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)V
    .registers 6

    const/4 v0, 0x1

    .line 1669
    invoke-virtual {p4, v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->setCreated(Z)V

    const/4 v0, 0x0

    .line 1670
    invoke-virtual {p4, v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->setLocked(Z)V

    .line 1671
    iget-object p4, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {p4}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    invoke-virtual {p4, v0}, Linfo/flowersoft/theotown/region/Region;->updateRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)V

    .line 1672
    invoke-virtual {p3}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p4

    invoke-virtual {p4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p4

    invoke-virtual {p4, p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->setGameMode(Linfo/flowersoft/theotown/city/GameMode;)V

    .line 1674
    invoke-virtual {p3}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p3

    new-instance p4, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda36;

    invoke-direct {p4, p0, p1, p2}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda36;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;Linfo/flowersoft/theotown/city/GameMode;)V

    invoke-virtual {p0, p3, p4}, Linfo/flowersoft/theotown/stages/RegionStage;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public final createPreviews()V
    .registers 4

    .line 1869
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/region/Region;->createPreviews(Lio/blueflower/stapel2d/drawing/Engine;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final disposeLastCity()V
    .registers 3

    .line 1496
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    if-eqz v0, :cond_1b

    .line 1497
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 1498
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->dispose()V

    .line 1499
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 1501
    :cond_19
    iput-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    :cond_1b
    return-void
.end method

.method public doMapAction(Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    .line 1506
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v0

    .line 1508
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2, v12}, Linfo/flowersoft/theotown/region/Region;->isLocked(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/RegionStage;->isNoUnlockNeeded()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 1509
    :cond_1a
    :goto_1a
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v2

    invoke-virtual {v12}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v13

    .line 1511
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1512
    invoke-virtual {v12}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isScenario()Z

    move-result v2

    if-nez v2, :cond_a0

    .line 1519
    invoke-virtual {v12}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getUsedPlugins()Ljava/util/List;

    move-result-object v2

    .line 1520
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v3

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getMissingPlugins(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1521
    invoke-virtual {v12}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getUsedLocalPlugins()Ljava/util/List;

    move-result-object v3

    .line 1522
    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    move-result-object v4

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/store/PluginUnloader;->getMissingPlugins(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1524
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_82

    :cond_70
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v4

    if-eqz v4, :cond_8a

    check-cast v0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getVirtualRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->isAllowPlugins()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1525
    :cond_82
    invoke-virtual {v12}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/stages/RegionStage;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    return-void

    .line 1527
    :cond_8a
    new-instance v0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    new-instance v4, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1, v12}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 1528
    invoke-virtual {v0, v2, v3, v4}, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->showMissingPluginsDialog(Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    .line 1516
    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot play scenario in region"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1533
    :cond_a8
    new-instance v3, Linfo/flowersoft/theotown/ui/Dialog;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x101

    .line 1534
    invoke-interface {v2, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xd5

    iget-object v9, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v6, ""

    const/16 v7, 0x190

    invoke-direct/range {v3 .. v9}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    move-object v14, v3

    .line 1535
    invoke-virtual {v14}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v7

    .line 1536
    new-instance v15, Linfo/flowersoft/theotown/util/LineLayoutFiller;

    const/16 v2, 0x1e

    const/4 v8, 0x1

    invoke-direct {v15, v2, v8, v7}, Linfo/flowersoft/theotown/util/LineLayoutFiller;-><init>(IILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 v3, 0x50

    const/4 v9, 0x0

    .line 1537
    invoke-virtual {v15, v9, v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    const/4 v10, 0x2

    .line 1538
    invoke-virtual {v15, v10, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 1539
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x530

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    .line 1540
    new-instance v2, Linfo/flowersoft/theotown/ui/TextField;

    const/4 v5, 0x0

    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getLineHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1541
    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->generateFiltered()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v15, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 1543
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANDOM:I

    new-instance v4, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/ui/TextField;)V

    const-string v5, ""

    invoke-virtual {v15, v3, v5, v4}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 1546
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 1547
    invoke-virtual {v15, v9, v9}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 1548
    invoke-virtual {v15, v10, v9}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 1549
    sget-object v3, Linfo/flowersoft/theotown/city/GameMode;->MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

    filled-new-array {v3}, [Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v10

    .line 1550
    new-array v11, v8, [Ljava/lang/Runnable;

    .line 1552
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1553
    sget-object v5, Linfo/flowersoft/theotown/city/GameMode;->EASY:Linfo/flowersoft/theotown/city/GameMode;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1554
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    sget-object v3, Linfo/flowersoft/theotown/city/GameMode;->HARD:Linfo/flowersoft/theotown/city/GameMode;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    invoke-static {}, Linfo/flowersoft/theotown/resources/FreeModeManager;->getInstance()Linfo/flowersoft/theotown/resources/FreeModeManager;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/FreeModeManager;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_14b

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v3

    if-eqz v3, :cond_142

    check-cast v0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getVirtualRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualRegion;->isAllowSandbox()Z

    move-result v0

    if-eqz v0, :cond_14b

    :cond_142
    const/4 v0, 0x0

    .line 1557
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    sget-object v0, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    :cond_14b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_14f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_198

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/GameMode;

    if-nez v0, :cond_161

    .line 1564
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    goto :goto_14f

    :cond_161
    move v3, v9

    move-object v9, v10

    move-object v10, v0

    .line 1567
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$24;

    move-object v4, v2

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/GameMode;->getIcon()I

    move-result v2

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 1568
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/GameMode;->getLocalizationId()I

    move-result v6

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v17, v8

    move-object v8, v7

    const/4 v7, 0x0

    move-object/from16 v18, v4

    const/4 v4, 0x0

    move/from16 v19, v3

    move-object v3, v5

    const/4 v5, 0x0

    move-object/from16 v20, v14

    move/from16 v14, v19

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/stages/RegionStage$24;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;[Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/city/GameMode;[Ljava/lang/Runnable;)V

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move-object v7, v8

    .line 1567
    invoke-virtual {v15, v1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    move-object v1, v0

    move-object v10, v9

    move v9, v14

    move-object/from16 v2, v18

    move-object/from16 v14, v20

    const/4 v8, 0x1

    goto :goto_14f

    :cond_198
    move-object v0, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v14

    move v14, v9

    move-object v9, v10

    .line 1581
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 1582
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getVerticalSpace()I

    move-result v1

    invoke-virtual {v15, v1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setLineHeight(I)V

    .line 1583
    new-instance v1, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v16, v7

    .line 1584
    invoke-virtual {v1, v14}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setShowBorder(Z)V

    .line 1585
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 1586
    invoke-virtual {v15, v1}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 1587
    invoke-virtual {v15}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 1588
    new-instance v2, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v1, v9}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;[Linfo/flowersoft/theotown/city/GameMode;)V

    aput-object v2, v11, v14

    .line 1591
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1593
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$25;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD:I

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x1e8

    .line 1595
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 1596
    invoke-virtual/range {v20 .. v20}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Linfo/flowersoft/theotown/stages/RegionStage$25;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 1608
    invoke-virtual/range {v20 .. v20}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    const/16 v3, 0x64

    invoke-virtual {v1, v14, v14, v3, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 1610
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Button;->getTextLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Label;->getTextWidth()F

    move-result v2

    float-to-int v2, v2

    .line 1611
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Button;->getIconGadget()Lio/blueflower/stapel2d/gui/Icon;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x5

    .line 1609
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 1614
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$26;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY:I

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x184

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 1615
    invoke-virtual/range {v20 .. v20}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual/range {v20 .. v20}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/16 v6, 0x64

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    move-object v10, v9

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v9, v18

    move-object/from16 v13, v20

    invoke-direct/range {v0 .. v13}, Linfo/flowersoft/theotown/stages/RegionStage$26;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/TextField;[Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/ui/Dialog;)V

    move-object v14, v13

    const/16 v1, 0x42

    .line 1651
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 1652
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$27;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v7, v14

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/RegionStage$27;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;)V

    invoke-virtual {v14, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setCancelButton(Lio/blueflower/stapel2d/gui/Button;)V

    const/4 v0, 0x1

    .line 1663
    invoke-virtual {v14, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final drawMaps()V
    .registers 41

    move-object/from16 v0, p0

    .line 2337
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getIso()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v1

    .line 2338
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v2

    .line 2339
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/region/Region;->getSelectedMap()Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v3

    .line 2341
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    .line 2342
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    .line 2345
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 2346
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 2348
    :goto_26
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/Region;->getMapCount()I

    move-result v8

    if-ge v5, v8, :cond_539

    .line 2349
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v8, v5}, Linfo/flowersoft/theotown/region/Region;->getSortedMapByIndex(I)Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v8

    .line 2351
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getRenderer()Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    move-result-object v16

    if-nez v16, :cond_47

    move-object/from16 v37, v1

    move-object/from16 v22, v2

    move-object/from16 v25, v3

    move/from16 v26, v5

    :goto_42
    move v4, v7

    const/16 v19, 0x0

    goto/16 :goto_52e

    :cond_47
    if-ne v3, v8, :cond_4c

    const/16 v17, 0x1

    goto :goto_4e

    :cond_4c
    const/16 v17, 0x0

    .line 2357
    :goto_4e
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v11

    .line 2358
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v12

    .line 2360
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->readyForUpload()Z

    move-result v13

    if-eqz v13, :cond_8d

    .line 2361
    iget-boolean v13, v0, Linfo/flowersoft/theotown/stages/RegionStage;->duringScreenshot:Z

    const v14, 0x7ffffffe

    if-nez v13, :cond_7a

    iget v13, v0, Linfo/flowersoft/theotown/stages/RegionStage;->selectedMapForUpload:I

    if-ltz v13, :cond_7a

    if-eq v13, v7, :cond_7a

    if-ne v13, v14, :cond_6c

    goto :goto_7a

    :cond_6c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v37, v1

    move-object/from16 v22, v2

    move-object/from16 v25, v3

    move/from16 v26, v5

    const/16 v19, 0x0

    goto/16 :goto_52f

    .line 2362
    :cond_7a
    :goto_7a
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->upload()V

    .line 2363
    iget v13, v0, Linfo/flowersoft/theotown/stages/RegionStage;->selectedMapForUpload:I

    iget-object v15, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v15}, Linfo/flowersoft/theotown/region/Region;->getMapCount()I

    move-result v15

    if-ge v13, v15, :cond_88

    goto :goto_8b

    :cond_88
    const v14, 0x7fffffff

    :goto_8b
    iput v14, v0, Linfo/flowersoft/theotown/stages/RegionStage;->selectedMapForUpload:I

    .line 2371
    :cond_8d
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->finishedSince()I

    move-result v13

    int-to-long v13, v13

    const/4 v15, 0x0

    const/high16 v18, 0x43480000    # 200.0f

    if-eqz v17, :cond_bf

    .line 2373
    iget-boolean v9, v0, Linfo/flowersoft/theotown/stages/RegionStage;->duringScreenshot:Z

    if-nez v9, :cond_bf

    .line 2374
    sget-object v9, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    .line 2375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const/16 v23, 0x1

    iget-object v10, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/region/Region;->getMapSelectionTime()J

    move-result-wide v24

    move/from16 v26, v5

    sub-long v4, v21, v24

    long-to-float v4, v4

    div-float v4, v4, v18

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v15, v5}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v4

    .line 2374
    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/math/Interpolation$SwingOut;->apply(F)F

    move-result v4

    const/high16 v5, -0x3f800000    # -4.0f

    mul-float v15, v4, v5

    goto :goto_c3

    :cond_bf
    move/from16 v26, v5

    const/16 v23, 0x1

    .line 2379
    :goto_c3
    iget-boolean v4, v0, Linfo/flowersoft/theotown/stages/RegionStage;->duringScreenshot:Z

    if-nez v4, :cond_df

    const-wide/16 v4, 0xc8

    cmp-long v4, v13, v4

    if-gez v4, :cond_df

    long-to-float v4, v13

    div-float v4, v4, v18

    .line 2381
    sget-object v5, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/math/Interpolation$SwingOut;->apply(F)F

    move-result v5

    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v5, v27, v5

    const/high16 v9, 0x42200000    # 40.0f

    mul-float/2addr v5, v9

    add-float/2addr v15, v5

    goto :goto_e1

    :cond_df
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2384
    :goto_e1
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getLevel()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v9

    mul-float/2addr v5, v9

    sub-float/2addr v15, v5

    .line 2386
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_526

    if-eqz v2, :cond_526

    .line 2387
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v5

    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v5

    if-eqz v5, :cond_526

    const/high16 v27, 0x3f800000    # 1.0f

    cmpg-float v9, v4, v27

    if-gez v9, :cond_10f

    .line 2391
    iget-object v9, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v4, v10

    float-to-int v4, v4

    invoke-virtual {v9, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_10f
    int-to-float v4, v11

    int-to-float v9, v12

    .line 2394
    invoke-virtual {v1, v4, v9}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v30

    .line 2395
    invoke-virtual {v1, v4, v9}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v10

    add-float v31, v10, v15

    .line 2396
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v10

    add-int/2addr v10, v12

    int-to-float v10, v10

    invoke-virtual {v1, v4, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v10

    .line 2397
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v13

    add-int/2addr v13, v12

    int-to-float v13, v13

    invoke-virtual {v1, v4, v13}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v13

    add-float v18, v13, v15

    .line 2398
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v4

    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v14

    add-int/2addr v14, v12

    int-to-float v14, v14

    invoke-virtual {v1, v13, v14}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v21

    .line 2399
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v4

    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v14

    add-int/2addr v14, v12

    int-to-float v14, v14

    invoke-virtual {v1, v13, v14}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v13

    add-float/2addr v13, v15

    .line 2400
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v14, v4

    invoke-virtual {v1, v14, v9}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v14

    move-object/from16 v22, v2

    .line 2401
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {v1, v4, v9}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v2

    add-float/2addr v2, v15

    sub-float v32, v21, v30

    .line 2407
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v9

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v9, v9, v24

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v25

    move/from16 v35, v2

    mul-float v2, v25, v24

    invoke-virtual {v4, v9, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 2408
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v2, v2, -0x1

    :goto_187
    if-lt v2, v12, :cond_1f3

    move v9, v11

    .line 2409
    :goto_18a
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v25

    add-int v4, v11, v25

    if-ge v9, v4, :cond_1e8

    int-to-float v4, v9

    move-object/from16 v25, v3

    int-to-float v3, v2

    move-object/from16 v36, v5

    .line 2410
    invoke-virtual {v1, v4, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v5

    .line 2411
    invoke-virtual {v1, v4, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v3

    add-float/2addr v3, v15

    .line 2413
    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v4

    add-int/2addr v4, v11

    add-int/lit8 v4, v4, -0x1

    if-eq v9, v4, :cond_1b4

    if-eq v2, v12, :cond_1b4

    if-eqz v17, :cond_1af

    goto :goto_1b4

    :cond_1af
    move-object/from16 v37, v1

    move/from16 v29, v2

    goto :goto_1dd

    .line 2414
    :cond_1b4
    :goto_1b4
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move-object/from16 v37, v1

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move/from16 v29, v2

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_REGION_BORDER:I

    invoke-virtual {v4, v1, v5, v3, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 2419
    iget-boolean v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->duringScreenshot:Z

    if-nez v1, :cond_1dd

    if-eqz v17, :cond_1dd

    .line 2420
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 2421
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_REGION_BORDER:I

    invoke-virtual {v1, v2, v5, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 2425
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    :cond_1dd
    :goto_1dd
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v25

    move/from16 v2, v29

    move-object/from16 v5, v36

    move-object/from16 v1, v37

    goto :goto_18a

    :cond_1e8
    move-object/from16 v37, v1

    move/from16 v29, v2

    move-object/from16 v25, v3

    move-object/from16 v36, v5

    add-int/lit8 v2, v29, -0x1

    goto :goto_187

    :cond_1f3
    move-object/from16 v37, v1

    move-object/from16 v25, v3

    move-object/from16 v36, v5

    .line 2430
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 2433
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0x67

    const/16 v3, 0x3f

    const/16 v4, 0x57

    invoke-virtual {v1, v4, v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    const/high16 v1, 0x40800000    # 4.0f

    move v4, v7

    add-float v7, v30, v1

    const/high16 v2, 0x40000000    # 2.0f

    move v9, v10

    add-float v10, v18, v2

    sub-float v11, v21, v1

    move v12, v13

    move v13, v14

    sub-float v14, v35, v2

    .line 2434
    iget-object v15, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move-object v5, v8

    move/from16 v1, v23

    move/from16 v8, v31

    const/16 v3, 0xff

    invoke-virtual/range {v6 .. v15}, Linfo/flowersoft/theotown/drawing/Drawing;->drawQuad(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move/from16 v20, v12

    move/from16 v23, v13

    .line 2435
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v7, v3, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 2438
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/region/Region;->isLocked(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v7

    if-eqz v7, :cond_24f

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/region/Region;->isUnlockable(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v7

    if-nez v7, :cond_24f

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/region/Region;->isWaitingToUnlock(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v7

    if-nez v7, :cond_24f

    .line 2439
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v8, 0xa0

    invoke-virtual {v7, v8, v8, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 2441
    :cond_24f
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->getImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v29

    .line 2442
    invoke-virtual/range {v29 .. v29}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v7

    invoke-virtual/range {v29 .. v29}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result v8

    div-float/2addr v7, v8

    .line 2443
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    div-float v33, v32, v7

    const/16 v34, 0x0

    move-object/from16 v28, v8

    invoke-virtual/range {v28 .. v34}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 2444
    iget-boolean v7, v0, Linfo/flowersoft/theotown/stages/RegionStage;->duringScreenshot:Z

    if-nez v7, :cond_284

    if-eqz v17, :cond_284

    .line 2445
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v8, 0x3c

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 2446
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v34, 0x0

    move-object/from16 v28, v7

    invoke-virtual/range {v28 .. v34}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 2447
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    goto :goto_285

    :cond_284
    const/4 v8, 0x0

    .line 2451
    :goto_285
    iget-boolean v7, v0, Linfo/flowersoft/theotown/stages/RegionStage;->duringScreenshot:Z

    const/16 v10, 0xa

    if-nez v7, :cond_4b8

    const/16 v7, 0x64

    if-eqz v17, :cond_32e

    .line 2453
    iget-object v11, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v12, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    sub-float v12, v18, v2

    sub-float v14, v31, v2

    .line 2456
    iget-object v15, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move v11, v9

    move/from16 v13, v30

    move/from16 v16, v2

    move v1, v7

    move/from16 v19, v8

    move v2, v10

    move/from16 v10, v18

    move/from16 v7, v30

    move/from16 v8, v31

    invoke-virtual/range {v6 .. v15}, Linfo/flowersoft/theotown/drawing/Drawing;->drawQuad(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move v8, v10

    sub-float v13, v20, v16

    .line 2457
    iget-object v15, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move/from16 v11, v21

    move v14, v12

    move v12, v13

    move v13, v9

    move v7, v9

    move/from16 v10, v20

    move/from16 v9, v21

    invoke-virtual/range {v6 .. v15}, Linfo/flowersoft/theotown/drawing/Drawing;->drawQuad(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move/from16 v18, v7

    move/from16 v20, v8

    add-float v12, v35, v16

    add-float v14, v10, v16

    .line 2458
    iget-object v15, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move/from16 v11, v23

    move v13, v9

    move v7, v9

    move v8, v10

    move/from16 v9, v23

    move/from16 v10, v35

    invoke-virtual/range {v6 .. v15}, Linfo/flowersoft/theotown/drawing/Drawing;->drawQuad(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move/from16 v21, v7

    move/from16 v23, v8

    move v7, v9

    move v8, v10

    add-float v9, v31, v16

    .line 2459
    iget-object v15, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move/from16 v11, v30

    move v13, v7

    move v14, v12

    move/from16 v10, v31

    move v12, v9

    move/from16 v9, v30

    invoke-virtual/range {v6 .. v15}, Linfo/flowersoft/theotown/drawing/Drawing;->drawQuad(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move/from16 v38, v7

    move/from16 v39, v8

    .line 2461
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v7, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v28, 0x41a00000    # 20.0f

    sub-float v12, v20, v28

    sub-float v14, v31, v28

    .line 2462
    sget v15, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_X:I

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move/from16 v11, v18

    move/from16 v13, v30

    move-object/from16 v16, v7

    move/from16 v9, v18

    move/from16 v10, v20

    move/from16 v7, v30

    move/from16 v8, v31

    invoke-virtual/range {v6 .. v16}, Linfo/flowersoft/theotown/drawing/Drawing;->drawQuad(FFFFFFFFILio/blueflower/stapel2d/drawing/Engine;)V

    move v8, v10

    sub-float v13, v23, v28

    .line 2463
    sget v15, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_X:I

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move/from16 v11, v21

    move v14, v12

    move v12, v13

    move v13, v9

    move/from16 v18, v2

    move-object/from16 v16, v7

    move v7, v9

    move/from16 v9, v21

    move/from16 v10, v23

    move/from16 v2, v31

    invoke-virtual/range {v6 .. v16}, Linfo/flowersoft/theotown/drawing/Drawing;->drawQuad(FFFFFFFFILio/blueflower/stapel2d/drawing/Engine;)V

    move v13, v7

    move/from16 v20, v8

    goto :goto_356

    :cond_32e
    move/from16 v16, v2

    move v1, v7

    move/from16 v19, v8

    move v13, v9

    move/from16 v38, v23

    move/from16 v2, v31

    move/from16 v39, v35

    move/from16 v23, v20

    move/from16 v20, v18

    move/from16 v18, v10

    .line 2465
    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/stages/RegionStage;->markMap(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v7

    if-eqz v7, :cond_356

    div-float v7, v32, v16

    add-float v7, v30, v7

    float-to-int v7, v7

    float-to-int v8, v2

    add-int/lit8 v8, v8, -0xa

    const/4 v11, 0x0

    .line 2466
    iget-object v12, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v12}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IIIIILio/blueflower/stapel2d/drawing/Engine;)V

    .line 2469
    :cond_356
    :goto_356
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual/range {v37 .. v37}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v8

    mul-float v8, v8, v24

    invoke-virtual/range {v37 .. v37}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v9

    mul-float v9, v9, v24

    invoke-virtual {v7, v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 2470
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/region/Region;->isLocked(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v7

    if-eqz v7, :cond_386

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->isNoUnlockNeeded()Z

    move-result v7

    if-nez v7, :cond_386

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/region/Region;->isUnlockable(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v7

    if-nez v7, :cond_389

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/region/Region;->isWaitingToUnlock(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v7

    if-eqz v7, :cond_386

    goto :goto_389

    :cond_386
    move/from16 v31, v2

    goto :goto_3e8

    .line 2472
    :cond_389
    :goto_389
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 2473
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v7, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 2474
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/region/Region;->isWaitingToUnlock(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v7

    if-nez v7, :cond_3b3

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/Region;->getUnlockedOrWaitingMaps()I

    move-result v7

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/region/Region;->getUnlockedMaps()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v0, Linfo/flowersoft/theotown/stages/RegionStage;->MAX_CONCURRENT_WAITING:I

    if-lt v7, v8, :cond_3b3

    .line 2475
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v7, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 2477
    :cond_3b3
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/region/Region;->isWaitingToUnlock(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v1

    if-eqz v1, :cond_3d3

    .line 2478
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v29, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const v35, 0x3f333333    # 0.7f

    sget v36, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOCK:I

    const/16 v33, 0x0

    const/high16 v34, 0x3f000000    # 0.5f

    move-object/from16 v28, v1

    move/from16 v31, v2

    invoke-virtual/range {v28 .. v36}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    :goto_3cf
    move/from16 v7, v18

    goto/16 :goto_4b0

    :cond_3d3
    move/from16 v31, v2

    .line 2480
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v29, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const v35, 0x3f333333    # 0.7f

    sget v36, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    const/16 v33, 0x0

    const/high16 v34, 0x3f000000    # 0.5f

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v36}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    goto :goto_3cf

    .line 2482
    :goto_3e8
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_488

    .line 2483
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 2484
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 2485
    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityReports(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result v2

    move/from16 v7, v18

    if-lt v2, v7, :cond_41f

    .line 2486
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v29, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const v35, 0x3f333333    # 0.7f

    sget v36, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    const/16 v33, 0x0

    const/high16 v34, 0x3f000000    # 0.5f

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v36}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    goto/16 :goto_4b0

    .line 2487
    :cond_41f
    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getNewCityGifts(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result v1

    if-lez v1, :cond_43d

    .line 2488
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v29, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const v35, 0x3f333333    # 0.7f

    sget v36, Linfo/flowersoft/theotown/resources/Resources;->ICON_GOLDEN_PRESENT:I

    const/16 v33, 0x0

    const/high16 v34, 0x3f000000    # 0.5f

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v36}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    goto/16 :goto_4b0

    .line 2489
    :cond_43d
    invoke-virtual/range {v36 .. v36}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isAcquired()Z

    move-result v1

    if-eqz v1, :cond_46f

    .line 2490
    invoke-virtual/range {v36 .. v36}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v1

    if-eqz v1, :cond_45c

    .line 2491
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v29, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const v35, 0x3f333333    # 0.7f

    sget v36, Linfo/flowersoft/theotown/resources/Resources;->ICON_STAR:I

    const/16 v33, 0x0

    const/high16 v34, 0x3f000000    # 0.5f

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v36}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    goto :goto_4b0

    .line 2493
    :cond_45c
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v29, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const v35, 0x3f333333    # 0.7f

    sget v36, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    const/16 v33, 0x0

    const/high16 v34, 0x3f000000    # 0.5f

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v36}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    goto :goto_4b0

    .line 2495
    :cond_46f
    invoke-virtual/range {v36 .. v36}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCanBeAcquired()Z

    move-result v1

    if-eqz v1, :cond_4b0

    .line 2496
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v29, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const v35, 0x3f333333    # 0.7f

    sget v36, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    const/16 v33, 0x0

    const/high16 v34, 0x3f000000    # 0.5f

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v36}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    goto :goto_4b0

    :cond_488
    move/from16 v7, v18

    .line 2498
    invoke-virtual/range {v36 .. v36}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isAcquired()Z

    move-result v1

    if-eqz v1, :cond_4b0

    invoke-virtual/range {v36 .. v36}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v1

    if-nez v1, :cond_4b0

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/region/Region;->isUnlockable(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v1

    if-eqz v1, :cond_4b0

    .line 2499
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v29, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const v35, 0x3f333333    # 0.7f

    sget v36, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    const/16 v33, 0x0

    const/high16 v34, 0x3f000000    # 0.5f

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v36}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 2501
    :cond_4b0
    :goto_4b0
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    goto :goto_4c4

    :cond_4b8
    move/from16 v19, v8

    move v13, v9

    move v7, v10

    move/from16 v38, v23

    move/from16 v39, v35

    move/from16 v23, v20

    move/from16 v20, v18

    .line 2504
    :goto_4c4
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 2505
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v8, v5}, Linfo/flowersoft/theotown/region/Region;->isLocked(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v8

    if-eqz v8, :cond_4e7

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v8, v5}, Linfo/flowersoft/theotown/region/Region;->isUnlockable(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v8

    if-nez v8, :cond_4e7

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v8, v5}, Linfo/flowersoft/theotown/region/Region;->isWaitingToUnlock(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v5

    if-nez v5, :cond_4e7

    move v10, v7

    goto :goto_4e9

    :cond_4e7
    const/16 v10, 0x20

    :goto_4e9
    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/4 v1, 0x1

    int-to-float v11, v1

    .line 2508
    iget-object v12, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move v9, v13

    move/from16 v10, v20

    move/from16 v7, v30

    move/from16 v8, v31

    invoke-virtual/range {v6 .. v12}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move v8, v10

    .line 2511
    iget-object v12, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move v7, v9

    move/from16 v9, v21

    move/from16 v10, v23

    invoke-virtual/range {v6 .. v12}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 2514
    iget-object v12, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move v7, v9

    move v8, v10

    move/from16 v9, v38

    move/from16 v10, v39

    invoke-virtual/range {v6 .. v12}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move v7, v9

    move v8, v10

    .line 2517
    iget-object v12, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move/from16 v9, v30

    move/from16 v10, v31

    invoke-virtual/range {v6 .. v12}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 2521
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 2522
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_52e

    :cond_526
    move-object/from16 v37, v1

    move-object/from16 v22, v2

    move-object/from16 v25, v3

    goto/16 :goto_42

    :goto_52e
    move v7, v4

    :goto_52f
    add-int/lit8 v5, v26, 0x1

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    move-object/from16 v1, v37

    goto/16 :goto_26

    :cond_539
    move v4, v7

    const/4 v1, 0x1

    const/16 v3, 0xff

    .line 2526
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    if-lez v4, :cond_54b

    .line 2528
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    goto :goto_54c

    :cond_54b
    move v10, v1

    :goto_54c
    iput v10, v0, Linfo/flowersoft/theotown/stages/RegionStage;->selectedMapForUpload:I

    return-void
.end method

.method public final drawOwnBackground()V
    .registers 9

    .line 2218
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-nez v0, :cond_5

    return-void

    .line 2223
    :cond_5
    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_72

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_72

    .line 2224
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getWidth()F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v0, v3

    .line 2225
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/region/Region;->getWidth()F

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/region/Region;->getHeight()F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v3, v4

    .line 2226
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v4

    mul-float v5, v0, v1

    add-float/2addr v4, v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v6

    mul-float/2addr v4, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    sub-float v0, v4, v1

    .line 2227
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v4

    mul-float/2addr v4, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    sub-float v1, v4, v1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_74

    :cond_72
    move v0, v1

    move v2, v0

    .line 2230
    :goto_74
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionBackground:Linfo/flowersoft/theotown/stages/background/RegionBackground;

    invoke-virtual {v3, v1, v0, v2}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->draw(FFF)V

    return-void
.end method

.method public drop()V
    .registers 2

    .line 228
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    .line 230
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->executor:Ljava/util/concurrent/ExecutorService;

    .line 233
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->duringScreenshot:Z

    if-nez v0, :cond_19

    .line 234
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->releasePreviews()V

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->destroyBoard()V

    :cond_19
    return-void
.end method

.method public enter()V
    .registers 21

    move-object/from16 v1, p0

    .line 891
    invoke-super {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 893
    iget-boolean v0, v1, Linfo/flowersoft/theotown/stages/RegionStage;->visitingCity:Z

    const/4 v10, 0x0

    if-eqz v0, :cond_f

    .line 894
    iput-boolean v10, v1, Linfo/flowersoft/theotown/stages/RegionStage;->visitingCity:Z

    .line 895
    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/RegionStage;->reload()V

    .line 898
    :cond_f
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$5;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    neg-int v3, v2

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v2

    neg-int v4, v2

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/RegionStage$5;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/RegionStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    .line 950
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    new-instance v2, Lio/blueflower/stapel2d/util/ScreenRect;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v11, 0x0

    invoke-direct {v2, v11, v11, v3, v4}, Lio/blueflower/stapel2d/util/ScreenRect;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setView(Lio/blueflower/stapel2d/util/ScreenRect;)V

    .line 951
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsScale(FF)V

    .line 954
    new-instance v12, Lio/blueflower/stapel2d/gui/ElementLine;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 956
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    const/4 v9, 0x2

    add-int/lit8 v18, v0, -0x2

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1e

    move-object/from16 v19, v0

    invoke-direct/range {v12 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 958
    const-string v0, "leftSidebar"

    invoke-virtual {v12, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 960
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v13

    .line 961
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v0

    :goto_81
    move-object v14, v0

    goto :goto_85

    :cond_83
    const/4 v0, 0x0

    goto :goto_81

    :goto_85
    if-eqz v14, :cond_a9

    .line 963
    invoke-virtual {v14}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 964
    move-object v7, v14

    check-cast v7, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 966
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$6;

    const/16 v5, 0x1e

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/RegionStage$6;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    .line 993
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_COMMENTS:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Button;->setIcon(I)V

    .line 994
    const-string v1, "cmdRegionComments"

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 997
    :cond_a9
    invoke-virtual {v13}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 998
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$7;

    const/16 v5, 0x1e

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1e

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/RegionStage$7;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1036
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Button;->setIcon(I)V

    .line 1037
    const-string v1, "cmdNotifications"

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    goto :goto_e6

    .line 1039
    :cond_cb
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$8;

    const/16 v5, 0x1e

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1e

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/RegionStage$8;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1055
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Button;->setIcon(I)V

    .line 1056
    const-string v1, "cmdAccount"

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 1059
    :goto_e6
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$9;

    const/16 v5, 0x1e

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1e

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/RegionStage$9;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1075
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_HAMBURGER:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Button;->setIcon(I)V

    .line 1076
    const-string v1, "cmdActions"

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 1078
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$10;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/RegionStage$10;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1095
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MENU:I

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Button;->setIcon(I)V

    .line 1096
    const-string v2, "cmdSettings"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 1102
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->isOnline()Z

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_23e

    .line 1104
    new-instance v8, Linfo/flowersoft/theotown/stages/RegionStage$11;

    const/16 v5, 0x1e

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v4, 0xc8

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/RegionStage$11;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1110
    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 1111
    invoke-virtual {v8, v12}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setTouchThrough(Z)V

    .line 1112
    const-string v0, "regionActions"

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 1116
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$12;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x567

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 1117
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/RegionStage$12;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1125
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    .line 1127
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_175

    .line 1128
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$13;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGIONS:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x2aa

    .line 1129
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 1131
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/RegionStage$13;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1141
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/2addr v0, v12

    add-int/2addr v4, v0

    .line 1144
    :cond_175
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$14;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x835

    .line 1146
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 1148
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/RegionStage$14;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1156
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/2addr v0, v12

    add-int/2addr v4, v0

    .line 1158
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->SCENARIOS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c3

    .line 1159
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_OPEN_SCENARIOS_LIST:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    move v2, v9

    move-object v9, v0

    .line 1160
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$15;

    move v3, v2

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_SCENARIO:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 1162
    invoke-virtual {v5}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v5

    const/16 v6, 0xb5f

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1164
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    move v15, v3

    move-object v3, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/RegionStage$15;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/resources/TaskManager$Task;)V

    .line 1181
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/2addr v0, v12

    add-int/2addr v4, v0

    goto :goto_1c4

    :cond_1c3
    move v15, v9

    :goto_1c4
    sub-int/2addr v4, v12

    .line 1185
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingRight()I

    move-result v0

    add-int/2addr v4, v0

    invoke-virtual {v8, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 1187
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    if-le v0, v2, :cond_23e

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_23e

    .line 1191
    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 1192
    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 1195
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/2addr v0, v12

    .line 1196
    invoke-virtual {v8, v15}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    invoke-virtual {v2, v10, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 1197
    invoke-virtual {v8, v15}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    add-int/2addr v2, v12

    .line 1198
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_220

    .line 1199
    invoke-virtual {v8, v4}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 1200
    invoke-virtual {v8, v4}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/2addr v3, v12

    add-int/2addr v2, v3

    :cond_220
    sub-int/2addr v2, v12

    .line 1204
    invoke-virtual {v8, v12}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    invoke-virtual {v8, v12}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1203
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1205
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 1202
    invoke-virtual {v8, v2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setClientSize(II)V

    .line 1212
    :cond_23e
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->isOnline()Z

    move-result v0

    const/16 v9, 0x1e

    if-eqz v0, :cond_2af

    .line 1213
    new-instance v8, Lio/blueflower/stapel2d/gui/LineLayout;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v8, v11, v10, v12, v0}, Lio/blueflower/stapel2d/gui/LineLayout;-><init>(FIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1214
    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/gui/Gadget;->setFillParent(Z)V

    .line 1215
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    invoke-virtual {v8, v10, v10, v0, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 1216
    invoke-virtual {v8, v12}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 1218
    invoke-virtual {v13}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v0

    if-eqz v0, :cond_2a8

    .line 1219
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$16;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    .line 1220
    invoke-virtual {v13}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v3

    if-eqz v3, :cond_273

    invoke-virtual {v13}, Linfo/flowersoft/theotown/backend/User;->getForumName()Ljava/lang/String;

    move-result-object v3

    goto :goto_27b

    :cond_273
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xa2b

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    :goto_27b
    const/4 v6, 0x0

    .line 1221
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/RegionStage$16;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1237
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Button;->getTextLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v0

    invoke-virtual {v13}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v2

    if-eqz v2, :cond_2a1

    .line 1238
    invoke-virtual {v13}, Linfo/flowersoft/theotown/backend/User;->getForumColor()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    new-instance v4, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v4}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    invoke-static {v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    goto :goto_2a5

    .line 1239
    :cond_2a1
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    .line 1237
    :goto_2a5
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1242
    :cond_2a8
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCoinIndicator;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {v0, v10, v10, v8, v2}, Linfo/flowersoft/theotown/ui/RegionCoinIndicator;-><init>(IILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 1248
    :cond_2af
    new-instance v6, Lio/blueflower/stapel2d/gui/LineLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v6, v0, v10, v12, v2}, Lio/blueflower/stapel2d/gui/LineLayout;-><init>(FIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1249
    invoke-virtual {v6, v10}, Lio/blueflower/stapel2d/gui/Gadget;->setFillParent(Z)V

    .line 1250
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    invoke-virtual {v6, v10, v10, v0, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 1251
    invoke-virtual {v6, v12}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 1254
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$17;

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/RegionStage$17;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1277
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->size()I

    move-result v0

    if-le v0, v12, :cond_31e

    .line 1278
    sget-object v10, Linfo/flowersoft/theotown/input/KeyAction;->PREVIOUS_REGION:Linfo/flowersoft/theotown/input/KeyAction;

    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$18;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PREVIOUS:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 1279
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    add-int/lit8 v4, v3, -0x3e

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 1280
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    add-int/lit8 v5, v3, -0x1f

    const/16 v7, 0x1e

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v3, ""

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/RegionStage$18;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1278
    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 1301
    sget-object v10, Linfo/flowersoft/theotown/input/KeyAction;->NEXT_REGION:Linfo/flowersoft/theotown/input/KeyAction;

    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$19;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 1302
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    add-int/lit8 v4, v3, -0x1f

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 1303
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    add-int/lit8 v5, v3, -0x1f

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v3, ""

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/RegionStage$19;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 1301
    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 1335
    :cond_31e
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-nez v0, :cond_323

    return-void

    .line 1337
    :cond_323
    new-instance v7, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    .line 1346
    new-instance v6, Linfo/flowersoft/theotown/stages/RegionStage$20;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v3, v0, -0x24

    const/16 v5, 0x23

    move-object v0, v6

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v2, 0x20

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/RegionStage$20;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;)V

    move-object v8, v7

    move-object v7, v1

    .line 1361
    new-instance v1, Lio/blueflower/stapel2d/gui/Label;

    iget-object v2, v7, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x14

    move-object v6, v0

    move-object v0, v1

    move-object v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v1, v0

    move-object v0, v6

    const/high16 v10, 0x3f000000    # 0.5f

    .line 1362
    invoke-virtual {v1, v11, v10}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 1363
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 1364
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1366
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$21;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Label;->getFont()Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v2

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    add-int/2addr v2, v3

    .line 1367
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    const/16 v4, 0x14

    move-object v1, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/RegionStage$21;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/cityfile/MapDirectory;)V

    move-object v0, v6

    move v12, v9

    move-object v9, v7

    .line 1402
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$22;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    add-int/lit8 v6, v2, -0x14

    const-string v2, ""

    const/4 v3, 0x5

    const/4 v5, 0x0

    move-object v7, v0

    move-object v0, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/RegionStage$22;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;)V

    .line 1409
    invoke-virtual {v0, v11, v10}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 1410
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1413
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v5

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/RegionStage;->isNoUnlockNeeded()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/RegionCityPanel;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/Region;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;Z)V

    .line 1418
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-nez v0, :cond_3c5

    invoke-static {}, Linfo/flowersoft/theotown/crossplatform/TheoTown;->isPickleMode()Z

    move-result v0

    if-eqz v0, :cond_3e4

    .line 1419
    :cond_3c5
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$23;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    add-int/lit8 v4, v3, -0x1e

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    add-int/lit8 v5, v3, -0x3d

    const/16 v7, 0x1e

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v3, ""

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/stages/RegionStage$23;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/cityfile/MapDirectory;)V

    .line 1475
    :cond_3e4
    new-instance v0, Linfo/flowersoft/theotown/ui/MigrateAccountDialog;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/MigrateAccountDialog;-><init>()V

    .line 1476
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/MigrateAccountDialog;->shouldShow()Z

    move-result v2

    if-eqz v2, :cond_3fa

    .line 1477
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Linfo/flowersoft/theotown/ui/MigrateAccountDialog;->show(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 1480
    :cond_3fa
    new-instance v0, Linfo/flowersoft/theotown/stages/background/RegionBackground;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/stages/background/RegionBackground;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/RegionStage;->regionBackground:Linfo/flowersoft/theotown/stages/background/RegionBackground;

    return-void
.end method

.method public enterReasonDialog(Lio/blueflower/stapel2d/util/Setter;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 633
    const-string v0, ""

    if-nez p2, :cond_8

    .line 634
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 636
    :cond_8
    new-instance p2, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {p2, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 637
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x98f

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 638
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda8;-><init>(Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {p2, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 639
    new-instance p1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 642
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xbd2

    .line 643
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xd14

    .line 644
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 642
    invoke-virtual {p2, p1, v1, v2, v0}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 646
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public fastForwardMapUnlock(Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 4

    .line 1693
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->REDUCE_TIME_MIN:I

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/region/Region;->fastForwardMapUnlock(Linfo/flowersoft/theotown/region/RegionMap;I)V

    return-void
.end method

.method public final fetchConfig()V
    .registers 5

    .line 240
    const-string v0, "$configdata_region"

    const-class v1, Linfo/flowersoft/theotown/draft/DataDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/DataDraft;

    if-eqz v0, :cond_30

    .line 242
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/DataDraft;->content:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "max concurrent waiting"

    iget v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->MAX_CONCURRENT_WAITING:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->MAX_CONCURRENT_WAITING:I

    .line 243
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/DataDraft;->content:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "time to unlock min"

    iget v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->TIME_TO_UNLOCK_MIN:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->TIME_TO_UNLOCK_MIN:I

    .line 244
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/DataDraft;->content:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "reduce time min"

    iget v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->REDUCE_TIME_MIN:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->REDUCE_TIME_MIN:I

    .line 246
    :cond_30
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    .line 247
    iput v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->TIME_TO_UNLOCK_MIN:I

    :cond_37
    return-void
.end method

.method public getRemainingRegionUnlockTime()J
    .registers 10

    .line 1484
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->ignoreCoolDownTime:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    return-wide v1

    .line 1485
    :cond_7
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->getRegionUnlockCooldownMinutes()I

    move-result v0

    const v3, 0xea60

    mul-int/2addr v0, v3

    int-to-long v3, v0

    .line 1486
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v5

    .line 1487
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/region/Region;->getId()I

    move-result v7

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRegionUnlockTime(I)J

    move-result-wide v7

    cmp-long v0, v7, v1

    if-ltz v0, :cond_2d

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    return-wide v3

    :cond_2d
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public final getScale()F
    .registers 2

    .line 2198
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v0

    return v0
.end method

.method public isNoUnlockNeeded()Z
    .registers 2

    .line 366
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->isOnline()Z

    move-result v0

    if-nez v0, :cond_c

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isOnline()Z
    .registers 2

    .line 357
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->isOnline()Z

    move-result v0

    return v0
.end method

.method public leave()V
    .registers 2

    .line 2582
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    .line 2583
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionBackground:Linfo/flowersoft/theotown/stages/background/RegionBackground;

    if-eqz v0, :cond_d

    .line 2584
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/background/RegionBackground;->dispose()V

    const/4 v0, 0x0

    .line 2585
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionBackground:Linfo/flowersoft/theotown/stages/background/RegionBackground;

    :cond_d
    return-void
.end method

.method public final limitView()V
    .registers 8

    .line 2145
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2146
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v2

    div-float/2addr v2, v1

    .line 2147
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v1

    .line 2148
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3, v0, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v3

    .line 2150
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/region/Region;->getMinX()F

    move-result v4

    const/4 v5, 0x4

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/region/Region;->getMaxX()F

    move-result v6

    add-float/2addr v6, v5

    invoke-static {v1, v4, v6}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 2151
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/region/Region;->getMinY()F

    move-result v4

    sub-float/2addr v4, v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/region/Region;->getMaxY()F

    move-result v6

    add-float/2addr v6, v5

    invoke-static {v3, v4, v6}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v3

    .line 2152
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v4, v1, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v4

    .line 2153
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v5, v1, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v1

    .line 2154
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 2155
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v5

    sub-float/2addr v0, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v4

    div-float/2addr v0, v4

    add-float/2addr v5, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 2156
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v0

    sub-float/2addr v2, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v1

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 2154
    invoke-virtual {v3, v5, v0}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    return-void
.end method

.method public final loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 3

    const/4 v0, 0x0

    .line 1760
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/RegionStage;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public final loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 1765
    :cond_3
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/region/Region;->getMapByCityKeeper(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v5

    .line 1766
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v0

    .line 1767
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    check-cast v0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    move-object v4, v0

    goto :goto_1b

    :cond_1a
    move-object v4, v2

    :goto_1b
    const/4 v0, 0x1

    .line 1768
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->visitingCity:Z

    if-eqz v4, :cond_29

    .line 1770
    new-instance v0, Linfo/flowersoft/theotown/stages/CityCommentStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, v1, v4, p1}, Linfo/flowersoft/theotown/stages/CityCommentStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    move-object v6, v0

    goto :goto_2a

    :cond_29
    move-object v6, v2

    :goto_2a
    if-eqz v4, :cond_51

    .line 1773
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->giftsAreAvailable()Z

    move-result v0

    if-eqz v0, :cond_51

    if-eqz v5, :cond_51

    .line 1774
    new-instance v2, Linfo/flowersoft/theotown/online/CityGiftManager;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionStore()Linfo/flowersoft/theotown/online/OnlineRegionStore;

    move-result-object v0

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionUploader()Linfo/flowersoft/theotown/online/RegionUploader;

    move-result-object v1

    .line 1775
    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v3

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityId(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result v3

    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v7

    invoke-virtual {v4, v7}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityOwnerId(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result v7

    invoke-direct {v2, v0, v1, v3, v7}, Linfo/flowersoft/theotown/online/CityGiftManager;-><init>(Linfo/flowersoft/theotown/online/OnlineRegionStore;Linfo/flowersoft/theotown/online/RegionUploader;II)V

    :cond_51
    move-object v7, v2

    if-eqz v5, :cond_59

    .line 1780
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/region/Region;->selectMap(Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 1784
    :cond_59
    new-instance v8, Linfo/flowersoft/theotown/stages/RegionStage$29;

    invoke-direct {v8, p0, v5}, Linfo/flowersoft/theotown/stages/RegionStage$29;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 1805
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_b8

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 1806
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->lastLoaded:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isOnline()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 1807
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda30;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda30;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1809
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V

    move-object v3, v4

    .line 1820
    invoke-static {}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isSaving()Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 1821
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    new-instance p2, Linfo/flowersoft/theotown/stages/LoadWaitingStage;

    iget-object v4, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {p2, v4, v0, v1, v3}, Linfo/flowersoft/theotown/stages/LoadWaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void

    .line 1823
    :cond_b4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_b8
    move-object v2, p0

    move-object v3, p1

    move-object p1, p2

    .line 1826
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, v3, v5, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda32;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/region/RegionMap;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1850
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;

    move-object v9, v7

    move-object v7, v5

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V

    .line 1864
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/stages/LoadWaitingStage;

    iget-object v4, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, v4, p2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadWaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public final loadLastCity()V
    .registers 6

    .line 1720
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getLastCityManager()Linfo/flowersoft/theotown/mechanics/LastCityManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/LastCityManager;->getLastCityPath()Ljava/lang/String;

    move-result-object v0

    .line 1721
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v1

    .line 1722
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v2

    .line 1724
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 1725
    new-instance v3, Ljava/io/File;

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMap(Ljava/io/File;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v3

    if-eqz v3, :cond_3f

    if-eqz v2, :cond_3f

    .line 1727
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v2

    .line 1728
    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isLocked()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v2

    if-nez v2, :cond_3f

    :cond_3d
    const-string v0, ""

    .line 1732
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1733
    const-string v0, "7_4.city"

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMapByFileName(Ljava/lang/String;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-void

    .line 1742
    :cond_4b
    new-instance v2, Ljava/io/File;

    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1744
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMap(Ljava/io/File;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    if-nez v0, :cond_65

    .line 1746
    new-instance v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {v0, v2, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;-><init>(Ljava/io/File;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 1749
    :cond_65
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadLightInfo()V

    .line 1750
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v1

    if-eqz v1, :cond_7b

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isScenario()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 1753
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/RegionStage;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    :cond_7b
    return-void
.end method

.method public locateOnline(II)V
    .registers 5

    .line 257
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-nez v0, :cond_7

    .line 258
    iput p2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->targetCityId:I

    return-void

    .line 263
    :cond_7
    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 265
    check-cast v0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 266
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionId()I

    move-result v0

    if-ne v0, p1, :cond_1c

    .line 267
    iput p2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->targetCityId:I

    return-void

    .line 269
    :cond_1c
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 270
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    .line 271
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;->locateOnline(II)V

    return-void

    .line 274
    :cond_31
    new-instance v0, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, v1, p1, p2}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;II)V

    .line 275
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public final mapContainsAbs(Linfo/flowersoft/theotown/region/RegionMap;II)Z
    .registers 20

    move-object/from16 v0, p0

    .line 2532
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getLevel()I

    move-result v1

    mul-int/lit8 v1, v1, -0x8

    int-to-float v1, v1

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    .line 2533
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v2, v3

    .line 2534
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v3

    .line 2535
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v4

    .line 2536
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v5

    int-to-float v5, v5

    .line 2537
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v6

    int-to-float v6, v6

    move/from16 v7, p2

    int-to-float v7, v7

    cmpg-float v8, v7, v5

    const/4 v9, 0x0

    if-ltz v8, :cond_c7

    cmpg-float v8, v6, v7

    if-gez v8, :cond_47

    goto/16 :goto_c7

    .line 2544
    :cond_47
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v8, v3, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    .line 2545
    iget-object v10, v0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v3, v11}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v10

    int-to-float v10, v10

    .line 2546
    iget-object v11, v0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v12

    add-int/2addr v12, v4

    invoke-virtual {v11, v3, v12}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v1

    .line 2547
    iget-object v12, v0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v13

    add-int/2addr v13, v3

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v14

    add-int/2addr v14, v4

    invoke-virtual {v12, v13, v14}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v1

    .line 2548
    iget-object v13, v0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v14

    add-int/2addr v14, v3

    invoke-virtual {v13, v14, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v13

    int-to-float v13, v13

    .line 2549
    iget-object v14, v0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v15

    add-int/2addr v3, v15

    invoke-virtual {v14, v3, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 2552
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->tempFloats:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 2555
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->tempFloats:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v5, v8}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    .line 2556
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->tempFloats:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v10, v11}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    .line 2557
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->tempFloats:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, v6, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    .line 2559
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->tempFloats:Lcom/badlogic/gdx/utils/FloatArray;

    add-float/2addr v12, v2

    invoke-virtual {v1, v6, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    .line 2560
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->tempFloats:Lcom/badlogic/gdx/utils/FloatArray;

    add-float/2addr v3, v2

    invoke-virtual {v1, v13, v3}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    .line 2561
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->tempFloats:Lcom/badlogic/gdx/utils/FloatArray;

    add-float/2addr v8, v2

    invoke-virtual {v1, v5, v8}, Lcom/badlogic/gdx/utils/FloatArray;->add(FF)V

    .line 2563
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->tempFloats:Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v3, p3

    int-to-float v3, v3

    invoke-static {v2, v9, v1, v7, v3}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v1

    return v1

    :cond_c7
    :goto_c7
    return v9
.end method

.method public final markMap(Linfo/flowersoft/theotown/region/RegionMap;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_48

    .line 2567
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_48

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_48

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->isOnline()Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    .line 2568
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2569
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 2570
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getLastModified()J

    move-result-wide v1

    const-wide v3, 0x15ceabfa686L

    cmp-long p1, v1, v3

    if-nez p1, :cond_48

    const/4 p1, 0x1

    return p1

    :cond_48
    return v0
.end method

.method public final maybeLoadSelectedCity()V
    .registers 5

    const/4 v0, 0x0

    .line 2012
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->pendingLoadCity:Z

    .line 2014
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-nez v1, :cond_8

    goto :goto_5f

    .line 2015
    :cond_8
    iget-boolean v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->loadSelectedCity:Z

    if-nez v2, :cond_d

    goto :goto_5f

    .line 2016
    :cond_d
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_5f

    .line 2018
    :cond_18
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getSelectedMap()Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v1

    if-nez v1, :cond_21

    goto :goto_5f

    .line 2022
    :cond_21
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->isBoardCreated()Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_5f

    .line 2023
    :cond_2a
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/region/Region;->getMapByCityKeeper(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v2

    if-nez v2, :cond_37

    goto :goto_5f

    .line 2025
    :cond_37
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->loadSelectedCity:Z

    .line 2026
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/region/Region;->isLocked(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_5f

    .line 2028
    :cond_42
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 2029
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5f

    .line 2031
    :cond_59
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->doMapAction(Linfo/flowersoft/theotown/region/RegionMap;)V

    const/4 v0, 0x1

    .line 2032
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->pendingLoadCity:Z

    :cond_5f
    :goto_5f
    return-void
.end method

.method public onBack()V
    .registers 6

    .line 2591
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_60

    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->allowToGoBack:Z

    if-eqz v0, :cond_b

    goto :goto_60

    .line 2594
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_19

    .line 2596
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->showGameMenu()V

    return-void

    .line 2602
    :cond_19
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa22

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xb76

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 2603
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOSE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x626

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 2605
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x53c

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 2606
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 2607
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    .line 2592
    :cond_60
    :goto_60
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onBack()V

    return-void
.end method

.method public onUpdate()V
    .registers 26

    move-object/from16 v0, p0

    .line 1913
    iget-boolean v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->willBeShutDown:Z

    if-eqz v1, :cond_7

    return-void

    .line 1915
    :cond_7
    invoke-static {}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->getInstance()Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->fetch(Z)V

    .line 1917
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 1918
    :goto_19
    instance-of v2, v1, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    if-eqz v2, :cond_6c

    .line 1919
    move-object v2, v1

    check-cast v2, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 1920
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v3

    .line 1922
    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->isLoaded()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6c

    .line 1923
    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getVirtualRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v4

    if-eqz v4, :cond_6c

    .line 1924
    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getLastSeenRegionRulesTime(I)J

    move-result-wide v5

    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/VirtualRegion;->getRulesTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_6c

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v5

    if-nez v5, :cond_6c

    .line 1925
    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/VirtualRegion;->getId()I

    move-result v5

    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/VirtualRegion;->getRulesTime()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Linfo/flowersoft/theotown/mechanics/GameHandler;->setLastSeenRegionRulesTime(IJ)V

    .line 1926
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/stages/RegionStage;->showRegionRulesDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    .line 1931
    :cond_6c
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/resources/MusicBox$Type;->GAME:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/resources/MusicBox;->selectType(Linfo/flowersoft/theotown/resources/MusicBox$Type;)V

    .line 1932
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_82

    if-eqz v1, :cond_82

    .line 1933
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->reloadRegionInformation()V

    .line 1936
    :cond_82
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->isBoardCreated()Z

    move-result v2

    if-nez v2, :cond_a5

    if-eqz v1, :cond_a5

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 1937
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "RegionStage"

    const-string v4, "Create board and Stuff"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->createBoard()V

    .line 1939
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->createPreviews()V

    :cond_a5
    if-eqz v1, :cond_148

    .line 1943
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->update()V

    .line 1945
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->isBoardCreated()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_d5

    iget v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->targetCityId:I

    if-lez v2, :cond_d5

    .line 1946
    move-object v3, v1

    check-cast v3, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 1947
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityById(I)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    if-eqz v2, :cond_d2

    .line 1949
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/region/Region;->getMapByCityKeeper(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v2

    if-eqz v2, :cond_d2

    .line 1950
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/region/Region;->selectMap(Linfo/flowersoft/theotown/region/RegionMap;)V

    :cond_d2
    const/4 v2, -0x1

    .line 1952
    iput v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->targetCityId:I

    .line 1955
    :cond_d5
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->isBoardCreated()Z

    move-result v2

    if-eqz v2, :cond_e2

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->updateMaps()V

    .line 1957
    :cond_e2
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->isBoardCreated()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 1958
    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->handleKeyInput()V

    .line 1959
    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->handleTouchInput()V

    .line 1962
    :cond_f0
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->drawOwnBackground()V

    .line 1963
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->isBoardCreated()Z

    move-result v2

    if-eqz v2, :cond_fe

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->drawMaps()V

    .line 1965
    :cond_fe
    iget v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->movementPivotX:I

    if-ltz v2, :cond_148

    .line 1966
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1967
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 1968
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->movementPivotX:I

    int-to-float v5, v2

    iget v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->movementPivotY:I

    int-to-float v6, v2

    const/high16 v8, 0x41000000    # 8.0f

    iget-object v9, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 1969
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 1970
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->movementPivotX:I

    int-to-float v5, v2

    iget v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->movementPivotY:I

    int-to-float v6, v2

    iget v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->movementTargetX:I

    int-to-float v7, v2

    iget v2, v0, Linfo/flowersoft/theotown/stages/RegionStage;->movementTargetY:I

    int-to-float v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v10, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 1971
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_148
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_158

    .line 1975
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_1ea

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->loadingFailed()Z

    move-result v3

    if-nez v3, :cond_1ea

    :cond_158
    if-eqz v1, :cond_15f

    .line 1976
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getLoadingProgress()F

    move-result v3

    goto :goto_161

    :cond_15f
    const/high16 v3, -0x40800000    # -1.0f

    .line 1977
    :goto_161
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 1978
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 1979
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, v2

    const v7, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v6, v7

    const v7, 0x3fc90fdb

    add-float/2addr v7, v6

    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_1a0

    const/high16 v6, 0x3e800000    # 0.25f

    sub-float v6, v3, v6

    float-to-double v6, v6

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v6, v9

    double-to-float v7, v6

    .line 1985
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const v6, -0x4036f025

    :cond_1a0
    move v14, v6

    move v15, v7

    .line 1988
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v9

    int-to-float v10, v4

    int-to-float v11, v5

    const/high16 v17, 0x3f800000    # 1.0f

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v12, 0x42480000    # 50.0f

    const/high16 v13, 0x425c0000    # 55.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v18, v4

    invoke-virtual/range {v9 .. v18}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move/from16 v19, v10

    move/from16 v20, v11

    .line 1995
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-lez v8, :cond_1ea

    .line 1997
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v3, v6

    .line 1998
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "%.1f%%"

    invoke-static {v6, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/high16 v23, 0x3f000000    # 0.5f

    const/high16 v24, 0x3f000000    # 0.5f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 1997
    invoke-virtual/range {v16 .. v24}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    :cond_1ea
    if-eqz v1, :cond_227

    .line 2002
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->requiresPassword()Z

    move-result v3

    if-eqz v3, :cond_227

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_227

    .line 2003
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 2004
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    const/high16 v10, 0x3f000000    # 0.5f

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 2005
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 2008
    :cond_227
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->maybeLoadSelectedCity()V

    return-void
.end method

.method public prepare()V
    .registers 3

    .line 194
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    .line 197
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda0;-><init>()V

    .line 196
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->executor:Ljava/util/concurrent/ExecutorService;

    .line 205
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->fetchConfig()V

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->load(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final releasePreviews()V
    .registers 2

    .line 1873
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->removeMapPreviews()V

    :cond_7
    const/4 v0, -0x1

    .line 1874
    iput v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->selectedMapForUpload:I

    return-void
.end method

.method public reload()V
    .registers 2

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->visitingCity:Z

    .line 253
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/RegionStage;->selectRegion(I)V

    return-void
.end method

.method public final reloadRegion(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 5

    const/4 v0, 0x1

    .line 882
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->willBeShutDown:Z

    .line 883
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 884
    new-instance v0, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 885
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;->setSelectedRegionPath(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2, v0}, Linfo/flowersoft/theotown/stages/RegionStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/RegionProvider;)V

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public resetMap(Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 4

    .line 1893
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->disposeLastCity()V

    .line 1895
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v0

    .line 1896
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->reset(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1897
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    .line 1898
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->setCreated(Z)V

    .line 1899
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/region/Region;->updateRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)V

    .line 1900
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->releasePreviews()V

    .line 1901
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/Region;->createBoard()V

    .line 1902
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->createPreviews()V

    .line 1904
    :cond_35
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/region/Region;->selectMap(Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

.method public final selectRegion(I)V
    .registers 6

    .line 280
    invoke-static {}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->getInstance()Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->fetch(Z)V

    .line 282
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getId()I

    move-result v0

    if-eq p1, v0, :cond_18

    .line 283
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->disposeLastCity()V

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    .line 287
    :cond_18
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->releasePreviews()V

    .line 289
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->get(I)Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 291
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->getAnyId()I

    move-result p1

    .line 292
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->get(I)Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 294
    iput-boolean v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->willBeShutDown:Z

    .line 295
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void

    .line 299
    :cond_3b
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-nez v2, :cond_49

    .line 300
    new-instance v2, Linfo/flowersoft/theotown/region/Region;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-direct {v2, p1, v0, v3}, Linfo/flowersoft/theotown/region/Region;-><init>(ILinfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/city/IsoConverter;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    goto :goto_4c

    .line 302
    :cond_49
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/region/Region;->reload(Linfo/flowersoft/theotown/cityfile/MapDirectory;)V

    .line 307
    :goto_4c
    new-array p1, v1, [Ljava/lang/Runnable;

    .line 309
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, v0, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda24;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;[Ljava/lang/Runnable;)V

    .line 324
    new-instance v2, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0, v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda25;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    aput-object v2, p1, v3

    .line 334
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->requiresPassword()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 335
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    goto :goto_74

    .line 337
    :cond_6f
    aget-object p1, p1, v3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 341
    :goto_74
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/Region;->reloadRegionInformation()V

    .line 342
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->regionProvider:Linfo/flowersoft/theotown/cityfile/RegionProvider;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_87

    .line 343
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->leave()V

    .line 344
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->enter()V

    :cond_87
    return-void
.end method

.method public setAllowToGoBack(Z)V
    .registers 2

    .line 353
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->allowToGoBack:Z

    return-void
.end method

.method public setLoadLastCity(Z)Linfo/flowersoft/theotown/stages/RegionStage;
    .registers 2

    .line 188
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->loadLastCity:Z

    return-object p0
.end method

.method public shouldRenderFullspeed()Z
    .registers 2

    .line 2577
    iget v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->selectedMapForUpload:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final showDeleteRegionDialog(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 7

    .line 727
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x15d

    .line 729
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x535

    .line 730
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 732
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    .line 733
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xa33

    .line 734
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda40;

    invoke-direct {v4, p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda40;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    const/4 p1, 0x0

    .line 733
    invoke-virtual {v0, v1, v3, p1, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 740
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showDeleteRegionDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 7

    .line 651
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda37;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    .line 678
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getOwnerId()I

    move-result p1

    int-to-long v1, p1

    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 651
    :goto_1d
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->enterReasonDialog(Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

.method public final showGameMenu()V
    .registers 8

    .line 372
    new-instance v0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    new-instance v4, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda28;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda28;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v6, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda29;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda29;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->build(Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Linfo/flowersoft/theotown/region/Region;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public showOnlineModeDeletionHint(Ljava/lang/Runnable;)V
    .registers 9

    .line 525
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGIONS:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5e8

    .line 527
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x7ec

    .line 528
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa0

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v4, 0x12c

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 533
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x76b

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/4 v1, 0x1

    .line 534
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/16 v2, 0x42

    .line 535
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 536
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showRegionActions(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 14

    .line 381
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-nez v0, :cond_5

    return-void

    .line 383
    :cond_5
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 384
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1c

    move p1, v2

    goto :goto_1d

    :cond_1c
    move p1, v1

    .line 386
    :goto_1d
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v3

    .line 387
    instance-of v4, v3, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    const/16 v5, 0x15d

    const/16 v6, 0x19b

    if-eqz v4, :cond_8e

    .line 388
    move-object p1, v3

    check-cast p1, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    .line 390
    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 391
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_STATISTICS:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v2, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda12;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 392
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addSeparator()Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 396
    :cond_47
    invoke-static {}, Linfo/flowersoft/theotown/online/Multiplayer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 397
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x26a

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda15;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 417
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addSeparator()Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 420
    :cond_62
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 421
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xbce

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda16;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    goto/16 :goto_15a

    .line 423
    :cond_7c
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v2, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda17;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    goto/16 :goto_15a

    .line 425
    :cond_8e
    instance-of v4, v3, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    if-eqz v4, :cond_15a

    .line 426
    move-object v4, v3

    check-cast v4, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 427
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v7

    if-eqz v7, :cond_b3

    .line 428
    invoke-virtual {v7}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v8

    if-eqz v8, :cond_b3

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getOwnerId()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v7}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_b3

    move v1, v2

    :cond_b3
    if-eqz p1, :cond_ca

    .line 430
    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getReports()I

    move-result v2

    if-lez v2, :cond_ca

    .line 431
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    new-instance v7, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda18;

    invoke-direct {v7, p0, v4}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda18;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    const-string v8, "Clear reports"

    invoke-virtual {v0, v2, v8, v7}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 443
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addSeparator()Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 446
    :cond_ca
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_INFO:I

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x72d

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda19;

    invoke-direct {v8, p0, v4}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda19;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    invoke-virtual {v0, v2, v7, v8}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 448
    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 449
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_STATISTICS:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v3, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda20;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda20;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    invoke-virtual {v0, v2, v3, v6}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 452
    :cond_f2
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addSeparator()Linfo/flowersoft/theotown/ui/PopupBuilder;

    if-nez v1, :cond_f9

    if-eqz p1, :cond_12f

    .line 455
    :cond_f9
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_SETTINGS:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x3cf

    .line 457
    invoke-interface {v3, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda21;

    invoke-direct {v6, p0, v4}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda21;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    .line 455
    invoke-virtual {v0, v2, v3, v6}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 463
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x846

    .line 465
    invoke-interface {v3, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda22;

    invoke-direct {v6, p0, v4}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda22;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    .line 463
    invoke-virtual {v0, v2, v3, v6}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 468
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_DOWNLOAD:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x14e

    .line 470
    invoke-interface {v3, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda23;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda23;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    .line 468
    invoke-virtual {v0, v2, v3, v6}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 474
    :cond_12f
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addSeparator()Linfo/flowersoft/theotown/ui/PopupBuilder;

    if-nez v1, :cond_146

    .line 477
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_REPORT:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x137

    invoke-interface {v3, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0, v4}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda13;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    invoke-virtual {v0, v2, v3, v6}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    :cond_146
    if-nez p1, :cond_14a

    if-eqz v1, :cond_15a

    .line 495
    :cond_14a
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v1, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v4}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda14;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 499
    :cond_15a
    :goto_15a
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

.method public final showRegionRulesDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 22

    move-object/from16 v0, p0

    .line 784
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getVirtualRegion()Linfo/flowersoft/theotown/online/VirtualRegion;

    move-result-object v1

    .line 785
    new-instance v2, Linfo/flowersoft/theotown/ui/RegionRulesDialog;

    sget-object v3, Linfo/flowersoft/theotown/region/RegionIcon;->Companion:Linfo/flowersoft/theotown/region/RegionIcon$Companion;

    .line 786
    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/region/RegionIcon$Companion;->resolveOrDefault(Ljava/lang/String;)Linfo/flowersoft/theotown/region/RegionIcon;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/region/RegionIcon;->getFrame()I

    move-result v3

    .line 787
    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getName()Ljava/lang/String;

    move-result-object v4

    .line 788
    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getRules()Ljava/lang/String;

    move-result-object v5

    .line 789
    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getInfos()Ljava/lang/String;

    move-result-object v6

    .line 790
    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->isAllowPlugins()Z

    move-result v7

    .line 791
    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->isAllowSandbox()Z

    move-result v8

    .line 792
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v9

    invoke-virtual {v9}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v9

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getRulesTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    sub-long/2addr v9, v11

    .line 793
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getOwnerId()I

    move-result v11

    int-to-long v11, v11

    .line 794
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getAuthorName()Ljava/lang/String;

    move-result-object v13

    .line 795
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getAuthorColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v14

    new-instance v15, Lio/blueflower/stapel2d/util/IntList;

    .line 796
    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualRegion;->getTags()[I

    move-result-object v1

    invoke-direct {v15, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>([I)V

    .line 797
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionStore()Linfo/flowersoft/theotown/online/OnlineRegionStore;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/OnlineRegionStore;->getTags()Linfo/flowersoft/theotown/online/RegionTagMap;

    move-result-object v16

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 799
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v18

    move-object/from16 v17, v1

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    move-object/from16 v19, v1

    invoke-direct/range {v2 .. v19}, Linfo/flowersoft/theotown/ui/RegionRulesDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJJLjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/online/RegionTagMap;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;)V

    const/4 v1, 0x1

    .line 800
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showRegionStats()V
    .registers 32

    move-object/from16 v0, p0

    .line 804
    new-instance v1, Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_STATISTICS:I

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x19b

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x12c

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v4, ""

    const/16 v5, 0x12c

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 805
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    const/4 v2, 0x3

    .line 809
    new-array v3, v2, [J

    .line 816
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v4

    .line 817
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    .line 867
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move v2, v6

    move/from16 v16, v2

    move/from16 v18, v16

    move-wide v12, v8

    move-wide v14, v12

    move v6, v10

    move-wide v10, v14

    .line 817
    :goto_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v3

    move-object/from16 v3, v19

    check-cast v3, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 818
    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v19

    add-int/lit8 v18, v18, 0x1

    .line 820
    invoke-virtual/range {v19 .. v19}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v19

    if-eqz v19, :cond_a6

    add-int/lit8 v2, v2, 0x1

    .line 822
    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v3

    if-eqz v3, :cond_a4

    .line 824
    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getDetailedHabitants()[I

    move-result-object v19

    move/from16 v21, v2

    move-object/from16 v17, v3

    move/from16 v2, v16

    :goto_73
    const/4 v3, 0x3

    if-ge v2, v3, :cond_84

    .line 825
    aget-wide v22, v20, v2

    aget v3, v19, v2

    move/from16 v25, v2

    int-to-long v2, v3

    add-long v22, v22, v2

    aput-wide v22, v20, v25

    add-int/lit8 v2, v25, 0x1

    goto :goto_73

    .line 826
    :cond_84
    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getProducedPower()J

    move-result-wide v2

    add-long/2addr v8, v2

    .line 827
    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getUsedPower()J

    move-result-wide v2

    add-long/2addr v10, v2

    .line 828
    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getProducedWater()J

    move-result-wide v2

    add-long/2addr v12, v2

    .line 829
    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getUsedWater()J

    move-result-wide v2

    add-long/2addr v14, v2

    .line 830
    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getRatingValue()F

    move-result v2

    mul-float/2addr v6, v2

    move/from16 v2, v21

    goto :goto_a6

    :cond_a4
    move/from16 v21, v2

    :cond_a6
    :goto_a6
    move-object/from16 v3, v20

    goto :goto_45

    :cond_a9
    move-object/from16 v20, v3

    if-lez v2, :cond_bb

    float-to-double v5, v6

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    move-object/from16 v17, v4

    int-to-double v3, v2

    div-double v3, v21, v3

    .line 836
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    goto :goto_bf

    :cond_bb
    move-object/from16 v17, v4

    const/high16 v3, 0x3f000000    # 0.5f

    .line 841
    :goto_bf
    aget-wide v4, v20, v16

    const/4 v6, 0x1

    aget-wide v21, v20, v6

    add-long v4, v4, v21

    const/16 v19, 0x2

    aget-wide v21, v20, v19

    add-long v4, v4, v21

    move/from16 v21, v6

    .line 843
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v22

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v23

    move/from16 v24, v2

    add-int v2, v22, v23

    invoke-virtual {v6, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 844
    new-instance v25, Lio/blueflower/stapel2d/gui/ListBox;

    const/16 v29, 0x0

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v30

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v30}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v2, v25

    .line 845
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 847
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v6, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    move/from16 v22, v3

    .line 849
    new-instance v3, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;

    move-wide/from16 v25, v4

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x98d

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v23, v1

    move/from16 v1, v16

    invoke-direct {v3, v4, v1, v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 850
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x84

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-wide/from16 v27, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v5, v14}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v3, v4, v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 850
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 852
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xd39

    .line 853
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x0

    aget-wide v14, v20, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4, v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 852
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 854
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xd38

    .line 855
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    aget-wide v14, v20, v21

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4, v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 854
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 856
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xd36

    .line 857
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    aget-wide v14, v20, v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4, v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 856
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 858
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xbca

    .line 859
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4, v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 858
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 861
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x8af

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v14, 0x0

    invoke-direct {v1, v3, v5, v14}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 862
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const-class v14, Linfo/flowersoft/theotown/components/management/attribute/GeneralHappiness;

    .line 863
    invoke-static {v14}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v14

    invoke-virtual {v14}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getNameLocalizationId()I

    move-result v14

    invoke-interface {v5, v14}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": %1$,.1f%%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v22

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4, v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 862
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 865
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x168

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v14, 0x0

    invoke-direct {v1, v3, v5, v14}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 866
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x5a5

    .line 867
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    long-to-float v5, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4, v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 866
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 868
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x236

    .line 869
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    long-to-float v5, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4, v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 868
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 871
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x795

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v14, 0x0

    invoke-direct {v1, v3, v5, v14}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$CategoryListItem;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 872
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xc

    .line 873
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    long-to-float v5, v12

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4, v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 872
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 874
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x5f

    .line 875
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v8, v27

    long-to-float v5, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v4, v6}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo$ValueListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 874
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    move/from16 v2, v21

    move-object/from16 v1, v23

    .line 878
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showRegionTransferOwnershipDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 6

    .line 682
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getOwnerId()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 684
    :cond_7
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v1

    .line 686
    new-instance v2, Linfo/flowersoft/theotown/ui/SelectUserDialog;

    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$4;

    invoke-direct {v3, p0, v1, p1}, Linfo/flowersoft/theotown/stages/RegionStage$4;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v2, v3, v0, p1, v1}, Linfo/flowersoft/theotown/ui/SelectUserDialog;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    const/4 p1, 0x1

    .line 723
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showResetRegionDialog(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 7

    .line 744
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xbce

    .line 746
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x994

    .line 747
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 749
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    .line 750
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x8d8

    .line 751
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda41;

    invoke-direct {v4, p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda41;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    const/4 p1, 0x0

    .line 750
    invoke-virtual {v0, v1, v3, p1, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 757
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 758
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showUploadRegionAccountNeededDialog()V
    .registers 6

    .line 617
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xdb7

    .line 619
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xa0b

    .line 620
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 623
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 624
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x98f

    .line 625
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda46;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda46;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;)V

    const/4 v4, 0x0

    .line 624
    invoke-virtual {v0, v1, v2, v4, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    .line 628
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 629
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public showUploadRegionDialog(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 4

    .line 512
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/LimitedAccessOfflineModeDialog;->showIfNeeded(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 514
    :cond_b
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_REGION_UPLOAD_DELETION_NOTICE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 515
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->showUploadRegionDialogRaw(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void

    .line 517
    :cond_1b
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda38;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/RegionStage;->showOnlineModeDeletionHint(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showUploadRegionDialogRaw(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 10

    .line 540
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 542
    new-instance v1, Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x26a

    .line 544
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb6e

    .line 545
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xb6

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v5, 0x156

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 550
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 551
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGIONS:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x673

    .line 553
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda48;

    invoke-direct {v7}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda48;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 551
    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 557
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x479

    .line 559
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda49;

    invoke-direct {v7, p0, v0}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda49;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;[Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 557
    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 572
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xbe6

    .line 574
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda50;

    invoke-direct {v7, p0, v0, p1, v1}, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda50;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;[Ljava/lang/String;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/ui/Dialog;)V

    const/4 v4, 0x0

    .line 572
    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/4 v0, 0x1

    .line 610
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 612
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 613
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showUploadRegionTooBig()V
    .registers 6

    .line 773
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x3fe

    .line 774
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xb6

    .line 775
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 777
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x76b

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    .line 778
    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    const/16 v2, 0x42

    .line 779
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 780
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showUploadRegionUnsuited()V
    .registers 6

    .line 762
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa6e

    .line 763
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x696

    .line 764
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 766
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x76b

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    .line 767
    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    const/16 v2, 0x42

    .line 768
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 769
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final takeScreenshot()V
    .registers 14

    .line 2234
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->isBoardCreated()Z

    move-result v0

    if-nez v0, :cond_a

    move-object v4, p0

    goto :goto_43

    :cond_a
    const/4 v0, 0x1

    .line 2235
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->duringScreenshot:Z

    .line 2236
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getMaxX()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getMinX()F

    move-result v2

    sub-float v6, v1, v2

    .line 2237
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getMaxY()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getMinY()F

    move-result v2

    sub-float v7, v1, v2

    .line 2238
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getIso()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v8

    .line 2240
    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$30;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    .line 2241
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Linfo/flowersoft/theotown/stages/RegionStage$30;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;FFLinfo/flowersoft/theotown/city/IsoConverter;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2240
    invoke-static {v3, v1}, Linfo/flowersoft/theotown/city/PreviewCreator;->generate(Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;F)Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    move-result-object v1

    if-nez v1, :cond_44

    :goto_43
    return-void

    .line 2298
    :cond_44
    new-instance v5, Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v6, v4, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_MAP_SCREENSHOT:I

    iget-object v2, v4, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x6bb

    .line 2299
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    .line 2303
    invoke-interface {v1}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->remainingSteps()I

    move-result v2

    add-int/2addr v2, v0

    .line 2304
    new-instance v0, Linfo/flowersoft/theotown/stages/RegionStage$31;

    invoke-direct {v0, p0, v2, v1}, Linfo/flowersoft/theotown/stages/RegionStage$31;-><init>(Linfo/flowersoft/theotown/stages/RegionStage;ILinfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;)V

    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/stages/WaitingStage;->append(Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;)V

    .line 2332
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0, v5}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2624
    const-string v0, "RegionStage"

    return-object v0
.end method

.method public unlockMap(Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 4

    .line 1685
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage;->TIME_TO_UNLOCK_MIN:I

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/region/Region;->unlockMap(Linfo/flowersoft/theotown/region/RegionMap;I)V

    return-void
.end method

.method public unlockMapImmediately(Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 3

    .line 1689
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/region/Region;->unlockMapImmediately(Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

.method public waitingToLoadSelectedCity()Z
    .registers 2

    .line 223
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->loadSelectedCity:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/RegionStage;->pendingLoadCity:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass1 (info.flowersoft.theotown.stages.RegionStage$1)
.class public Linfo/flowersoft/theotown/stages/RegionStage$1;
.super Ljava/lang/Object;
.source "RegionStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->showRegionActions(Lio/blueflower/stapel2d/gui/Gadget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 431
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$1;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 440
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v1, "hint"

    const-string v2, "Error"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 434
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v0, "Success"

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$1;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->addReloadTask()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass10 (info.flowersoft.theotown.stages.RegionStage$10)
.class public Linfo/flowersoft/theotown/stages/RegionStage$10;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 1078
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$10;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 6

    .line 1087
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$10;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1088
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$10;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1089
    :cond_18
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_27

    :cond_23
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_27
    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 1090
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$10;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1092
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 1081
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1082
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$10;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$800(Linfo/flowersoft/theotown/stages/RegionStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass11 (info.flowersoft.theotown.stages.RegionStage$11)
.class public Linfo/flowersoft/theotown/stages/RegionStage$11;
.super Linfo/flowersoft/theotown/ui/Indicator;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 1104
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$11;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/Indicator;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 1107
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass12 (info.flowersoft.theotown.stages.RegionStage$12)
.class public Linfo/flowersoft/theotown/stages/RegionStage$12;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 1117
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$12;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 1120
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1121
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$12;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$900(Linfo/flowersoft/theotown/stages/RegionStage;)V

    .line 1122
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$12;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$12;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/stages/CreateCityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass13 (info.flowersoft.theotown.stages.RegionStage$13)
.class public Linfo/flowersoft/theotown/stages/RegionStage$13;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 1131
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$13;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 1134
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1135
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$13;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/ui/LimitedAccessOfflineModeDialog;->showIfNeeded(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1136
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$13;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$900(Linfo/flowersoft/theotown/stages/RegionStage;)V

    .line 1137
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$13;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$13;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/stages/OnlineRegionProviderStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_26
    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass14 (info.flowersoft.theotown.stages.RegionStage$14)
.class public Linfo/flowersoft/theotown/stages/RegionStage$14;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 1148
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$14;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 1151
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1152
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$14;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$900(Linfo/flowersoft/theotown/stages/RegionStage;)V

    .line 1153
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$14;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$14;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/stages/LoadCityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass15 (info.flowersoft.theotown.stages.RegionStage$15)
.class public Linfo/flowersoft/theotown/stages/RegionStage$15;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$task:Linfo/flowersoft/theotown/resources/TaskManager$Task;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/resources/TaskManager$Task;)V
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

    .line 1164
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$15;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/RegionStage$15;->val$task:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 5

    .line 1174
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/IconButton;->draw(II)V

    .line 1176
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$15;->val$task:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1177
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, p0, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_13
    return-void
.end method

.method public onClick()V
    .registers 5

    .line 1167
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1168
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$15;->val$task:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 1169
    new-instance v0, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$15;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioListDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass16 (info.flowersoft.theotown.stages.RegionStage$16)
.class public Linfo/flowersoft/theotown/stages/RegionStage$16;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 1221
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$16;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 12

    .line 1230
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$16;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1231
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$16;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1232
    :cond_18
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$16;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v4, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/2addr v0, p2

    int-to-float v5, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v6, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v7, v0

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v8, v0, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 1233
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$16;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1235
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 4

    .line 1224
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1225
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$16;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$16;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass17 (info.flowersoft.theotown.stages.RegionStage$17)
.class public Linfo/flowersoft/theotown/stages/RegionStage$17;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 1254
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$17;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 1257
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 1258
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_13

    :cond_f
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_13
    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 1259
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    int-to-float v4, p1

    const/high16 v8, 0x3f000000    # 0.5f

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 1270
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$17;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1000(Linfo/flowersoft/theotown/stages/RegionStage;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 1264
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1265
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$17;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->onBack()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass18 (info.flowersoft.theotown.stages.RegionStage$18)
.class public Linfo/flowersoft/theotown/stages/RegionStage$18;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 1281
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$18;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 5

    .line 1293
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$18;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1294
    :cond_f
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_1e

    :cond_1a
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_1e
    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 1295
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$18;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1296
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 4

    .line 1284
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$18;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1287
    :cond_9
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1288
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$18;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1100(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/cityfile/RegionProvider;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$18;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->prevId(I)I

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1200(Linfo/flowersoft/theotown/stages/RegionStage;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass19 (info.flowersoft.theotown.stages.RegionStage$19)
.class public Linfo/flowersoft/theotown/stages/RegionStage$19;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 1304
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$19;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 5

    .line 1316
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$19;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1317
    :cond_f
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_1e

    :cond_1a
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_1e
    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 1318
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$19;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1319
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 4

    .line 1307
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$19;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1310
    :cond_9
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1311
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$19;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1100(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/cityfile/RegionProvider;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$19;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/cityfile/RegionProvider;->nextId(I)I

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1200(Linfo/flowersoft/theotown/stages/RegionStage;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass2 (info.flowersoft.theotown.stages.RegionStage$2)
.class public Linfo/flowersoft/theotown/stages/RegionStage$2;
.super Ljava/lang/Object;
.source "RegionStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->showRegionActions(Lio/blueflower/stapel2d/gui/Gadget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;

.field public final synthetic val$regionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 479
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$2;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$2;->val$regionName:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$2;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/RegionStage$2;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 488
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$2;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    const-string v1, "hint"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 482
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, "report region"

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$2;->val$regionName:Ljava/lang/String;

    const-string v2, "online"

    invoke-interface {p1, v2, v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$2;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass20 (info.flowersoft.theotown.stages.RegionStage$20)
.class public Linfo/flowersoft/theotown/stages/RegionStage$20;
.super Linfo/flowersoft/theotown/ui/Indicator;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$infoText:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 1346
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$20;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/RegionStage$20;->val$infoText:Lio/blueflower/stapel2d/util/Getter;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/Indicator;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 1356
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/Indicator;->draw(II)V

    .line 1357
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onUpdate()V
    .registers 4

    .line 1349
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 1350
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$20;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1e

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$20;->val$infoText:Lio/blueflower/stapel2d/util/Getter;

    .line 1351
    invoke-interface {v2}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0xa

    .line 1350
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xa0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass21 (info.flowersoft.theotown.stages.RegionStage$21)
.class public Linfo/flowersoft/theotown/stages/RegionStage$21;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;


# direct methods
.method public static synthetic $r8$lambda$CkqAm0KsnMETRPckW0TI0V4sBFY(Ljava/lang/String;)Z
    .registers 1

    .line 1373
    invoke-static {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isCityNameValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N6SUEq464orzKmBp7f4pS9pNYVs(Linfo/flowersoft/theotown/stages/RegionStage$21;Ljava/lang/String;)V
    .registers 3

    .line 1375
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$21;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    .line 1375
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    .line 1376
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->setName(Ljava/lang/String;)V

    .line 1377
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$21;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object p1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/region/Region;->updateRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)V

    .line 1378
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage$21;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->reload()V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/cityfile/MapDirectory;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 1367
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$21;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/RegionStage$21;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 1389
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1390
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 1391
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    const/high16 v8, 0x3f000000    # 0.5f

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1392
    invoke-virtual {v1, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public isVisible()Z
    .registers 5

    .line 1397
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$21;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$21;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    check-cast v0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 1398
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getOwnerId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    :cond_35
    const/4 v0, 0x1

    return v0

    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 6

    .line 1370
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1372
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$21;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 1373
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$21$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/RegionStage$21$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 1374
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$21$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/RegionStage$21$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/RegionStage$21;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 1380
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$21;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x33e

    .line 1381
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$21;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x8f3

    .line 1382
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage$21;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    .line 1383
    invoke-static {v4}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/region/Region;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1380
    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 1383
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$21$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.RegionStage$21$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$21$$ExternalSyntheticLambda0;
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

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/RegionStage$21;->$r8$lambda$CkqAm0KsnMETRPckW0TI0V4sBFY(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$21$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.RegionStage$21$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$21$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage$21;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage$21;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$21$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$21;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$21$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$21;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/RegionStage$21;->$r8$lambda$N6SUEq464orzKmBp7f4pS9pNYVs(Linfo/flowersoft/theotown/stages/RegionStage$21;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass22 (info.flowersoft.theotown.stages.RegionStage$22)
.class public Linfo/flowersoft/theotown/stages/RegionStage$22;
.super Lio/blueflower/stapel2d/gui/Label;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$infoText:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 1402
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$22;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/RegionStage$22;->val$infoText:Lio/blueflower/stapel2d/util/Getter;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .line 1405
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 1406
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$22;->val$infoText:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass23 (info.flowersoft.theotown.stages.RegionStage$23)
.class public Linfo/flowersoft/theotown/stages/RegionStage$23;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;


# direct methods
.method public static synthetic $r8$lambda$7qUzc4OiyfDgxEw5OnjmpoTgtLY(Linfo/flowersoft/theotown/stages/RegionStage$23;)V
    .registers 2

    .line 1465
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    const/4 v0, 0x1

    .line 1465
    invoke-static {p0, v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1302(Linfo/flowersoft/theotown/stages/RegionStage;Z)Z

    return-void
.end method

.method public static synthetic $r8$lambda$8cQdrgr2zIgTfGVpLZ1vmQHRzBU(Linfo/flowersoft/theotown/stages/RegionStage$23;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 5

    .line 1453
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    .line 1453
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$900(Linfo/flowersoft/theotown/stages/RegionStage;)V

    .line 1454
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getLastCityManager()Linfo/flowersoft/theotown/mechanics/LastCityManager;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Linfo/flowersoft/theotown/mechanics/LastCityManager;->setLastCity(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1455
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->deleteAnything()V

    .line 1456
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->restoreFromZipSource()V

    .line 1457
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {p1, v2}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1200(Linfo/flowersoft/theotown/stages/RegionStage;I)V

    .line 1458
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->leave()V

    .line 1459
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->enter()V

    return-void
.end method

.method public static synthetic $r8$lambda$ht-KxcJuF6MVs_JUF1DYTEZQmgw(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1430
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/online/RegionUploader;->uploadRegion(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;Ljava/lang/String;Ljava/lang/String;Z)Lio/blueflower/stapel2d/util/Getter;

    move-result-object p0

    invoke-interface {p0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$lW2rVN9jvF3qg32GaknN5gtVEkc(Linfo/flowersoft/theotown/stages/RegionStage$23;)V
    .registers 3

    .line 1446
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    .line 1446
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$900(Linfo/flowersoft/theotown/stages/RegionStage;)V

    .line 1447
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getLastCityManager()Linfo/flowersoft/theotown/mechanics/LastCityManager;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Linfo/flowersoft/theotown/mechanics/LastCityManager;->setLastCity(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1448
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TaskManager;->reset()V

    return-void
.end method

.method public static synthetic $r8$lambda$uZqiBVdno3BHaZx9705JSrQbIoI(Linfo/flowersoft/theotown/stages/RegionStage$23;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1427
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isSocialConnected()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1428
    new-instance v7, Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Linfo/flowersoft/theotown/util/ProgressVariable;-><init>(F)V

    .line 1429
    new-instance v0, Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-direct {v0}, Linfo/flowersoft/theotown/online/RegionUploader;-><init>()V

    .line 1430
    new-instance v5, Ljava/lang/Thread;

    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1, v7}, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;)V

    invoke-direct {v5, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1431
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    new-instance v1, Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_FOG:I

    const/4 v8, 0x0

    const-string v4, "Uploading region to cloud"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void

    .line 1441
    :cond_3f
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    new-instance v0, Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/cityfile/MapDirectory;)V
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

    .line 1419
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 1422
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1423
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 1424
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    instance-of v2, v1, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    if-eqz v2, :cond_24

    .line 1425
    check-cast v1, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    .line 1426
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/RegionStage$23;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    const-string v1, "Upload region"

    invoke-virtual {v0, v2, v1, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 1445
    :cond_24
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANK:I

    new-instance v2, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/RegionStage$23;)V

    const-string v3, "Reset tasks"

    invoke-virtual {v0, v1, v3, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 1450
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    instance-of v2, v1, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    if-eqz v2, :cond_44

    .line 1451
    check-cast v1, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    .line 1452
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESET:I

    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/RegionStage$23;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    const-string v1, "Reset region"

    invoke-virtual {v0, v2, v1, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 1463
    :cond_44
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    instance-of v1, v1, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    if-eqz v1, :cond_5e

    .line 1464
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOCK:I

    new-instance v2, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/RegionStage$23;)V

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$23;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    .line 1466
    invoke-static {v3}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1300(Linfo/flowersoft/theotown/stages/RegionStage;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1464
    const-string v4, "Disable cool down time"

    invoke-virtual {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;Z)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 1470
    :cond_5e
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage$23;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage$23;->$r8$lambda$uZqiBVdno3BHaZx9705JSrQbIoI(Linfo/flowersoft/theotown/stages/RegionStage$23;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage$23;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage$23;->$r8$lambda$lW2rVN9jvF3qg32GaknN5gtVEkc(Linfo/flowersoft/theotown/stages/RegionStage$23;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage$23;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage$23;->$r8$lambda$8cQdrgr2zIgTfGVpLZ1vmQHRzBU(Linfo/flowersoft/theotown/stages/RegionStage$23;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage$23;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$23;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage$23;->$r8$lambda$7qUzc4OiyfDgxEw5OnjmpoTgtLY(Linfo/flowersoft/theotown/stages/RegionStage$23;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/online/RegionUploader;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

.field public final synthetic f$2:Linfo/flowersoft/theotown/util/ProgressVariable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/online/RegionUploader;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda4;->f$2:Linfo/flowersoft/theotown/util/ProgressVariable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/online/RegionUploader;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$23$$ExternalSyntheticLambda4;->f$2:Linfo/flowersoft/theotown/util/ProgressVariable;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/RegionStage$23;->$r8$lambda$ht-KxcJuF6MVs_JUF1DYTEZQmgw(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass24 (info.flowersoft.theotown.stages.RegionStage$24)
.class public Linfo/flowersoft/theotown/stages/RegionStage$24;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->doMapAction(Linfo/flowersoft/theotown/region/RegionMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$mode:Linfo/flowersoft/theotown/city/GameMode;

.field public final synthetic val$selectedMode:[Linfo/flowersoft/theotown/city/GameMode;

.field public final synthetic val$updateDesc:[Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;[Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/city/GameMode;[Ljava/lang/Runnable;)V
    .registers 12
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

    .line 1568
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$24;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/RegionStage$24;->val$selectedMode:[Linfo/flowersoft/theotown/city/GameMode;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/RegionStage$24;->val$mode:Linfo/flowersoft/theotown/city/GameMode;

    iput-object p11, p0, Linfo/flowersoft/theotown/stages/RegionStage$24;->val$updateDesc:[Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 4

    .line 1577
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$24;->val$selectedMode:[Linfo/flowersoft/theotown/city/GameMode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$24;->val$mode:Linfo/flowersoft/theotown/city/GameMode;

    if-ne v0, v2, :cond_10

    goto :goto_11

    :cond_10
    return v1

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 1571
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1572
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$24;->val$selectedMode:[Linfo/flowersoft/theotown/city/GameMode;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$24;->val$mode:Linfo/flowersoft/theotown/city/GameMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1573
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$24;->val$updateDesc:[Ljava/lang/Runnable;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass25 (info.flowersoft.theotown.stages.RegionStage$25)
.class public Linfo/flowersoft/theotown/stages/RegionStage$25;
.super Linfo/flowersoft/theotown/ui/IconRadioButton;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->doMapAction(Linfo/flowersoft/theotown/region/RegionMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 1596
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$25;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/ui/IconRadioButton;-><init>(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 2

    .line 1605
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->leftSideTrafficNewCities:Z

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 1599
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/IconRadioButton;->onClick()V

    .line 1600
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->leftSideTrafficNewCities:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->leftSideTrafficNewCities:Z

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass26 (info.flowersoft.theotown.stages.RegionStage$26)
.class public Linfo/flowersoft/theotown/stages/RegionStage$26;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->doMapAction(Linfo/flowersoft/theotown/region/RegionMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$map:Linfo/flowersoft/theotown/region/RegionMap;

.field public final synthetic val$meta:Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

.field public final synthetic val$selectedMode:[Linfo/flowersoft/theotown/city/GameMode;

.field public final synthetic val$tfName:Linfo/flowersoft/theotown/ui/TextField;


# direct methods
.method public static synthetic $r8$lambda$9j7goqa_Ph3prGXLiNL0EO5eSPw(Linfo/flowersoft/theotown/ui/TextField;)V
    .registers 2

    const/4 v0, 0x1

    .line 1638
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/TextField;->setVisible(Z)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/TextField;[Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/ui/Dialog;)V
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

    .line 1615
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$tfName:Linfo/flowersoft/theotown/ui/TextField;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$selectedMode:[Linfo/flowersoft/theotown/city/GameMode;

    iput-object p11, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$map:Linfo/flowersoft/theotown/region/RegionMap;

    iput-object p12, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$meta:Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    iput-object p13, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    .line 1649
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isCityNameValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 12

    .line 1618
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1620
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1621
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$selectedMode:[Linfo/flowersoft/theotown/city/GameMode;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1623
    sget-object v3, Linfo/flowersoft/theotown/city/GameMode;->FREE:Linfo/flowersoft/theotown/city/GameMode;

    if-ne v1, v3, :cond_3d

    .line 1624
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$tfName:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/ui/TextField;->setVisible(Z)V

    .line 1625
    invoke-static {}, Linfo/flowersoft/theotown/resources/FreeModeManager;->getInstance()Linfo/flowersoft/theotown/resources/FreeModeManager;

    move-result-object v4

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$map:Linfo/flowersoft/theotown/region/RegionMap;

    .line 1626
    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v2

    mul-int/lit8 v5, v2, 0x40

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v6, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v7, v2, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 1629
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v8

    new-instance v9, Linfo/flowersoft/theotown/stages/RegionStage$26$1;

    invoke-direct {v9, p0, v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage$26$1;-><init>(Linfo/flowersoft/theotown/stages/RegionStage$26;Ljava/lang/String;Linfo/flowersoft/theotown/city/GameMode;)V

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$tfName:Linfo/flowersoft/theotown/ui/TextField;

    new-instance v10, Linfo/flowersoft/theotown/stages/RegionStage$26$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Linfo/flowersoft/theotown/stages/RegionStage$26$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/TextField;)V

    .line 1625
    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/resources/FreeModeManager;->showDialog(ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;)V

    return-void

    .line 1642
    :cond_3d
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$map:Linfo/flowersoft/theotown/region/RegionMap;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$meta:Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    invoke-static {v2, v0, v1, v3, v4}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1400(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)V

    .line 1643
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->free()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass26.AnonymousClass1 (info.flowersoft.theotown.stages.RegionStage$26$1)
.class public Linfo/flowersoft/theotown/stages/RegionStage$26$1;
.super Ljava/lang/Object;
.source "RegionStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage$26;->onClick()V
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
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/RegionStage$26;

.field public final synthetic val$mode:Linfo/flowersoft/theotown/city/GameMode;

.field public final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage$26;Ljava/lang/String;Linfo/flowersoft/theotown/city/GameMode;)V
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

    .line 1630
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$26$1;->this$1:Linfo/flowersoft/theotown/stages/RegionStage$26;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$26$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$26$1;->val$mode:Linfo/flowersoft/theotown/city/GameMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 6

    .line 1633
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$26$1;->this$1:Linfo/flowersoft/theotown/stages/RegionStage$26;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/RegionStage$26;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$26$1;->val$name:Ljava/lang/String;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$26$1;->val$mode:Linfo/flowersoft/theotown/city/GameMode;

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$map:Linfo/flowersoft/theotown/region/RegionMap;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$meta:Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    invoke-static {v1, v2, v3, v4, v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1400(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)V

    .line 1634
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$26$1;->this$1:Linfo/flowersoft/theotown/stages/RegionStage$26;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/RegionStage$26;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->free()V

    .line 1635
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1630
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage$26$1;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$26$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.RegionStage$26$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$26$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/TextField;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/TextField;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$26$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/TextField;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$26$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/TextField;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage$26;->$r8$lambda$9j7goqa_Ph3prGXLiNL0EO5eSPw(Linfo/flowersoft/theotown/ui/TextField;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass27 (info.flowersoft.theotown.stages.RegionStage$27)
.class public Linfo/flowersoft/theotown/stages/RegionStage$27;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->doMapAction(Linfo/flowersoft/theotown/region/RegionMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 1652
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$27;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/RegionStage$27;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onClick()V
    .registers 2

    .line 1655
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1656
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$27;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->free()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass28 (info.flowersoft.theotown.stages.RegionStage$28)
.class public Linfo/flowersoft/theotown/stages/RegionStage$28;
.super Ljava/lang/Object;
.source "RegionStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->acquireMap(Linfo/flowersoft/theotown/region/RegionMap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
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

    .line 1701
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$28;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$28;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$28;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1704
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$28;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1705
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$28;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getRegionId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->setRegionUnlockTime(I)V

    .line 1706
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$28;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->reload()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass29 (info.flowersoft.theotown.stages.RegionStage$29)
.class public Linfo/flowersoft/theotown/stages/RegionStage$29;
.super Ljava/lang/Object;
.source "RegionStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->loadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$map:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;)V
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

    .line 1784
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$29;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$29;->val$map:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(II)V
    .registers 5

    .line 1787
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$29;->val$map:Linfo/flowersoft/theotown/region/RegionMap;

    if-nez v0, :cond_5

    return-void

    .line 1789
    :cond_5
    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v0

    const/16 v1, 0x40

    mul-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 1790
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$29;->val$map:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v0

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 1791
    invoke-static {p1, v1}, Lio/blueflower/stapel2d/util/MathUtil;->floorDiv(II)I

    move-result p1

    .line 1792
    invoke-static {p2, v1}, Lio/blueflower/stapel2d/util/MathUtil;->floorDiv(II)I

    move-result p2

    .line 1793
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$29;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/region/Region;->getMap(II)Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object p1

    if-nez p1, :cond_2c

    .line 1796
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$29;->val$map:Linfo/flowersoft/theotown/region/RegionMap;

    goto :goto_32

    .line 1799
    :cond_2c
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$29;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1502(Linfo/flowersoft/theotown/stages/RegionStage;Z)Z

    .line 1801
    :goto_32
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$29;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {p2}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object p2

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/region/Region;->selectMap(Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass3 (info.flowersoft.theotown.stages.RegionStage$3)
.class public Linfo/flowersoft/theotown/stages/RegionStage$3;
.super Ljava/lang/Object;
.source "RegionStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->showDeleteRegionDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 663
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$3;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 672
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 666
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v0, "Success"

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 667
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$3;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass30 (info.flowersoft.theotown.stages.RegionStage$30)
.class public Linfo/flowersoft/theotown/stages/RegionStage$30;
.super Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public shiftX:F

.field public shiftY:F

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$height:F

.field public final synthetic val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

.field public final synthetic val$width:F

.field public viewH:I

.field public viewW:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;FFLinfo/flowersoft/theotown/city/IsoConverter;)V
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

    .line 2241
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$width:F

    iput p4, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$height:F

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public begin(FII)V
    .registers 4

    .line 2263
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->begin(FII)V

    .line 2265
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->shiftX:F

    .line 2266
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->shiftY:F

    .line 2267
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->viewW:I

    .line 2268
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->viewH:I

    return-void
.end method

.method public draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V
    .registers 11

    .line 2273
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->setWidth(F)V

    .line 2274
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->setHeight(F)V

    .line 2276
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage$30;->hideBackground()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2277
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {v0, p2, p3, p4, p5}, Linfo/flowersoft/theotown/stages/BaseStage;->drawSimpleBackground(IIII)V

    .line 2280
    :cond_1f
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    div-int/lit8 v1, p4, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    .line 2281
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->absHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    div-int/lit8 v3, p5, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$width:F

    iget v4, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$height:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 2282
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v3

    div-float/2addr v2, v3

    .line 2280
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 2283
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1600(Linfo/flowersoft/theotown/stages/RegionStage;)V

    .line 2285
    invoke-super/range {p0 .. p5}, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V

    return-void
.end method

.method public end()V
    .registers 4

    .line 2290
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->shiftX:F

    iget v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->shiftY:F

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 2291
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->viewW:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->setWidth(F)V

    .line 2292
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->viewH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->setHeight(F)V

    .line 2293
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->access$1702(Linfo/flowersoft/theotown/stages/RegionStage;Z)Z

    return-void
.end method

.method public getHeight()I
    .registers 3

    .line 2258
    iget v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$width:F

    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$height:F

    add-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42200000    # 40.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 2253
    iget v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$width:F

    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$height:F

    add-float/2addr v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$30;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public hideBackground()Z
    .registers 2

    .line 2248
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->mapRenderingNoBackground:Z

    return v0
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass31 (info.flowersoft.theotown.stages.RegionStage$31)
.class public Linfo/flowersoft/theotown/stages/RegionStage$31;
.super Ljava/lang/Object;
.source "RegionStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public processedSteps:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$bmpGenerator:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

.field public final synthetic val$totalSteps:I


# direct methods
.method public static synthetic $r8$lambda$vrHUIhufNnHECC4VvqIiJIjXo9M(Linfo/flowersoft/theotown/stages/RegionStage$31;Ljava/lang/String;)V
    .registers 3

    .line 2321
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    .line 2321
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {p1, v0, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->getSavedImageDialog(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;ILinfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;)V
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

    .line 2304
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->val$totalSteps:I

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->val$bmpGenerator:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2305
    iput p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->processedSteps:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2

    .line 2304
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage$31;->getResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/Void;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public remainingSteps()I
    .registers 3

    .line 2308
    iget v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->val$totalSteps:I

    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->processedSteps:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public run()V
    .registers 4

    .line 2313
    iget v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->processedSteps:I

    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->val$totalSteps:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_e

    .line 2314
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->val$bmpGenerator:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->run()V

    goto :goto_3d

    .line 2316
    :cond_e
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->val$bmpGenerator:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Pixmap;

    .line 2317
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->getSaveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2318
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->save(Ljava/io/File;Lcom/badlogic/gdx/graphics/Pixmap;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_33

    .line 2319
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 2320
    :cond_33
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    new-instance v2, Linfo/flowersoft/theotown/stages/RegionStage$31$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Linfo/flowersoft/theotown/stages/RegionStage$31$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/RegionStage$31;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    .line 2324
    :goto_3d
    iget v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->processedSteps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$31;->processedSteps:I

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$31$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.RegionStage$31$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$31$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage$31;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage$31;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$31$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$31;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$31$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$31$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$31;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$31$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage$31;->$r8$lambda$vrHUIhufNnHECC4VvqIiJIjXo9M(Linfo/flowersoft/theotown/stages/RegionStage$31;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass4 (info.flowersoft.theotown.stages.RegionStage$4)
.class public Linfo/flowersoft/theotown/stages/RegionStage$4;
.super Ljava/lang/Object;
.source "RegionStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->showRegionTransferOwnershipDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$regionName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$hQCe9uIPskbE5R3twoBzZnrLARo(Linfo/flowersoft/theotown/stages/RegionStage$4;Ljava/lang/String;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;)V
    .registers 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x846

    .line 691
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x552

    .line 692
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->name:Ljava/lang/String;

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 694
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c5

    .line 695
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    .line 695
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 696
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xad

    .line 697
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/RegionStage$4$1;

    move-object v5, p0

    move-object v9, p1

    move-object v7, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Linfo/flowersoft/theotown/stages/RegionStage$4$1;-><init>(Linfo/flowersoft/theotown/stages/RegionStage$4;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 696
    invoke-virtual {v0, v1, v3, p0, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 716
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
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

    .line 686
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->val$regionName:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .registers 1

    .line 0
    return-void
.end method

.method public select(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V
    .registers 8

    .line 689
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->val$regionName:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1, v2}, Linfo/flowersoft/theotown/stages/RegionStage$4$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/RegionStage$4;Ljava/lang/String;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$4;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 717
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getOwnerId()I

    move-result p1

    int-to-long v1, p1

    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    .line 689
    :goto_25
    invoke-virtual {v0, v3, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->enterReasonDialog(Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass4.AnonymousClass1 (info.flowersoft.theotown.stages.RegionStage$4$1)
.class public Linfo/flowersoft/theotown/stages/RegionStage$4$1;
.super Ljava/lang/Object;
.source "RegionStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage$4;->select(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/RegionStage$4;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$reason:Ljava/lang/String;

.field public final synthetic val$regionName:Ljava/lang/String;

.field public final synthetic val$user:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage$4;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 698
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$1;->this$1:Linfo/flowersoft/theotown/stages/RegionStage$4;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$1;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$1;->val$user:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$1;->val$reason:Ljava/lang/String;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$1;->val$regionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 701
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$1;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$1;->val$user:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    iget-wide v1, v1, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->id:J

    long-to-int v1, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$1;->val$reason:Ljava/lang/String;

    new-instance v3, Linfo/flowersoft/theotown/stages/RegionStage$4$1$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/RegionStage$4$1$1;-><init>(Linfo/flowersoft/theotown/stages/RegionStage$4$1;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->transferRegionOwnership(ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass4.AnonymousClass1.C10831 (info.flowersoft.theotown.stages.RegionStage$4$1$1)
.class public Linfo/flowersoft/theotown/stages/RegionStage$4$1$1;
.super Ljava/lang/Object;
.source "RegionStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Linfo/flowersoft/theotown/stages/RegionStage$4$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage$4$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 701
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$1$1;->this$2:Linfo/flowersoft/theotown/stages/RegionStage$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 710
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 704
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$1$1;->this$2:Linfo/flowersoft/theotown/stages/RegionStage$4$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/RegionStage$4$1;->val$regionName:Ljava/lang/String;

    const-string v1, "online"

    const-string v2, "transfer region"

    invoke-interface {p1, v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$1$1;->this$2:Linfo/flowersoft/theotown/stages/RegionStage$4$1;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/RegionStage$4$1;->this$1:Linfo/flowersoft/theotown/stages/RegionStage$4;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/RegionStage$4;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->addReloadTask()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$4$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.RegionStage$4$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage$4;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

.field public final synthetic f$3:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage$4;Ljava/lang/String;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$4;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/RegionStage$4;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$4$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Linfo/flowersoft/theotown/stages/RegionStage$4;->$r8$lambda$hQCe9uIPskbE5R3twoBzZnrLARo(Linfo/flowersoft/theotown/stages/RegionStage$4;Ljava/lang/String;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass5 (info.flowersoft.theotown.stages.RegionStage$5)
.class public Linfo/flowersoft/theotown/stages/RegionStage$5;
.super Linfo/flowersoft/theotown/ui/TouchPane;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 898
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/TouchPane;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public clickAt(IILio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 6

    .line 901
    iget-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {p3}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object p3

    if-nez p3, :cond_9

    return-void

    :cond_9
    const/4 p3, 0x0

    .line 903
    :goto_a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getMapCount()I

    move-result v0

    if-ge p3, v0, :cond_3e

    .line 904
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getMapCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/region/Region;->getSortedMapByIndex(I)Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v0

    .line 905
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v1, v0, p1, p2}, Linfo/flowersoft/theotown/stages/RegionStage;->access$100(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;II)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 906
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$200(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void

    :cond_3b
    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    .line 911
    :cond_3e
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/stages/RegionStage;->access$200(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

.method public twoFingerClick()V
    .registers 1

    .line 0
    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 9

    .line 919
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    .line 920
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getScrollChange()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_7b

    .line 922
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->clearScrollChange()V

    .line 924
    sget v3, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    if-nez v3, :cond_19

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v1, v3

    .line 926
    :cond_19
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/RegionStage;->access$300(Linfo/flowersoft/theotown/stages/RegionStage;)F

    move-result v3

    float-to-double v3, v3

    .line 927
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 929
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_6b

    .line 930
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v4

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v6, v6, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 931
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result p1

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v6, v6, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v6

    mul-float/2addr p1, v6

    float-to-int p1, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_62

    .line 933
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    int-to-float v2, v4

    int-to-float p1, p1

    invoke-static {v1, v3, v2, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->access$400(Linfo/flowersoft/theotown/stages/RegionStage;FFF)V

    return-object v0

    .line 935
    :cond_62
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    div-float/2addr v5, v3

    int-to-float v2, v4

    int-to-float p1, p1

    invoke-static {v1, v5, v2, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->access$400(Linfo/flowersoft/theotown/stages/RegionStage;FFF)V

    return-object v0

    :cond_6b
    cmpg-float p1, v1, v2

    if-gez p1, :cond_75

    .line 939
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/stages/RegionStage;->access$500(Linfo/flowersoft/theotown/stages/RegionStage;F)V

    return-object v0

    .line 941
    :cond_75
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$5;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    div-float/2addr v5, v3

    invoke-static {p1, v5}, Linfo/flowersoft/theotown/stages/RegionStage;->access$500(Linfo/flowersoft/theotown/stages/RegionStage;F)V

    :cond_7b
    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass6 (info.flowersoft.theotown.stages.RegionStage$6)
.class public Linfo/flowersoft/theotown/stages/RegionStage$6;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 966
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 976
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 977
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 978
    :cond_18
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_27

    :cond_23
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_27
    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 979
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 980
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 981
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    .line 982
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getComments()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x3

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x2

    int-to-float v5, p2

    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v8, p1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 981
    invoke-virtual/range {v2 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 990
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->requiresPassword()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 7

    .line 969
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 970
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/RegionCommentStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v3, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/RegionStage;->access$000(Linfo/flowersoft/theotown/stages/RegionStage;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Linfo/flowersoft/theotown/stages/RegionCommentStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 971
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$6;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->access$602(Linfo/flowersoft/theotown/stages/RegionStage;Z)Z

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass7 (info.flowersoft.theotown.stages.RegionStage$7)
.class public Linfo/flowersoft/theotown/stages/RegionStage$7;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public lastNewCtr:I

.field public text:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 998
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p2, -0x1

    .line 999
    iput p2, p1, Linfo/flowersoft/theotown/stages/RegionStage$7;->lastNewCtr:I

    .line 1000
    const-string p2, ""

    iput-object p2, p1, Linfo/flowersoft/theotown/stages/RegionStage$7;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 1010
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1011
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1012
    :cond_18
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_27

    :cond_23
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_27
    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 1013
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1014
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 1015
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->text:Ljava/lang/String;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x3

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x2

    int-to-float v5, p2

    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v8, p1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    return-void
.end method

.method public onClick()V
    .registers 5

    .line 1004
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1005
    new-instance v0, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/online/OnlineNotificationDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gui/Master;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public onUpdate()V
    .registers 4

    .line 1024
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 1025
    invoke-static {}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->getInstance()Linfo/flowersoft/theotown/online/OnlineNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/OnlineNotificationManager;->getUnseenNotificationsCount()I

    move-result v0

    .line 1026
    iget v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->lastNewCtr:I

    if-eq v0, v1, :cond_29

    .line 1027
    const-string v1, ""

    if-nez v0, :cond_16

    .line 1028
    iput-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->text:Ljava/lang/String;

    goto :goto_27

    .line 1030
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->text:Ljava/lang/String;

    .line 1032
    :goto_27
    iput v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$7;->lastNewCtr:I

    :cond_29
    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass8 (info.flowersoft.theotown.stages.RegionStage$8)
.class public Linfo/flowersoft/theotown/stages/RegionStage$8;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 1039
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$8;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 6

    .line 1048
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$8;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1049
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$8;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1050
    :cond_18
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_27

    :cond_23
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_27
    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 1051
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$8;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1052
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 4

    .line 1042
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1043
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$8;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$8;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage.AnonymousClass9 (info.flowersoft.theotown.stages.RegionStage$9)
.class public Linfo/flowersoft/theotown/stages/RegionStage$9;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RegionStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/RegionStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 1059
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$9;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 6

    .line 1068
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$9;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1069
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$9;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1070
    :cond_18
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_27

    :cond_23
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    :goto_27
    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 1071
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$9;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1072
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 1062
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1063
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$9;->this$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0, p0}, Linfo/flowersoft/theotown/stages/RegionStage;->access$700(Linfo/flowersoft/theotown/stages/RegionStage;Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$IsuBRxbPnNgtQ7vzGSX-txiz6M0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$A8rYWaeVBOKE9qg9u88EBroTl9w(Linfo/flowersoft/theotown/stages/RegionStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda10 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda10;->f$2:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda10;->f$2:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$xFW3n0irBQzvVMeHtFAMtxBUB9U(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda11 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$Rr6UOrVxZUkqrk-tDNZyoDCtuvE(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda12 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$9_d9U4JwLQL37MN3wyJ-kCREI2A(Linfo/flowersoft/theotown/stages/RegionStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda13 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda13;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda13;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$iw29CEKjv3ViEy388ShTGp3Tc44(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda14 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda14)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda14;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda14;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$ptL-n9LvYwydkZXTGdGE6xbpyP0(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda15 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda15)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda15;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda15;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$JzyEFdkd6rihgBawlc-tGUhsVtc(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda16 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda16)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda16;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda16;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$z811DLlV5FDNpAVKbIX8OVKkJBE(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda17 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda17)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda17;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda17;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$UAt5R9Ge-IHEKj3gYWc8v0CR20M(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda18 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda18)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda18;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda18;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda18;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda18;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$35RNABGFIF01oPsnDf4s2hbrtuw(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda19 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda19)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda19;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda19;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$E7nwirPvgfMuPw3-4NuXnCs4oeI(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$2jjlAkFCqEuqkpfywwVBNGLdlB0(Linfo/flowersoft/theotown/stages/RegionStage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda20 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda20)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$bbZwwJeLjNHiw4EO-W7dAZ19bqU(Linfo/flowersoft/theotown/stages/RegionStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda21 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda21)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda21;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda21;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$2m1RQJvxagnnK3yjRWRzDQ4Gjq4(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda22 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda22)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda22;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda22;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda22;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda22;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$rFF1haXPS5eNQzJHdtTeZBhqHTo(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda23 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda23)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$LZl-tsBXBxviNq5IlGv7uUW6Tkk(Linfo/flowersoft/theotown/stages/RegionStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda24 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda24)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/MapDirectory;

.field public final synthetic f$2:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;[Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda24;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda24;->f$1:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda24;->f$2:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda24;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda24;->f$1:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda24;->f$2:[Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$lBSG-l5SF63qI-W_Jw3h46q8Z_8(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;[Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda25 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda25)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/MapDirectory;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda25;->f$1:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda25;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda25;->f$1:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda25;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$rpg7TPqENZOKb4fUBOgIJmvxQKg(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda26 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda26)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$25upcqDrDHm4SRkHRozewOzLE_A(Linfo/flowersoft/theotown/stages/RegionStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda27 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda27)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda27;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda27;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda27;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda27;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda27;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda27;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$dZ63BxK8Y5KQlDdQGLGWNuzksBY(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda28 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda28)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$LPP1Exjq3eTj3yomeysWO4mqtwc(Linfo/flowersoft/theotown/stages/RegionStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda29 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda29)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda29;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda29;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$F8kNwGLSZ5HCQ0kZ4-4qToIDLCI(Linfo/flowersoft/theotown/stages/RegionStage;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda3;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$i0uGSx1MHDByC0EWw3hmRVQIJi8()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda30 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda30)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda30;
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
    invoke-static {}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->waitForSaving()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda31 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda31)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$2:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$3:Linfo/flowersoft/theotown/region/RegionMap;

.field public final synthetic f$4:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

.field public final synthetic f$5:Linfo/flowersoft/theotown/online/CityGiftManager;

.field public final synthetic f$6:Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$1:Lio/blueflower/stapel2d/util/Setter;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$2:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$3:Linfo/flowersoft/theotown/region/RegionMap;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$4:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iput-object p6, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$5:Linfo/flowersoft/theotown/online/CityGiftManager;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$6:Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$1:Lio/blueflower/stapel2d/util/Setter;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$2:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$3:Linfo/flowersoft/theotown/region/RegionMap;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$4:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$5:Linfo/flowersoft/theotown/online/CityGiftManager;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda31;->f$6:Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;

    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$vSxoH4Pn8q4-UQNTb1CiR22bPGc(Linfo/flowersoft/theotown/stages/RegionStage;Lio/blueflower/stapel2d/util/Setter;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda32 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda32)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$2:Linfo/flowersoft/theotown/region/RegionMap;

.field public final synthetic f$3:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/region/RegionMap;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda32;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda32;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda32;->f$2:Linfo/flowersoft/theotown/region/RegionMap;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda32;->f$3:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda32;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda32;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda32;->f$2:Linfo/flowersoft/theotown/region/RegionMap;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda32;->f$3:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$izZaq9ZUv4P4Tx2-SXzHftmqwC8(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/region/RegionMap;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda33 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda33)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$2:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic f$3:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

.field public final synthetic f$4:Linfo/flowersoft/theotown/online/CityGiftManager;

.field public final synthetic f$5:Linfo/flowersoft/theotown/region/RegionMap;

.field public final synthetic f$6:Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$2:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$3:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$4:Linfo/flowersoft/theotown/online/CityGiftManager;

    iput-object p6, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$5:Linfo/flowersoft/theotown/region/RegionMap;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$6:Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$2:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$3:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$4:Linfo/flowersoft/theotown/online/CityGiftManager;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$5:Linfo/flowersoft/theotown/region/RegionMap;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda33;->f$6:Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;

    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$4DAM063ZuRgpkU9wP0_PYDAU0xk(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda34 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda34)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda34;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda34;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$KThV-ej_VBgS75QuMj1F9ZXM0Xc(Linfo/flowersoft/theotown/stages/RegionStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda35 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda35)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/MapDirectory;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda35;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda35;->f$1:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda35;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda35;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda35;->f$1:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda35;->f$2:Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$UnUl7JYkWbgwHQk8PpaWGlWKdlE(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/MapDirectory;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda36 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda36)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Linfo/flowersoft/theotown/city/GameMode;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;Linfo/flowersoft/theotown/city/GameMode;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda36;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda36;->f$1:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda36;->f$2:Linfo/flowersoft/theotown/city/GameMode;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda36;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda36;->f$1:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda36;->f$2:Linfo/flowersoft/theotown/city/GameMode;

    check-cast p1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-static {v0, v1, v2, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$KT0y6k1PX16pAzrwpRnxso8aAVQ(Linfo/flowersoft/theotown/stages/RegionStage;Ljava/lang/String;Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda37 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda37)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda37;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda37;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda37;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda37;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$8XCSPPBFotfFMqVaSZD8xo72TYU(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda38 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda38)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda38;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda38;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda38;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda38;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$yjILQASagEk643jbR7DYg63-ELQ(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda39 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda39)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda39;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda39;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda39;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda39;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    check-cast p1, Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$oVJFIsgYltHSkr1_dw0pWrTb7SE(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$T2PdsDHect7Q6gqCjm1ZolsB4k4(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda40 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda40)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda40;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda40;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda40;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda40;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$Xw2RItarQ5NsSjeyYnsmktDJaEk(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda41 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda41)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda41;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda41;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda41;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda41;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$uyenFOR8Z3PgA9rMkOHPd4o662g(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda42 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda42)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda42;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda42;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda42;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 10

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda42;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda42;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda42;->f$2:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$a_ZYXrulFi0kOz2rT_phQ6vRAks(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda43 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda43)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda43;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda43;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda43;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda43;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$YbFaNPzguNElDpmaoVM64yUvL-0(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda44 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda44)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityfile/MapDirectory;

.field public final synthetic f$1:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityfile/MapDirectory;[Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda44;->f$0:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda44;->f$1:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda44;->f$0:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda44;->f$1:[Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$o-RMmBGZF16steHApNWi5zwB2sI(Linfo/flowersoft/theotown/cityfile/MapDirectory;[Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda45 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda45)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda45;
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

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$ittOEcT_M397iWn7ZJKGrFNKpPQ(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda46 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda46)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda46;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda46;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$RVd8V7TeYqzeKE1b6l4_l-DkBrg(Linfo/flowersoft/theotown/stages/RegionStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda47 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda47)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda47;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda47;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda47;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda47;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda47;->f$1:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda47;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$on60tAxKXCwtcSnyIE3VF3lmSBo(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda48 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda48)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda48;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$hmzfL4i09IX_No03LDMBNPprVG4()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda49 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda49)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;[Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda49;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda49;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda49;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda49;->f$1:[Ljava/lang/String;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$-PdlUIQ6-IGnH6fdpwspAPCfasI(Linfo/flowersoft/theotown/stages/RegionStage;[Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/TextField;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/TextField;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/ui/TextField;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/ui/TextField;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$gXsIxtA48yaviJl4eVQ2OPwVTn0(Linfo/flowersoft/theotown/ui/TextField;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda50 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda50)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

.field public final synthetic f$3:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;[Ljava/lang/String;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda50;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda50;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda50;->f$2:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda50;->f$3:Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda50;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda50;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda50;->f$2:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda50;->f$3:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$YHCZ370MydOLEiDO3PsLtMoqDOY(Linfo/flowersoft/theotown/stages/RegionStage;[Ljava/lang/String;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda51 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda51)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda51;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda51;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$qZVhJhFaqjuWnzfFGSn4QUNpCXM(Linfo/flowersoft/theotown/stages/RegionStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda52 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda52)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;[Ljava/lang/String;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda52;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda52;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda52;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda52;->f$3:Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method


# virtual methods
.method public final handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda52;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda52;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda52;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda52;->f$3:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0, v1, v2, v3, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$s3YIYFE7hzJQGISS6FVWXH47vcs(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;[Ljava/lang/String;Linfo/flowersoft/theotown/ui/Dialog;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda53 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda53)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda53;->f$0:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda53;->f$0:[Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$j4MZsR3flE9jaauaDueMp3tPFAI([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda54 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda54)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/online/RegionUploader;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

.field public final synthetic f$2:Linfo/flowersoft/theotown/util/ProgressVariable;

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;[Ljava/lang/String;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;->f$0:Linfo/flowersoft/theotown/online/RegionUploader;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;->f$2:Linfo/flowersoft/theotown/util/ProgressVariable;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;->f$3:[Ljava/lang/String;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;->f$4:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;->f$0:Linfo/flowersoft/theotown/online/RegionUploader;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;->f$2:Linfo/flowersoft/theotown/util/ProgressVariable;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;->f$3:[Ljava/lang/String;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda54;->f$4:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$LJKsha8qG8Q8LJufhJkPBNCUErI(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;[Ljava/lang/String;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

.field public final synthetic f$2:[Linfo/flowersoft/theotown/city/GameMode;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;[Linfo/flowersoft/theotown/city/GameMode;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda6;->f$2:[Linfo/flowersoft/theotown/city/GameMode;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda6;->f$2:[Linfo/flowersoft/theotown/city/GameMode;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$T8HA2bzYYOD25_vQlMG0ncBsXjI(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;[Linfo/flowersoft/theotown/city/GameMode;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/RegionStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$CHwCkTivLNlI5kWSYP55N27lmx0(Linfo/flowersoft/theotown/stages/RegionStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda8;->f$0:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda8;->f$0:Lio/blueflower/stapel2d/util/Setter;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$hKFO0AuMvamvsthNaFiSHAEdod8(Lio/blueflower/stapel2d/util/Setter;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda9 (info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/stages/RegionStage$$ExternalSyntheticLambda9;
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

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->$r8$lambda$PvOLQWNP7u-fB5O7L_zantukx2s(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
