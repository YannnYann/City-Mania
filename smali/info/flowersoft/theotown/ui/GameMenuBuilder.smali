###### Class info.flowersoft.theotown.ui.GameMenuBuilder (info.flowersoft.theotown.ui.GameMenuBuilder)
.class public Linfo/flowersoft/theotown/ui/GameMenuBuilder;
.super Ljava/lang/Object;
.source "GameMenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/GameMenuBuilder$CategoryItem;
    }
.end annotation


# instance fields
.field public dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public groupItem:Linfo/flowersoft/theotown/ui/listitem/GroupItem;

.field public listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public rtl:Z


# direct methods
.method public static synthetic $r8$lambda$-2QMgW_j7X3_7pyTbo1OXpL6JYo(Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 4

    const/4 v0, 0x1

    .line 423
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 424
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v0, "https://theotown.com/privacy/screenshots"

    invoke-interface {p0, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    .line 425
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, ""

    const-string v1, "dialog screenshot policy"

    const-string v2, "open policy"

    invoke-interface {p0, v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-8DMn3hPs_vVFelCsswIFlQ4U4s(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 159
    new-instance v0, Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/stages/FilesStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0Tp8YW09KKmZocWdK7rU1F-vC2Y(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 374
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->debugLayer:Linfo/flowersoft/theotown/ui/DebugLayer;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$2nXXsep_1OkHpDT9DjEIN2J7V18()V
    .registers 1

    .line 184
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/MusicBox;->changeMusic()V

    return-void
.end method

.method public static synthetic $r8$lambda$2xxSVcYROsP4qpLPlLk55PUvPac()V
    .registers 1

    const/4 v0, 0x1

    .line 321
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    return-void
.end method

.method public static synthetic $r8$lambda$5zRMAYt7algWZlX-_feK3Q5z0Jg(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 313
    new-instance v0, Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DRGr9Lb5OihnGpEdUG11aQmY3ks()V
    .registers 4

    .line 431
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_GALLERY_UPLOAD_AGREEMENT:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 432
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, ""

    const-string v2, "dialog screenshot policy"

    const-string v3, "agree"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EFXvbK_Qjv2ti7J5lg06k907HMA()V
    .registers 1

    .line 263
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/GamesService;->showLeaderboards()V

    return-void
.end method

.method public static synthetic $r8$lambda$F3rRObjT1fvbMOKbI4ZEDgWVF5E(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Linfo/flowersoft/theotown/region/Region;)V
    .registers 6

    .line 366
    new-instance v0, Linfo/flowersoft/theotown/stages/ConsoleStage;

    if-eqz p2, :cond_9

    .line 368
    invoke-virtual {p2}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Linfo/flowersoft/theotown/stages/ConsoleStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/region/Region;Z)V

    .line 366
    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GIkkvnfajtzwU_aYnZk9e2QOZNU(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->save(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iy65rkKRjjpjA_dSf4dm_Ry696c(Linfo/flowersoft/theotown/ui/GameMenuBuilder;Ljava/lang/Runnable;)V
    .registers 3

    .line 91
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 92
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$JI5u505xUEiXsvpD1NJBQj7Dnw4(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 345
    new-instance v0, Linfo/flowersoft/theotown/stages/CreditsStage;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/stages/CreditsStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MV-Gdv55UL7LyKrEpNeiTlA7kco(Ljava/lang/String;)V
    .registers 2

    .line 279
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->unlockSocialAchievement()V

    .line 280
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MfVSha61Qf5LEw-EjVUnicFNLK8(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 204
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/ui/LimitedAccessOfflineModeDialog;->showIfNeeded(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 205
    new-instance p1, Linfo/flowersoft/theotown/stages/GalleryStage;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/GalleryStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public static synthetic $r8$lambda$MhLrp4M0Crk8YDrkNIVYGlV-rgc()V
    .registers 4

    .line 338
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, ""

    const-string v2, "EULA"

    const-string v3, "Open (game menu)"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Linfo/flowersoft/theotown/util/OSUtil;->openEULA()V

    return-void
.end method

.method public static synthetic $r8$lambda$Nnbt0GNIrS6n6h0K1QfQ90D2Jd8(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 7

    .line 151
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Gamemenu"

    const-string v2, "Store"

    const-string v3, "Open"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage;

    if-eqz p2, :cond_14

    .line 153
    invoke-virtual {p2}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p2

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    :goto_15
    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/store/StoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    .line 152
    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Og_g5nyW_jz_KYzgDH-OlhQfcRQ(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 188
    new-instance v0, Linfo/flowersoft/theotown/stages/MusicManagerStage;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/stages/MusicManagerStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OozbFeI4n4EglultrCMgq6Ly5wU()V
    .registers 1

    .line 259
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/GamesService;->showAchievements()V

    return-void
.end method

.method public static synthetic $r8$lambda$PdC1Vxjh3ySJtvQUopUuPomQPQI()V
    .registers 4

    .line 331
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, ""

    const-string v2, "Privacy"

    const-string v3, "Open (game menu)"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Linfo/flowersoft/theotown/util/OSUtil;->openPolicy()V

    return-void
.end method

.method public static synthetic $r8$lambda$QfTqeX0pCNGGpBaYSS0mJjtZ1p0(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 141
    sget-object v0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder;->INSTANCE:Linfo/flowersoft/theotown/ui/TipsDialogBuilder;

    invoke-virtual {v0, p0, p1}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder;->buildTips(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R9Uz-KBnWE4FyK2q9opyZKFgzO0(Ljava/lang/String;)V
    .registers 2

    .line 270
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->unlockSocialAchievement()V

    .line 271
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S4xwNS4LMbEw-2ApfcgdNEGlidM(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 1

    .line 236
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->screenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ScreenshotProcessor;->take()V

    return-void
.end method

.method public static synthetic $r8$lambda$UaW5-VGHh6i7DoI3du1CbhIMB6I(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 7

    .line 171
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "GameMenu"

    const-string v2, "Shop"

    const-string v3, "Open"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-interface {p0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, p0, p1, p2}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YyMxJetLCiLkpmsV0CzGD2QwjHw(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5

    .line 216
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/ui/LimitedAccessOfflineModeDialog;->showIfNeeded(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 217
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->hasPermissionToUploadScreenshot()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 219
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_GALLERY_UPLOAD_AGREEMENT:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 220
    iget-object p0, p2, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->onlineScreenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ScreenshotProcessor;->take()V

    return-void

    .line 222
    :cond_26
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/gui/Master;

    invoke-static {p0, p1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->showGalleryUploadAgreement(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    return-void

    :cond_30
    if-eqz p4, :cond_3a

    .line 225
    new-instance p1, Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-interface {p4, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_3a
    return-void
.end method

.method public static synthetic $r8$lambda$nOlUpUgv6PyrCXx1uVc_0EJ_dAc(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 1

    if-eqz p0, :cond_6

    .line 353
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->closeApp()V

    return-void

    .line 355
    :cond_6
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->closeApp()V

    return-void
.end method

.method public static synthetic $r8$lambda$oxNukare04Ii49EeCwPItkZCUD8(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 301
    new-instance v0, Linfo/flowersoft/theotown/stages/SettingsStage;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/stages/SettingsStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pu84d6hWzC3IclCoNtyKSovO2-Y()V
    .registers 4

    .line 294
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, ""

    const-string v2, "Help"

    const-string v3, "Open (game menu)"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Linfo/flowersoft/theotown/util/OSUtil;->openHelp()V

    return-void
.end method

.method public static synthetic $r8$lambda$qyGRCSgXNF5p-jAU0r-G1Inyol0(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 166
    new-instance v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, p0, p1, p2}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-zd9MCPOV7drIX7nUydgRH8GK8()V
    .registers 1

    .line 132
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->getInstance()Linfo/flowersoft/theotown/tutorial/Tutorial;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->skip()V

    return-void
.end method

.method public static synthetic $r8$lambda$wSdG9EPyslKtbW5xqyRriStQ4ms()V
    .registers 4

    .line 428
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, ""

    const-string v2, "dialog screenshot policy"

    const-string v3, "disagree"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y-6uqSOg8d_gFBlq4UMIHQb7FCA(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 1

    .line 240
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->mapScreenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ScreenshotProcessor;->take()V

    return-void
.end method

.method public static synthetic $r8$lambda$y2_ahjNignY9KqHNLmoilKFWSK0(Linfo/flowersoft/theotown/ui/GameMenuBuilder;)Lio/blueflower/stapel2d/gui/Master;
    .registers 1

    .line 111
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 111
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p0

    check-cast p0, Lio/blueflower/stapel2d/gui/Master;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showGalleryUploadAgreement(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 9

    .line 412
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "show"

    const-string v2, ""

    const-string v3, "dialog screenshot policy"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p0

    .line 415
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICER:I

    const/16 v2, 0xb1f

    .line 416
    invoke-interface {p0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb9c

    .line 417
    invoke-interface {p0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x190

    const/16 v5, 0xa0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 421
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    const/16 v1, 0x3dd

    .line 422
    invoke-interface {p0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda29;

    invoke-direct {v2, v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda29;-><init>(Linfo/flowersoft/theotown/ui/Dialog;)V

    const/4 v3, 0x0

    .line 421
    invoke-virtual {v0, p1, v1, v3, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 427
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 v1, 0xa69

    invoke-interface {p0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda30;

    invoke-direct {v2}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda30;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v1, v4, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 429
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v1, 0x18d

    invoke-interface {p0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda31;-><init>()V

    invoke-virtual {v0, p1, p0, v3, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 434
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static unlockSocialAchievement()V
    .registers 2

    .line 53
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v1, "social_media"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public final addCategory(Ljava/lang/String;)V
    .registers 4

    .line 80
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->finalizeLastCategory()V

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v1, Linfo/flowersoft/theotown/ui/GameMenuBuilder$CategoryItem;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$CategoryItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 82
    new-instance p1, Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-direct {p1}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->groupItem:Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    return-void
.end method

.method public final addItem(ILjava/lang/String;Ljava/lang/Runnable;)V
    .registers 11

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->groupItem:Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->countItems()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->groupItem:Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 88
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->groupItem:Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    .line 90
    :cond_17
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->groupItem:Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    new-instance v1, Linfo/flowersoft/theotown/ui/IconItem;

    new-instance v4, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda28;

    invoke-direct {v4, p0, p3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda28;-><init>(Linfo/flowersoft/theotown/ui/GameMenuBuilder;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    iget-boolean v6, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->rtl:Z

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/IconItem;-><init>(ILjava/lang/String;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public build(Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Linfo/flowersoft/theotown/region/Region;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
            "Linfo/flowersoft/theotown/region/Region;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 103
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v12

    .line 104
    invoke-interface {v12}, Lio/blueflower/stapel2d/gamestack/Translator;->prefersRTL()Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->rtl:Z

    .line 106
    new-instance v1, Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MENU:I

    const/16 v3, 0x5dc

    invoke-interface {v12, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x12c

    const/16 v6, 0x1c8

    const-string v4, ""

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    move-object v3, v7

    iput-object v1, v0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 107
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->removeControlLine()V

    if-eqz v8, :cond_36

    .line 109
    invoke-virtual {v8}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    .line 111
    :goto_37
    new-instance v5, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/GameMenuBuilder;)V

    .line 113
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "game menu"

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_4b

    .line 114
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    :cond_4b
    move-object v7, v2

    .line 115
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    const/4 v6, 0x0

    const/4 v13, 0x1

    if-ne v2, v4, :cond_5a

    move v14, v13

    goto :goto_5b

    :cond_5a
    move v14, v6

    .line 117
    :goto_5b
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 119
    new-instance v4, Linfo/flowersoft/theotown/ui/ColorRect;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v15, v0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v15}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v15

    invoke-direct {v4, v2, v15}, Linfo/flowersoft/theotown/ui/ColorRect;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 121
    new-instance v16, Lio/blueflower/stapel2d/gui/ListBox;

    iget-object v2, v0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v21

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v21}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v2, v16

    iput-object v2, v0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 122
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 123
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2, v6}, Lio/blueflower/stapel2d/gui/ListBox;->setShowBorder(Z)V

    const/16 v2, 0xc1c

    .line 126
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addCategory(Ljava/lang/String;)V

    if-eqz v8, :cond_d5

    .line 129
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->getInstance()Linfo/flowersoft/theotown/tutorial/Tutorial;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isActive()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 130
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFASTFAST:I

    const/16 v4, 0x487

    .line 131
    invoke-interface {v12, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda11;

    invoke-direct {v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda11;-><init>()V

    .line 130
    invoke-virtual {v0, v2, v4, v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_c5

    .line 133
    :cond_af
    invoke-virtual {v8}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->isSavable()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 134
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_SAVE:I

    const/16 v4, 0x57f

    .line 135
    invoke-interface {v12, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda20;

    invoke-direct {v6, v8}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda20;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    .line 134
    invoke-virtual {v0, v2, v4, v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 139
    :cond_c5
    :goto_c5
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDUCATION:I

    const/16 v4, 0x78b

    .line 140
    invoke-interface {v12, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda21;

    invoke-direct {v6, v3, v10}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda21;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 139
    invoke-virtual {v0, v2, v4, v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 145
    :cond_d5
    const-string v2, "store"

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    const/16 v4, 0x503

    .line 146
    invoke-interface {v12, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addCategory(Ljava/lang/String;)V

    .line 147
    const-string v4, "active gamemenu"

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 148
    invoke-static {}, Linfo/flowersoft/theotown/store/StoreStage;->getIcon()I

    move-result v2

    const/16 v4, 0xab3

    .line 149
    invoke-interface {v12, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda22;

    invoke-direct {v6, v11, v10, v8}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda22;-><init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    .line 148
    invoke-virtual {v0, v2, v4, v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 156
    :cond_fe
    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->SHOW_FILES_EXPLORER:Z

    if-eqz v2, :cond_116

    if-nez v8, :cond_116

    .line 157
    invoke-static {}, Linfo/flowersoft/theotown/stages/FilesStage;->getIcon()I

    move-result v2

    const/16 v4, 0x8a6

    .line 158
    invoke-interface {v12, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda23;

    invoke-direct {v6, v11, v10, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda23;-><init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    .line 157
    invoke-virtual {v0, v2, v4, v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 161
    :cond_116
    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v1, :cond_13a

    .line 162
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_FEATURES:I

    const/16 v2, 0x478

    .line 163
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda24;

    invoke-direct {v4, v10, v5, v11}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda24;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;)V

    .line 162
    invoke-virtual {v0, v1, v2, v4}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 168
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    const/16 v2, 0x378

    .line 169
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda25;

    invoke-direct {v4, v5, v10, v11}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda25;-><init>(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    .line 168
    invoke-virtual {v0, v1, v2, v4}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 179
    :cond_13a
    sget v1, Linfo/flowersoft/theotown/resources/Settings;->generalSoundLevel:I

    if-lez v1, :cond_16f

    const/16 v1, 0x15a

    .line 180
    invoke-interface {v12, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addCategory(Ljava/lang/String;)V

    .line 181
    sget v1, Linfo/flowersoft/theotown/resources/Settings;->musicLevel:I

    if-lez v1, :cond_15f

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->generalSoundLevel:I

    if-lez v1, :cond_15f

    .line 182
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFAST:I

    const/16 v2, 0x971

    .line 183
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda26;

    invoke-direct {v4}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda26;-><init>()V

    .line 182
    invoke-virtual {v0, v1, v2, v4}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 186
    :cond_15f
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MUSIC:I

    const/16 v2, 0x4fc

    .line 187
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda27;

    invoke-direct {v4, v11, v10}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda27;-><init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 186
    invoke-virtual {v0, v1, v2, v4}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    :cond_16f
    const/16 v1, 0x332

    .line 194
    invoke-interface {v12, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addCategory(Ljava/lang/String;)V

    .line 196
    const-string v1, "gallery"

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 197
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->experimentalFeatures:Z

    if-nez v2, :cond_18d

    const-string v2, "is experimental"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18b

    goto :goto_18d

    :cond_18b
    move-object v4, v8

    goto :goto_1ce

    .line 200
    :cond_18d
    :goto_18d
    const-string v2, "show gallery"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 201
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGIONS:I

    const/16 v4, 0x157

    .line 202
    invoke-interface {v12, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v6, v10, v3, v11}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda1;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;)V

    .line 201
    invoke-virtual {v0, v2, v4, v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 210
    :cond_1a5
    const-string v2, "show upload"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18b

    if-eqz v8, :cond_18b

    .line 212
    invoke-virtual {v8}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v1

    if-nez v1, :cond_18b

    .line 213
    sget v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    const/16 v1, 0x549

    .line 214
    invoke-interface {v12, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    new-instance v1, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;

    move-object v4, v8

    move-object v6, v11

    move-object v8, v2

    move-object v2, v10

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;)V

    .line 213
    invoke-virtual {v0, v15, v8, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    :goto_1ce
    const/16 v1, 0x4f7

    if-eqz v4, :cond_1fa

    .line 233
    invoke-virtual {v4}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v2

    if-nez v2, :cond_1fa

    .line 234
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CAMERA:I

    const/16 v3, 0x15f

    .line 235
    invoke-interface {v12, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v5, v4}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    .line 234
    invoke-virtual {v0, v2, v3, v5}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 238
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MAP_SCREENSHOT:I

    .line 239
    invoke-interface {v12, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v5, v4}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    .line 238
    invoke-virtual {v0, v2, v3, v5}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    :cond_1fa
    if-eqz v9, :cond_205

    .line 244
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MAP_SCREENSHOT:I

    .line 245
    invoke-interface {v12, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v2, v1, v9}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 251
    :cond_205
    const-string v1, "forum"

    invoke-virtual {v7, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    const-string v2, "discord"

    invoke-virtual {v7, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x128

    .line 254
    invoke-interface {v12, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addCategory(Ljava/lang/String;)V

    .line 256
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    invoke-interface {v3}, Linfo/flowersoft/theotown/crossplatform/GamesService;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_242

    .line 257
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACHIEVEMENTS:I

    const/16 v5, 0x86e

    .line 258
    invoke-interface {v12, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda5;-><init>()V

    .line 257
    invoke-virtual {v0, v3, v5, v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 261
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEADERBOARDS:I

    const/16 v5, 0x736

    .line 262
    invoke-interface {v12, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda6;-><init>()V

    .line 261
    invoke-virtual {v0, v3, v5, v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    :cond_242
    if-eqz v1, :cond_256

    .line 266
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_256

    .line 267
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    new-instance v5, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda7;

    invoke-direct {v5, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    const-string v1, "Forum"

    invoke-virtual {v0, v3, v1, v5}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    :cond_256
    if-eqz v2, :cond_26a

    .line 275
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26a

    .line 276
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_DISCORD:I

    new-instance v3, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    const-string v2, "Discord"

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    :cond_26a
    const/16 v1, 0x7db

    .line 288
    invoke-interface {v12, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addCategory(Ljava/lang/String;)V

    .line 291
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIC:I

    const/16 v2, 0x52c

    .line 292
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda9;-><init>()V

    .line 291
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 299
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_SETTINGS:I

    const/16 v2, 0xaaa

    .line 300
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda10;

    invoke-direct {v3, v11, v10}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda10;-><init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 299
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    if-eqz v11, :cond_2b9

    const/16 v1, 0xa2b

    .line 305
    invoke-interface {v12, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v2

    if-eqz v2, :cond_2af

    .line 307
    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2af

    .line 308
    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->getName()Ljava/lang/String;

    move-result-object v1

    .line 311
    :cond_2af
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    new-instance v3, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda12;

    invoke-direct {v3, v11, v10}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda12;-><init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v2, v1, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    :cond_2b9
    if-eqz v4, :cond_2cb

    .line 318
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    const/16 v2, 0xc77

    .line 319
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda13;-><init>()V

    .line 318
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 328
    :cond_2cb
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PUBLIC:I

    const/16 v2, 0x13e

    .line 329
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda14;-><init>()V

    .line 328
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 335
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PUBLIC:I

    const/16 v2, 0x57e

    .line 336
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda15;-><init>()V

    .line 335
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 343
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_LANDMARK:I

    const/16 v2, 0xaa2

    .line 344
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda16;

    invoke-direct {v3, v11, v10}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda16;-><init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 343
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 348
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->showCloseButton:Z

    if-nez v1, :cond_301

    if-eqz v14, :cond_311

    .line 349
    :cond_301
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOSE:I

    const/16 v2, 0xb24

    .line 350
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda17;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda17;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    .line 349
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 361
    :cond_311
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v1, :cond_33c

    .line 362
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addCategory(Ljava/lang/String;)V

    .line 363
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->experimentalFeatures:Z

    if-eqz v2, :cond_330

    .line 364
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CONSOLE:I

    const/16 v3, 0x9c5

    .line 365
    invoke-interface {v12, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda18;

    move-object/from16 v6, p3

    invoke-direct {v5, v11, v10, v4, v6}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda18;-><init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Linfo/flowersoft/theotown/region/Region;)V

    .line 364
    invoke-virtual {v0, v2, v3, v5}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    :cond_330
    if-eqz v4, :cond_33c

    .line 372
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_DEBUGINFO:I

    new-instance v3, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda19;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda19;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v0, v2, v1, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 378
    :cond_33c
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->finalizeLastCategory()V

    .line 380
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Linfo/flowersoft/theotown/ui/GameMenuBuilder$1;

    const-string v3, ""

    invoke-direct {v2, v0, v3, v12}, Linfo/flowersoft/theotown/ui/GameMenuBuilder$1;-><init>(Linfo/flowersoft/theotown/ui/GameMenuBuilder;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Translator;)V

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 407
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 408
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v1, v13}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final finalizeLastCategory()V
    .registers 3

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 66
    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->groupItem:Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->countItems()I

    move-result v0

    if-lez v0, :cond_18

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->groupItem:Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 70
    :cond_18
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v0

    .line 71
    instance-of v0, v0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$CategoryItem;

    if-eqz v0, :cond_33

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->removeItemIndex(I)V

    :cond_33
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->groupItem:Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder.AnonymousClass1 (info.flowersoft.theotown.ui.GameMenuBuilder$1)
.class Linfo/flowersoft/theotown/ui/GameMenuBuilder$1;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "GameMenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/GameMenuBuilder;->build(Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Linfo/flowersoft/theotown/region/Region;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/GameMenuBuilder;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/GameMenuBuilder;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Translator;)V
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

    .line 380
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$1;->this$0:Linfo/flowersoft/theotown/ui/GameMenuBuilder;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 18

    move-object/from16 p1, p7

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x19a

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->getNumId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), c"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "version"

    .line 385
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, p2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 387
    iget-object p2, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 388
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    div-int/lit8 p2, p5, 0x2

    add-int/2addr p3, p2

    int-to-float v3, p3

    div-int/lit8 p2, p6, 0x2

    add-int/2addr p2, p4

    int-to-float v4, p2

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v7, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawShadowedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    .line 389
    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0xf

    return p1
.end method

.method public onClick(II)V
    .registers 5

    .line 399
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 400
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->getNumId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    .line 401
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v0, 0x295

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder.CategoryItem (info.flowersoft.theotown.ui.GameMenuBuilder$CategoryItem)
.class Linfo/flowersoft/theotown/ui/GameMenuBuilder$CategoryItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "GameMenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/GameMenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryItem"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 439
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 17

    move-object/from16 p1, p7

    .line 444
    iget-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 446
    iget-object p2, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuTitle:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 447
    iget-object v1, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p3, p5

    int-to-float v3, p3

    div-int/lit8 p1, p6, 0x2

    add-int/2addr p4, p1

    int-to-float v4, p4

    const/high16 v7, 0x3f000000    # 0.5f

    const v8, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0xf

    return p1
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/GameMenuBuilder;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/GameMenuBuilder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/GameMenuBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/GameMenuBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$y2_ahjNignY9KqHNLmoilKFWSK0(Linfo/flowersoft/theotown/ui/GameMenuBuilder;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gui/Master;

.field public final synthetic f$2:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda1;->f$1:Lio/blueflower/stapel2d/gui/Master;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda1;->f$2:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda1;->f$1:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda1;->f$2:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$MfVSha61Qf5LEw-EjVUnicFNLK8(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda10 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda10;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda10;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda10;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda10;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$oxNukare04Ii49EeCwPItkZCUD8(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda11 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda11;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$u-zd9MCPOV7drIX7nUydgRH8GK8()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda12 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda12;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda12;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda12;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda12;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$5zRMAYt7algWZlX-_feK3Q5z0Jg(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda13 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda13;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$2xxSVcYROsP4qpLPlLk55PUvPac()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda14 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda14)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda14;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$PdC1Vxjh3ySJtvQUopUuPomQPQI()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda15 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda15)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda15;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$MhLrp4M0Crk8YDrkNIVYGlV-rgc()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda16 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda16)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda16;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda16;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda16;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda16;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$JI5u505xUEiXsvpD1NJBQj7Dnw4(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda17 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda17)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$nOlUpUgv6PyrCXx1uVc_0EJ_dAc(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda18 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda18)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$2:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

.field public final synthetic f$3:Linfo/flowersoft/theotown/region/Region;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Linfo/flowersoft/theotown/region/Region;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda18;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda18;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda18;->f$2:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda18;->f$3:Linfo/flowersoft/theotown/region/Region;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda18;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda18;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda18;->f$2:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda18;->f$3:Linfo/flowersoft/theotown/region/Region;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$F3rRObjT1fvbMOKbI4ZEDgWVF5E(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Linfo/flowersoft/theotown/region/Region;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda19 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda19)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$0Tp8YW09KKmZocWdK7rU1F-vC2Y(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda2 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gui/Master;

.field public final synthetic f$2:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

.field public final synthetic f$3:Lio/blueflower/stapel2d/util/Getter;

.field public final synthetic f$4:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;->f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/gui/Master;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;->f$3:Lio/blueflower/stapel2d/util/Getter;

    iput-object p5, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;->f$4:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;->f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;->f$3:Lio/blueflower/stapel2d/util/Getter;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda2;->f$4:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$YyMxJetLCiLkpmsV0CzGD2QwjHw(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda20 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda20)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$GIkkvnfajtzwU_aYnZk9e2QOZNU(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda21 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda21)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gui/Master;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda21;->f$0:Lio/blueflower/stapel2d/gui/Master;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda21;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda21;->f$0:Lio/blueflower/stapel2d/gui/Master;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda21;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$QfTqeX0pCNGGpBaYSS0mJjtZ1p0(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda22 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda22)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$2:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda22;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda22;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda22;->f$2:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda22;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda22;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda22;->f$2:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$Nnbt0GNIrS6n6h0K1QfQ90D2Jd8(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda23 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda23)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$2:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda23;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda23;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda23;->f$2:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda23;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda23;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda23;->f$2:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$-8DMn3hPs_vVFelCsswIFlQ4U4s(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda24 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda24)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/Getter;

.field public final synthetic f$2:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda24;->f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda24;->f$1:Lio/blueflower/stapel2d/util/Getter;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda24;->f$2:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda24;->f$0:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda24;->f$1:Lio/blueflower/stapel2d/util/Getter;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda24;->f$2:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$qyGRCSgXNF5p-jAU0r-G1Inyol0(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda25 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda25)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Getter;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$2:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda25;->f$0:Lio/blueflower/stapel2d/util/Getter;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda25;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda25;->f$2:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda25;->f$0:Lio/blueflower/stapel2d/util/Getter;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda25;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda25;->f$2:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$UaW5-VGHh6i7DoI3du1CbhIMB6I(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda26 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda26)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda26;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$2nXXsep_1OkHpDT9DjEIN2J7V18()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda27 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda27)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda27;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda27;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda27;->f$0:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda27;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$Og_g5nyW_jz_KYzgDH-OlhQfcRQ(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda28 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda28)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/GameMenuBuilder;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/GameMenuBuilder;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/ui/GameMenuBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/ui/GameMenuBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda28;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$Iy65rkKRjjpjA_dSf4dm_Ry696c(Linfo/flowersoft/theotown/ui/GameMenuBuilder;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda29 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda29)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda29;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda29;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$-2QMgW_j7X3_7pyTbo1OXpL6JYo(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda3 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$S4xwNS4LMbEw-2ApfcgdNEGlidM(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda30 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda30)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda30;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$wSdG9EPyslKtbW5xqyRriStQ4ms()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda31 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda31)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda31;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$DRGr9Lb5OihnGpEdUG11aQmY3ks()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda4 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$y-6uqSOg8d_gFBlq4UMIHQb7FCA(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda5 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda5;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$OozbFeI4n4EglultrCMgq6Ly5wU()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda6 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda6;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$EFXvbK_Qjv2ti7J5lg06k907HMA()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda7 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$R9Uz-KBnWE4FyK2q9opyZKFgzO0(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda8 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$MV-Gdv55UL7LyKrEpNeiTlA7kco(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda9 (info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/ui/GameMenuBuilder$$ExternalSyntheticLambda9;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->$r8$lambda$pu84d6hWzC3IclCoNtyKSovO2-Y()V

    return-void
.end method
