###### Class info.flowersoft.theotown.stages.CityStage (info.flowersoft.theotown.stages.CityStage)
.class public Linfo/flowersoft/theotown/stages/CityStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "CityStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;,
        Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;
    }
.end annotation


# instance fields
.field public final asyncRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public city:Linfo/flowersoft/theotown/city/City;

.field public final cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public citySaved:Z

.field public final cityVisitor:Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;

.field public final commentsStage:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public finalCityAction:Ljava/lang/Runnable;

.field public gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public gameStageContext:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

.field public final giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

.field public guiCache:Lio/blueflower/stapel2d/gui/GUICache;

.field public lastAutoSaveSeconds:J

.field public lastMS:J

.field public lastTool:Linfo/flowersoft/theotown/city/components/Tool;

.field public lastTpCount:I

.field public final luaLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/LuaLibrary;",
            ">;"
        }
    .end annotation
.end field

.field public minimap:Linfo/flowersoft/theotown/ui/Minimap;

.field public moveMomentumX:F

.field public moveMomentumY:F

.field public movementPivotX:I

.field public movementPivotY:I

.field public movementTargetX:I

.field public movementTargetY:I

.field public moving:Z

.field public movingTool:Linfo/flowersoft/theotown/city/components/Tool;

.field public final postProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public primaryTouchPointIsTrusted:Z

.field public final regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

.field public saveCounter:I

.field public final saveErrorHandler:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field public saveException:Ljava/lang/Exception;

.field public saveHook:Ljava/lang/Thread;

.field public final smoothCityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

.field public soundManager:Linfo/flowersoft/theotown/city/components/SoundManager;

.field public final tempVec2:Lcom/badlogic/gdx/math/Vector2;

.field public touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

.field public touchStartAngle:I

.field public touchStartCityScale:F

.field public touchStartDistance:F

.field public touchStartRotation:I

.field public updateMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;


# direct methods
.method public static synthetic $r8$lambda$3IboEVEjiVWWz896i3lC6SLU8Ss(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1213
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    .line 1214
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->leaveStage(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BAhGHyMgfEtwhuJFFXabUfHm89s(Linfo/flowersoft/theotown/city/ScenarioInfo;)V
    .registers 3

    .line 580
    sget-object v0, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;->INSTANCE:Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;->setNewlyStarted(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HuO27UHhppDqsPiIqYrLx9qWN6U(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 2

    .line 1211
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N5rtcgrP7TMFSsHUCUfU0pSXFKQ(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->visitCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RyHOzuXsH1Ot9KESHcGwBquZL4s(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    const/4 v0, 0x0

    .line 1205
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CityStage;->leaveStage(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TNTCV6kWbcRzk91cznnB71jtkHY(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/mechanics/LastCityManager;ZLio/blueflower/stapel2d/util/Setter;)V
    .registers 7

    .line 1113
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 1113
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/mechanics/LastCityManager;->submitCity(Linfo/flowersoft/theotown/city/City;)V

    .line 1114
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 1115
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v2

    .line 1114
    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/mechanics/LastCityManager;->setLastCity(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1118
    :try_start_22
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->save()V

    .line 1119
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object p1

    iget-wide v0, p1, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->lastAutoSaveSeconds:J

    if-eqz p2, :cond_42

    .line 1121
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->removeTempBackupFile()Z

    .line 1122
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->storeTempBackupFileInTheFuture()Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    .line 1125
    invoke-interface {p3, p0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_42
    return-void
.end method

.method public static synthetic $r8$lambda$czpfUZKtDjSdlMVdrJJ5MPtWj40(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 2

    .line 1203
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUPqw1VMZELCznzEpCh-b_kwL2o(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    new-instance v0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f9kd5pTh2rZ5WOg3CVVms-FXieE(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    const/4 v0, 0x1

    .line 1204
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CityStage;->leaveStage(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gVykIAht4IoFp1AtWGLCXHlPGhE(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    .line 401
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 401
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    if-ne v0, p0, :cond_11

    .line 402
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->leave()V

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->guiCache:Lio/blueflower/stapel2d/gui/GUICache;

    .line 404
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->enter()V

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$oPi-_QPaRgNqIinHyadFo3QRYfg(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    .line 1252
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 1252
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->hasTempBackupFile()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1253
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->removeTempBackupFile()Z

    :cond_d
    return-void
.end method

.method public static synthetic $r8$lambda$qlrmTzefXJ06wLB7uIbKXy8bhEk(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1217
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 1218
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->leaveStage(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ueIj473HORGQ_mCvoClt2wmZ7RQ()V
    .registers 1

    .line 1153
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->closeApp()V

    return-void
.end method

.method public static synthetic $r8$lambda$v2rhJNw8uhlBTWb3ohRW10mnufE()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/cityfile/RegionInformation;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V
    .registers 8

    .line 197
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/4 v0, -0x1

    .line 165
    iput v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->movementPivotX:I

    .line 166
    iput v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->movementPivotY:I

    .line 167
    iput v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->movementTargetX:I

    .line 168
    iput v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->movementTargetY:I

    .line 175
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->tempVec2:Lcom/badlogic/gdx/math/Vector2;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->asyncRunnables:Ljava/util/List;

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->finalCityAction:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Linfo/flowersoft/theotown/stages/CityStage$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/CityStage$1;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveErrorHandler:Lio/blueflower/stapel2d/util/Setter;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    .line 198
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 199
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/CityStage;->commentsStage:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    .line 200
    iput-object p4, p0, Linfo/flowersoft/theotown/stages/CityStage;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    .line 201
    iput-object p5, p0, Linfo/flowersoft/theotown/stages/CityStage;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    .line 202
    iput-object p6, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityVisitor:Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;

    .line 204
    new-instance p2, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityStage;->smoothCityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    .line 206
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->postProcessors:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 2

    .line 132
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveException:Ljava/lang/Exception;

    return-object p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/CityStage;)Lio/blueflower/stapel2d/gamestack/GameStack;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-object p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/stages/CityStage;)Lcom/badlogic/gdx/math/Vector2;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->tempVec2:Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->smoothCityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    return-object p0
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/stages/CityStage;)F
    .registers 1

    .line 132
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->getZoomStep()F

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/stages/CityStage;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)V
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->close(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$1500(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->visitCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

.method public static synthetic access$1600(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityVisitor:Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;

    return-object p0
.end method

.method public static synthetic access$1700(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 1

    .line 132
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/CityStage;->close()V

    return-void
.end method

.method public static synthetic access$1800(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 1

    .line 132
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->closeApp()V

    return-void
.end method

.method public static synthetic access$1900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/ui/Minimap;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->minimap:Linfo/flowersoft/theotown/ui/Minimap;

    return-object p0
.end method

.method public static synthetic access$1902(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/ui/Minimap;)Linfo/flowersoft/theotown/ui/Minimap;
    .registers 2

    .line 132
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->minimap:Linfo/flowersoft/theotown/ui/Minimap;

    return-object p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/CityStage;)Lio/blueflower/stapel2d/util/Setter;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveErrorHandler:Lio/blueflower/stapel2d/util/Setter;

    return-object p0
.end method

.method public static synthetic access$2000(Linfo/flowersoft/theotown/stages/CityStage;)Ljava/util/List;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->postProcessors:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2100(Linfo/flowersoft/theotown/stages/CityStage;I)V
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->rotateMap(I)V

    return-void
.end method

.method public static synthetic access$2200(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/stages/AbstractCommentsStage;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->commentsStage:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    return-object p0
.end method

.method public static synthetic access$2300(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/online/CityGiftManager;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    return-object p0
.end method

.method public static synthetic access$2402(Linfo/flowersoft/theotown/stages/CityStage;Z)Z
    .registers 2

    .line 132
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->citySaved:Z

    return p1
.end method

.method public static synthetic access$2500(Linfo/flowersoft/theotown/stages/CityStage;)Ljava/util/List;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->asyncRunnables:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/CityStage;ZZLio/blueflower/stapel2d/util/Setter;)Ljava/lang/Thread;
    .registers 4

    .line 132
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/CityStage;->getSaveThread(ZZLio/blueflower/stapel2d/util/Setter;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/CityStage;ZZ)Lio/blueflower/stapel2d/gamestack/Stage;
    .registers 3

    .line 132
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/CityStage;->leaveStage(ZZ)Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 132
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->finalCityAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/stages/CityStage;Z)V
    .registers 2

    .line 132
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->leaveStage(Z)V

    return-void
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/components/DefaultDate;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 132
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method private close()V
    .registers 7

    .line 1201
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 1202
    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isSavable()Z

    move-result v2

    new-instance v3, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    new-instance v4, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    new-instance v5, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    .line 1201
    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/CityStage;->showSaveDialog(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;ZLio/blueflower/stapel2d/util/Setter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showSaveDialog(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;ZLio/blueflower/stapel2d/util/Setter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Translator;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Z",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/ui/Dialog;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1165
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->shouldSaveOnLeaveCity()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1166
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_a
    if-nez p2, :cond_10

    .line 1170
    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1174
    :cond_10
    new-instance v1, Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_SAVE_AND_CLOSE:I

    const/16 p2, 0x113

    .line 1176
    invoke-interface {p0, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 p2, 0x51c

    .line 1177
    invoke-interface {p0, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x104

    const/16 v6, 0x8c

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 1181
    const-string p1, "CANCEL"

    const/4 p2, 0x0

    invoke-virtual {v1, p2, p1}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 1182
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    const/16 v0, 0xa83

    .line 1183
    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p5

    .line 1182
    invoke-virtual {v1, p1, v0, p2, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-object v9, v1

    .line 1185
    new-instance v1, Linfo/flowersoft/theotown/stages/CityStage$7;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_SAVE:I

    const/16 p1, 0x8f5

    .line 1186
    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 1187
    invoke-virtual {v9}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    .line 1188
    invoke-virtual {v9}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v10, p4

    invoke-direct/range {v1 .. v10}, Linfo/flowersoft/theotown/stages/CityStage$7;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/Runnable;)V

    move-object v1, v9

    .line 1196
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 1197
    invoke-interface {p3, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public callOverlayMethods()V
    .registers 3

    .line 653
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    .line 654
    :try_start_3
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->callOverlayMethods()V

    .line 655
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final close(Ljava/lang/Runnable;)V
    .registers 8

    .line 1209
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 1210
    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isSavable()Z

    move-result v2

    new-instance v3, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda11;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    new-instance v4, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda12;-><init>(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)V

    new-instance v5, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda13;-><init>(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)V

    .line 1209
    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/CityStage;->showSaveDialog(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;ZLio/blueflower/stapel2d/util/Setter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final closeApp()V
    .registers 6

    .line 1145
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa22

    .line 1147
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xb76

    .line 1148
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 1150
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOSE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x626

    .line 1152
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda0;-><init>()V

    const/4 v4, 0x0

    .line 1150
    invoke-virtual {v0, v1, v2, v4, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 1154
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x53c

    .line 1156
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 1154
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    .line 1156
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 1157
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 1158
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final drawCity()V
    .registers 4

    .line 659
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 661
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->smoothCityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->draw(Linfo/flowersoft/theotown/city/City;Z)V

    const/4 v0, 0x0

    .line 663
    invoke-static {v0}, Linfo/flowersoft/theotown/util/TimeLog;->log(I)V

    .line 664
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->update()V

    .line 665
    invoke-static {v2}, Linfo/flowersoft/theotown/util/TimeLog;->log(I)V

    .line 667
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->postProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_21

    .line 669
    :cond_31
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    .line 670
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->lastTool:Linfo/flowersoft/theotown/city/components/Tool;

    if-eq v0, v1, :cond_46

    .line 671
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->lastTool:Linfo/flowersoft/theotown/city/components/Tool;

    .line 672
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->minimap:Linfo/flowersoft/theotown/ui/Minimap;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Minimap;->flush()V

    :cond_46
    return-void
.end method

.method public drawGui()V
    .registers 3

    .line 678
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    .line 679
    :try_start_3
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawGui()V

    .line 680
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public drop()V
    .registers 2

    .line 1132
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    .line 1133
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->smoothCityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->dispose()V

    .line 1135
    invoke-static {}, Lio/blueflower/stapel2d/gui/GUICache;->invalidateAllCaches()V

    .line 1137
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->postProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1138
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->unloadScripts()V

    .line 1140
    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/PluginUnloader;->reset()V

    .line 1141
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->showAll()V

    return-void
.end method

.method public enter()V
    .registers 15

    .line 437
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 439
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 440
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/CityGiftManager;->fetch(Z)V

    .line 443
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->gameStageContext:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    if-eqz v0, :cond_15

    .line 444
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iput-wide v2, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->lastEnterMS:J

    .line 447
    :cond_15
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 448
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v2

    iget-boolean v2, v2, Linfo/flowersoft/theotown/city/CityInfo;->winter:Z

    if-nez v2, :cond_2b

    sget v2, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/WinterManager;->shouldItBeWinter(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_2b
    const/4 v1, 0x1

    .line 447
    :cond_2c
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    .line 450
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveHook:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 451
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveHook:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gamestack/GameStack;->removeLeaveAppHook(Ljava/lang/Thread;)Z

    .line 452
    iput-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveHook:Ljava/lang/Thread;

    .line 455
    :cond_3f
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 456
    new-instance v2, Lio/blueflower/stapel2d/util/ScreenRect;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Lio/blueflower/stapel2d/util/ScreenRect;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->setView(Lio/blueflower/stapel2d/util/ScreenRect;)V

    .line 458
    new-instance v6, Linfo/flowersoft/theotown/stages/CityStage$4;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    neg-int v9, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    neg-int v10, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 459
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v11

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v12

    iget-object v13, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v8, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Linfo/flowersoft/theotown/stages/CityStage$4;-><init>(Linfo/flowersoft/theotown/stages/CityStage;IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v6, v7, Linfo/flowersoft/theotown/stages/CityStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    .line 515
    iget-object v0, v7, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->setMaster(Lio/blueflower/stapel2d/gui/Master;)V

    .line 516
    iget-object v0, v7, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    sput-object v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 517
    new-instance v0, Linfo/flowersoft/theotown/stages/CityStage$5;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/CityStage$5;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->stageSetter:Lio/blueflower/stapel2d/util/Setter;

    .line 526
    iget-object v0, v7, Linfo/flowersoft/theotown/stages/CityStage;->guiCache:Lio/blueflower/stapel2d/gui/GUICache;

    if-eqz v0, :cond_b2

    iget-object v2, v7, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/GUICache;->canApply(Lio/blueflower/stapel2d/gui/Master;)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, v7, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isDirtyUIAndReset()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 527
    iget-object v0, v7, Linfo/flowersoft/theotown/stages/CityStage;->guiCache:Lio/blueflower/stapel2d/gui/GUICache;

    iget-object v2, v7, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/GUICache;->apply(Lio/blueflower/stapel2d/gui/Master;)V

    .line 528
    iput-object v1, v7, Linfo/flowersoft/theotown/stages/CityStage;->guiCache:Lio/blueflower/stapel2d/gui/GUICache;

    goto/16 :goto_146

    .line 530
    :cond_b2
    iget-object v0, v7, Linfo/flowersoft/theotown/stages/CityStage;->guiCache:Lio/blueflower/stapel2d/gui/GUICache;

    if-eqz v0, :cond_bb

    .line 531
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/GUICache;->free()V

    .line 532
    iput-object v1, v7, Linfo/flowersoft/theotown/stages/CityStage;->guiCache:Lio/blueflower/stapel2d/gui/GUICache;

    .line 535
    :cond_bb
    const-string v0, "Build builders"

    invoke-static {v0}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    .line 536
    new-instance v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    .line 537
    new-instance v2, Lio/blueflower/stapel2d/util/BuilderGroup;

    invoke-direct {v2, v1}, Lio/blueflower/stapel2d/util/BuilderGroup;-><init>(Ljava/lang/Object;)V

    .line 538
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 539
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/SideBarBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 540
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/StatusBarBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 541
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 542
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NotificationBarBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 543
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 544
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/OverlayBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 545
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/ActionButtonsBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 546
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 547
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 548
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/NewPluginsHintBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 549
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 550
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DebugLayerBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/BuilderGroup;->addBuilder(Lio/blueflower/stapel2d/util/Builder;)V

    .line 551
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/BuilderGroup;->build()V

    .line 552
    iput-object v1, v7, Linfo/flowersoft/theotown/stages/CityStage;->gameStageContext:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    .line 553
    invoke-static {v0}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->maybeShowScenarioWelcomeDialog()V

    .line 557
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "buildCityGUI"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 564
    :goto_146
    iget-object v0, v7, Linfo/flowersoft/theotown/stages/CityStage;->soundManager:Linfo/flowersoft/theotown/city/components/SoundManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/SoundManager;->resume()V

    .line 565
    iget-object v0, v7, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Notificator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notificator;->poll()V

    .line 566
    iget-object v0, v7, Linfo/flowersoft/theotown/stages/CityStage;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->flushTime()V

    return-void
.end method

.method public getCity()Linfo/flowersoft/theotown/city/City;
    .registers 2

    .line 394
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    return-object v0
.end method

.method public final getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;
    .registers 2

    .line 1293
    new-instance v0, Linfo/flowersoft/theotown/stages/CityStage$8;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/CityStage$8;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    return-object v0
.end method

.method public final getSaveThread(ZZLio/blueflower/stapel2d/util/Setter;)Ljava/lang/Thread;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Exception;",
            ">;)",
            "Ljava/lang/Thread;"
        }
    .end annotation

    if-nez p2, :cond_a

    .line 1104
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isOnline()Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_a
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-static {p2}, Linfo/flowersoft/theotown/city/PreviewCreator;->generateMiniPreview(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 1105
    :cond_f
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->save()V

    .line 1107
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p2

    .line 1108
    const-string v0, "save"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 1110
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getLastCityManager()Linfo/flowersoft/theotown/mechanics/LastCityManager;

    move-result-object p2

    .line 1112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1, p3}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/mechanics/LastCityManager;ZLio/blueflower/stapel2d/util/Setter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final getZoomStep()F
    .registers 2

    .line 586
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    if-lez v0, :cond_7

    .line 587
    sget v0, Linfo/flowersoft/theotown/resources/Constants;->SMOOTH_ZOOM_STEP:F

    return v0

    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public final handleKeyInput()V
    .registers 9

    .line 684
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_10c

    .line 687
    :cond_8
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_ZOOM_IN:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CITY_ZOOM_IN_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    move v0, v1

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v0, v2

    .line 690
    :goto_1e
    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->CITY_ZOOM_OUT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-nez v3, :cond_2e

    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->CITY_ZOOM_OUT_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    .line 693
    :cond_30
    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_CONSOLE:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 694
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/ConsoleStage;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v2}, Linfo/flowersoft/theotown/stages/ConsoleStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/region/Region;Z)V

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 696
    :cond_49
    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SAVE:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 697
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->proceedSave()V

    .line 699
    :cond_54
    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->OPEN_EYEDROPPER_TOOL:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 700
    new-instance v3, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;->select()V

    .line 703
    :cond_6e
    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->experimentalFeatures:Z

    if-eqz v3, :cond_b3

    .line 705
    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->TOGGLE_NIGHT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 706
    sget v3, Linfo/flowersoft/theotown/resources/Settings;->nightMode:I

    if-nez v3, :cond_7f

    move v1, v2

    :cond_7f
    sput v1, Linfo/flowersoft/theotown/resources/Settings;->nightMode:I

    .line 708
    :cond_81
    sget-object v1, Linfo/flowersoft/theotown/input/KeyAction;->TOGGLE_WINTER:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 709
    sget v1, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    if-ne v1, v2, :cond_8f

    const/4 v1, 0x2

    goto :goto_90

    :cond_8f
    move v1, v2

    .line 710
    :goto_90
    sput v1, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    .line 711
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v1

    sget v3, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    invoke-static {v3}, Linfo/flowersoft/theotown/resources/WinterManager;->shouldItBeWinter(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    .line 713
    :cond_9f
    sget-object v1, Linfo/flowersoft/theotown/input/KeyAction;->TOGGLE_DEBUG:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 714
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->gameStageContext:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->debugLayer:Linfo/flowersoft/theotown/ui/DebugLayer;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    :cond_b3
    if-eqz v0, :cond_10c

    .line 719
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getScale()F

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

    .line 720
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMinScale()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMaxScale()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 721
    :goto_e5
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    add-float/2addr v1, v2

    cmpl-float v1, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v1, :cond_fb

    .line 722
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/city/City;->zoomIn(F)V

    goto :goto_e5

    .line 724
    :cond_fb
    :goto_fb
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v1

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_10c

    .line 725
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/city/City;->zoomOut(F)V

    goto :goto_fb

    :cond_10c
    :goto_10c
    return-void
.end method

.method public final handleTouchInput()V
    .registers 32

    move-object/from16 v0, p0

    .line 732
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->getTouchPoints()Ljava/util/List;

    move-result-object v1

    .line 733
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    .line 734
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v4

    .line 735
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v5

    .line 736
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getDeltaTime()F

    move-result v6

    const/4 v7, -0x1

    .line 737
    iput v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->movementPivotY:I

    iput v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->movementPivotX:I

    .line 738
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Linfo/flowersoft/theotown/city/components/Tool;

    .line 741
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v11, 0x0

    if-eqz v8, :cond_37

    iput-boolean v11, v0, Linfo/flowersoft/theotown/stages/CityStage;->primaryTouchPointIsTrusted:Z

    .line 743
    :cond_37
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const v17, 0x3c23d70a    # 0.01f

    const/high16 v18, -0x40800000    # -1.0f

    const/4 v15, 0x1

    if-ne v8, v15, :cond_29c

    .line 744
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 745
    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v8

    mul-float/2addr v8, v4

    .line 746
    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v16

    mul-float v11, v16, v5

    .line 747
    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v16

    mul-float v9, v16, v4

    .line 748
    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v16

    mul-float v13, v16, v5

    sub-float v28, v9, v8

    mul-float v16, v28, v28

    sub-float v29, v13, v11

    mul-float v20, v29, v29

    add-float v12, v16, v20

    float-to-double v14, v12

    move-wide/from16 v22, v2

    .line 749
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 750
    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v3

    mul-float/2addr v3, v4

    .line 751
    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v4

    mul-float/2addr v4, v5

    .line 755
    iget-boolean v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->primaryTouchPointIsTrusted:Z

    if-nez v5, :cond_8f

    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->getTimestamp()J

    move-result-wide v24

    sub-long v24, v22, v24

    const-wide/16 v26, 0xc8

    cmp-long v5, v24, v26

    if-gez v5, :cond_8d

    goto :goto_8f

    :cond_8d
    :goto_8d
    const/4 v5, 0x1

    goto :goto_9a

    .line 756
    :cond_8f
    :goto_8f
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    cmpl-double v5, v14, v24

    if-ltz v5, :cond_9d

    goto :goto_8d

    .line 757
    :goto_9a
    iput-boolean v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->primaryTouchPointIsTrusted:Z

    goto :goto_9e

    :cond_9d
    const/4 v5, 0x1

    .line 760
    :goto_9e
    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->isPrimary()Z

    move-result v12

    if-eqz v12, :cond_298

    .line 761
    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->isMouse()Z

    move-result v12

    if-nez v12, :cond_af

    .line 762
    iget-object v12, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->onCancelMouse()V

    .line 773
    :cond_af
    iget-boolean v12, v0, Linfo/flowersoft/theotown/stages/CityStage;->moving:Z

    if-nez v12, :cond_cd

    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->getTimestamp()J

    move-result-wide v14

    sub-long v14, v22, v14

    const-wide/16 v22, 0x12c

    cmp-long v12, v14, v22

    if-gtz v12, :cond_cb

    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->isMouse()Z

    move-result v12

    if-nez v12, :cond_cb

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/components/Tool;->moveImmediate()Z

    move-result v12

    if-eqz v12, :cond_cd

    :cond_cb
    const/4 v12, 0x0

    goto :goto_d9

    :cond_cd
    move/from16 v22, v3

    move/from16 v23, v4

    move v2, v5

    move v12, v8

    move/from16 v30, v11

    move v8, v13

    move-object v11, v10

    goto/16 :goto_175

    .line 774
    :goto_d9
    iput-object v12, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    .line 775
    sget-object v14, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v15, "moving"

    const-string v5, "stage"

    invoke-interface {v14, v5, v15}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v14, 0x41700000    # 15.0f

    cmpg-float v2, v2, v14

    if-ltz v2, :cond_101

    .line 776
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/components/Tool;->moveImmediate()Z

    move-result v2

    if-eqz v2, :cond_f1

    goto :goto_101

    :cond_f1
    move/from16 v22, v3

    move/from16 v23, v4

    move v12, v8

    move/from16 v30, v11

    move v8, v13

    const/4 v2, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    goto/16 :goto_172

    .line 777
    :cond_101
    :goto_101
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v14, "dist"

    invoke-interface {v2, v5, v14}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    float-to-int v14, v8

    float-to-int v15, v11

    invoke-virtual {v2, v14, v15}, Linfo/flowersoft/theotown/city/City;->resolveScreenToTile(II)Linfo/flowersoft/theotown/city/City$ScreenToTileData;

    move-result-object v2

    .line 781
    iget v14, v2, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->x:I

    .line 782
    iget v15, v2, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->y:I

    .line 783
    iget v12, v2, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fx:F

    .line 784
    iget v2, v2, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fy:F

    move/from16 v22, v3

    .line 785
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v14, v15}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v3

    move/from16 v23, v4

    .line 786
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v14, v15}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v14

    .line 787
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v12, v2}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(FF)F

    move-result v15

    .line 788
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v12, v2}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(FF)F

    move-result v2

    .line 790
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v3, v14}, Linfo/flowersoft/theotown/city/City;->isClickable(II)Z

    move-result v4

    if-eqz v4, :cond_16a

    move/from16 v16, v2

    move v12, v11

    const/4 v2, 0x1

    const/4 v4, 0x0

    move v11, v8

    move v8, v13

    move v13, v3

    const/4 v3, 0x0

    .line 791
    invoke-virtual/range {v10 .. v16}, Linfo/flowersoft/theotown/city/components/Tool;->canBeginMove(FFIIFF)Z

    move-result v19

    move/from16 v30, v12

    move v12, v11

    move-object v11, v10

    move/from16 v10, v16

    if-eqz v19, :cond_172

    .line 792
    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->isMouse()Z

    move-result v16

    if-eqz v16, :cond_15d

    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->getButton()I

    move-result v3

    if-eq v3, v2, :cond_172

    .line 793
    :cond_15d
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "click"

    invoke-interface {v3, v5, v4}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iput-object v11, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    .line 795
    invoke-virtual {v11, v13, v14, v15, v10}, Linfo/flowersoft/theotown/city/components/Tool;->beginMove(IIFF)V

    goto :goto_172

    :cond_16a
    move v12, v8

    move/from16 v30, v11

    move v8, v13

    move v13, v3

    move-object v11, v10

    move v10, v2

    const/4 v2, 0x1

    .line 798
    :cond_172
    :goto_172
    iput-boolean v2, v0, Linfo/flowersoft/theotown/stages/CityStage;->moving:Z

    goto :goto_179

    :goto_175
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 801
    :goto_179
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    if-eq v3, v11, :cond_185

    if-eqz v3, :cond_185

    .line 802
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/Tool;->cancelMove()V

    const/4 v4, 0x0

    .line 803
    iput-object v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    .line 806
    :cond_185
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    if-eqz v3, :cond_1b1

    .line 807
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    float-to-int v4, v9

    float-to-int v5, v8

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/City;->resolveScreenToTile(II)Linfo/flowersoft/theotown/city/City$ScreenToTileData;

    move-result-object v3

    .line 808
    iget v4, v3, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->x:I

    .line 809
    iget v5, v3, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->y:I

    .line 810
    iget v10, v3, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fx:F

    .line 811
    iget v3, v3, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fy:F

    .line 812
    iget-object v13, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v13, v4, v5}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v13

    .line 813
    iget-object v14, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14, v4, v5}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v14

    .line 814
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v10, v3}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(FF)F

    move-result v15

    .line 815
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v10, v3}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(FF)F

    move-result v10

    :cond_1b1
    move/from16 v27, v10

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    .line 818
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    if-eqz v3, :cond_23d

    move-object/from16 v19, v3

    move/from16 v21, v8

    move/from16 v20, v9

    .line 819
    invoke-virtual/range {v19 .. v27}, Linfo/flowersoft/theotown/city/components/Tool;->updateMove(FFFFIIFF)Z

    move-result v3

    move/from16 v4, v20

    if-nez v3, :cond_1d0

    iget-boolean v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->primaryTouchPointIsTrusted:Z

    if-eqz v3, :cond_1d0

    goto :goto_23e

    .line 849
    :cond_1d0
    iget-boolean v2, v0, Linfo/flowersoft/theotown/stages/CityStage;->primaryTouchPointIsTrusted:Z

    if-eqz v2, :cond_299

    const/4 v3, 0x0

    .line 850
    iput v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    iput v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    .line 851
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v2

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    int-to-float v3, v2

    cmpg-float v5, v4, v3

    const/high16 v7, 0x41200000    # 10.0f

    if-gez v5, :cond_1f9

    sub-float v5, v3, v4

    mul-float/2addr v5, v7

    div-float/2addr v5, v3

    div-float/2addr v5, v6

    .line 853
    iput v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    :cond_1f9
    cmpg-float v5, v8, v3

    if-gez v5, :cond_204

    sub-float v5, v3, v8

    mul-float/2addr v5, v7

    div-float/2addr v5, v3

    div-float/2addr v5, v6

    .line 854
    iput v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    .line 855
    :cond_204
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    const/high16 v7, -0x3ee00000    # -10.0f

    if-ltz v5, :cond_221

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v9, v4, v5

    add-float/2addr v9, v3

    mul-float/2addr v9, v7

    div-float/2addr v9, v3

    div-float/2addr v9, v6

    iput v9, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    .line 856
    :cond_221
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v2, v4

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_299

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v13, v8, v2

    add-float/2addr v13, v3

    mul-float/2addr v7, v13

    div-float/2addr v7, v3

    div-float/2addr v7, v6

    iput v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    goto :goto_299

    :cond_23d
    move v4, v9

    .line 821
    :goto_23e
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    if-eqz v3, :cond_248

    .line 822
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/Tool;->cancelMove()V

    const/4 v3, 0x0

    .line 823
    iput-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    .line 825
    :cond_248
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/components/Tool;->reversedMovement()Z

    move-result v3

    if-eqz v3, :cond_253

    mul-float v3, v22, v18

    mul-float v5, v23, v18

    goto :goto_257

    :cond_253
    move/from16 v3, v22

    move/from16 v5, v23

    .line 829
    :goto_257
    invoke-virtual {v7}, Lio/blueflower/stapel2d/touch/TouchPoint;->getButton()I

    move-result v7

    if-ne v7, v2, :cond_28f

    const/high16 v3, -0x3e800000    # -16.0f

    mul-float v28, v28, v3

    mul-float v29, v29, v3

    mul-float v3, v28, v28

    mul-float v5, v29, v29

    add-float/2addr v3, v5

    float-to-double v9, v3

    .line 832
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v3, v9

    const/high16 v5, 0x447a0000    # 1000.0f

    cmpl-float v7, v3, v5

    if-lez v7, :cond_27c

    mul-float v28, v28, v5

    div-float v28, v28, v3

    mul-float v29, v29, v5

    div-float v29, v29, v3

    :cond_27c
    mul-float v3, v28, v6

    mul-float v5, v29, v6

    float-to-int v7, v12

    .line 841
    iput v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->movementPivotX:I

    move/from16 v12, v30

    float-to-int v7, v12

    .line 842
    iput v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->movementPivotY:I

    float-to-int v4, v4

    .line 843
    iput v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->movementTargetX:I

    float-to-int v4, v8

    .line 844
    iput v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->movementTargetY:I

    goto :goto_290

    :cond_28f
    const/4 v2, 0x0

    :goto_290
    div-float/2addr v3, v6

    .line 847
    iput v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    div-float/2addr v5, v6

    .line 848
    iput v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    goto/16 :goto_47e

    :cond_298
    move-object v11, v10

    :cond_299
    :goto_299
    const/4 v2, 0x0

    goto/16 :goto_47e

    :cond_29c
    move-object v11, v10

    move v2, v15

    const/4 v3, 0x0

    .line 859
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_435

    .line 860
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->onCancelMouse()V

    const/4 v8, 0x0

    .line 861
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 862
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 864
    invoke-virtual {v9}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v10

    invoke-virtual {v8}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v12

    add-float/2addr v10, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v10, v12

    mul-float/2addr v10, v4

    .line 865
    invoke-virtual {v9}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v13

    invoke-virtual {v8}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v14

    add-float/2addr v13, v14

    mul-float/2addr v13, v12

    mul-float/2addr v13, v5

    .line 866
    invoke-virtual {v8}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v12

    invoke-virtual {v9}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v14

    sub-float/2addr v12, v14

    mul-float/2addr v12, v4

    .line 867
    invoke-virtual {v8}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v14

    invoke-virtual {v9}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v15

    sub-float/2addr v14, v15

    mul-float/2addr v14, v5

    mul-float v15, v12, v12

    mul-float v19, v14, v14

    add-float v15, v15, v19

    move-object/from16 v20, v8

    float-to-double v7, v15

    .line 868
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 870
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/components/Tool;->reversedMovement()Z

    move-result v8

    if-eqz v8, :cond_2fc

    mul-float v10, v10, v18

    mul-float v13, v13, v18

    :cond_2fc
    div-float/2addr v10, v6

    .line 875
    iput v10, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    div-float/2addr v13, v6

    .line 876
    iput v13, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    .line 878
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    if-eqz v8, :cond_30b

    .line 879
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/components/Tool;->cancelMove()V

    .line 880
    iput-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    .line 882
    :cond_30b
    iget-boolean v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->moving:Z

    if-nez v3, :cond_311

    .line 883
    iput-boolean v2, v0, Linfo/flowersoft/theotown/stages/CityStage;->moving:Z

    :cond_311
    float-to-double v12, v12

    float-to-double v14, v14

    .line 886
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    double-to-int v3, v12

    .line 887
    iget v8, v0, Linfo/flowersoft/theotown/stages/CityStage;->lastTpCount:I

    const/4 v10, 0x2

    if-ge v8, v10, :cond_337

    .line 888
    iput v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartAngle:I

    .line 889
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v2

    iput v2, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartRotation:I

    .line 890
    iput v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartDistance:F

    .line 891
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v2

    iput v2, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartCityScale:F

    goto/16 :goto_433

    .line 893
    :cond_337
    iget v8, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartAngle:I

    sub-int/2addr v3, v8

    add-int/lit16 v8, v3, 0x168

    .line 894
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ge v10, v12, :cond_347

    move v3, v8

    :cond_347
    const/16 v8, 0x5a

    if-le v3, v8, :cond_350

    const/16 v8, 0x10e

    if-ge v3, v8, :cond_350

    goto :goto_35b

    :cond_350
    const/16 v2, -0x5a

    if-ge v3, v2, :cond_35a

    const/16 v2, -0x10e

    if-le v3, v2, :cond_35a

    const/4 v2, -0x1

    goto :goto_35b

    :cond_35a
    const/4 v2, 0x0

    .line 905
    :goto_35b
    iget v8, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartDistance:F

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v10, 0x42c80000    # 100.0f

    cmpl-float v8, v8, v10

    if-ltz v8, :cond_373

    sget-boolean v8, Linfo/flowersoft/theotown/resources/Settings;->touchRotate:Z

    if-eqz v8, :cond_373

    .line 906
    iget v8, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartRotation:I

    add-int/lit8 v8, v8, 0x4

    sub-int/2addr v8, v2

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/stages/CityStage;->rotateMap(I)V

    .line 909
    :cond_373
    iget v2, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartDistance:F

    cmpl-float v2, v7, v2

    if-eqz v2, :cond_433

    const/16 v2, -0x2d

    if-le v3, v2, :cond_433

    const/16 v2, 0x2d

    if-ge v3, v2, :cond_433

    .line 910
    invoke-virtual {v9}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v2

    invoke-virtual/range {v20 .. v20}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 911
    invoke-virtual {v9}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v4

    invoke-virtual/range {v20 .. v20}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v8

    add-float/2addr v4, v8

    div-float/2addr v4, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 913
    sget v5, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    if-lez v5, :cond_3d9

    .line 914
    iget v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartCityScale:F

    mul-float/2addr v3, v7

    iget v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartDistance:F

    div-float/2addr v3, v5

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMinScale()F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMaxScale()F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 915
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v5

    div-float/2addr v3, v5

    const v5, 0x3f8020c5    # 1.001f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3c9

    .line 917
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3, v2, v4}, Linfo/flowersoft/theotown/city/City;->zoomIn(FII)V

    goto :goto_433

    :cond_3c9
    const v5, 0x3f7fbe77    # 0.999f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_433

    .line 919
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v3

    invoke-virtual {v5, v7, v2, v4}, Linfo/flowersoft/theotown/city/City;->zoomOut(FII)V

    goto :goto_433

    .line 922
    :cond_3d9
    iget v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartCityScale:F

    float-to-double v8, v5

    iget v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->touchStartDistance:F

    div-float/2addr v7, v5

    float-to-double v12, v7

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    div-double/2addr v7, v12

    double-to-float v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-double v7, v5

    .line 923
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMinScale()F

    move-result v5

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMaxScale()F

    move-result v5

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-float v5, v7

    .line 924
    :goto_40f
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v7

    add-float v7, v7, v17

    cmpl-float v7, v5, v7

    if-lez v7, :cond_421

    .line 925
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v3, v2, v4}, Linfo/flowersoft/theotown/city/City;->zoomIn(FII)V

    goto :goto_40f

    .line 927
    :cond_421
    :goto_421
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v7

    sub-float v7, v7, v17

    cmpg-float v7, v5, v7

    if-gez v7, :cond_433

    .line 928
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v3, v2, v4}, Linfo/flowersoft/theotown/city/City;->zoomOut(FII)V

    goto :goto_421

    :cond_433
    :goto_433
    const/4 v8, 0x0

    goto :goto_47d

    .line 934
    :cond_435
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    if-eqz v2, :cond_43e

    .line 935
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/Tool;->endMove()V

    .line 936
    iput-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->movingTool:Linfo/flowersoft/theotown/city/components/Tool;

    :cond_43e
    const/4 v8, 0x0

    .line 938
    iput-boolean v8, v0, Linfo/flowersoft/theotown/stages/CityStage;->moving:Z

    .line 939
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchMapper;->isMouse()Z

    move-result v2

    if-eqz v2, :cond_433

    .line 940
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/CityStage;->smoothCityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->tempVec2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 941
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v8

    invoke-virtual {v8}, Lio/blueflower/stapel2d/touch/TouchMapper;->getMouseX()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 942
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchMapper;->getMouseY()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    .line 940
    invoke-virtual {v7, v8, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->transformFromScreen(Linfo/flowersoft/theotown/city/City;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 943
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v2, v8}, Linfo/flowersoft/theotown/city/City;->onMouseMove(FFZ)V

    :goto_47d
    move v2, v8

    .line 948
    :goto_47e
    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_UP:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    const/high16 v4, -0x3c380000    # -400.0f

    const/high16 v5, 0x43c80000    # 400.0f

    if-nez v3, :cond_4a6

    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_UP_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-eqz v3, :cond_493

    goto :goto_4a6

    .line 950
    :cond_493
    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_DOWN:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-nez v3, :cond_4a3

    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_DOWN_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-eqz v3, :cond_4a8

    .line 951
    :cond_4a3
    iput v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    goto :goto_4a8

    .line 949
    :cond_4a6
    :goto_4a6
    iput v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    .line 953
    :cond_4a8
    :goto_4a8
    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_LEFT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-nez v3, :cond_4cc

    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_LEFT_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-eqz v3, :cond_4b9

    goto :goto_4cc

    .line 955
    :cond_4b9
    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_RIGHT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-nez v3, :cond_4c9

    sget-object v3, Linfo/flowersoft/theotown/input/KeyAction;->CITY_SCROLL_RIGHT_ALT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/stages/BaseStage;->keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v3

    if-eqz v3, :cond_4ce

    .line 956
    :cond_4c9
    iput v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    goto :goto_4ce

    .line 954
    :cond_4cc
    :goto_4cc
    iput v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    .line 959
    :cond_4ce
    :goto_4ce
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v3}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_51b

    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->scrollEdges:Z

    if-eqz v3, :cond_51b

    .line 961
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchMapper;->getActivePoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_51b

    .line 962
    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v3

    .line 963
    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v4

    const/high16 v5, -0x3bea0000    # -600.0f

    const/high16 v7, 0x44160000    # 600.0f

    const/4 v9, 0x2

    if-ge v3, v9, :cond_500

    .line 966
    iput v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    goto :goto_50b

    .line 967
    :cond_500
    sget-object v8, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v8}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v8

    sub-int/2addr v8, v9

    if-lt v3, v8, :cond_50b

    .line 968
    iput v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    :cond_50b
    :goto_50b
    if-ge v4, v9, :cond_510

    .line 971
    iput v7, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    goto :goto_51b

    .line 972
    :cond_510
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    sub-int/2addr v3, v9

    if-lt v4, v3, :cond_51b

    .line 973
    iput v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    .line 978
    :cond_51b
    :goto_51b
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/components/Tool;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/Tool;->allowMapMovement()Z

    move-result v3

    if-nez v3, :cond_530

    const/4 v3, 0x0

    .line 979
    iput v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    .line 980
    iput v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    .line 983
    :cond_530
    iget v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpl-float v3, v3, v17

    if-lez v3, :cond_564

    .line 984
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    iget v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    mul-float/2addr v4, v6

    iget v5, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/City;->move(FF)V

    const-wide v3, 0x3f50624de0000000L    # 0.0010000000474974513

    float-to-double v5, v6

    .line 985
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 986
    iget v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    mul-float/2addr v4, v3

    iput v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    .line 987
    iget v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    mul-float/2addr v4, v3

    iput v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    .line 989
    :cond_564
    iget v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_57f

    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->smoothScrolling:Z

    if-nez v3, :cond_584

    :cond_57f
    const/4 v3, 0x0

    .line 990
    iput v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumY:F

    iput v3, v0, Linfo/flowersoft/theotown/stages/CityStage;->moveMomentumX:F

    .line 993
    :cond_584
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/stages/CityStage;->lastTpCount:I

    .line 995
    sget-object v1, Linfo/flowersoft/theotown/ui/CursorManager;->INSTANCE:Linfo/flowersoft/theotown/ui/CursorManager;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/CursorManager;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_5a1

    if-eqz v2, :cond_59a

    .line 997
    sget-object v1, Linfo/flowersoft/theotown/ui/CursorType;->Move:Linfo/flowersoft/theotown/ui/CursorType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->setPreferredCursor(Linfo/flowersoft/theotown/ui/CursorType;)V

    return-void

    .line 999
    :cond_59a
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/components/Tool;->getCursorType()Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->setPreferredCursor(Linfo/flowersoft/theotown/ui/CursorType;)V

    :cond_5a1
    return-void
.end method

.method public leave()V
    .registers 3

    .line 1078
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->soundManager:Linfo/flowersoft/theotown/city/components/SoundManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/SoundManager;->pause()V

    .line 1079
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->smoothCityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->dispose()V

    .line 1081
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 1082
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    .line 1083
    new-instance v0, Lio/blueflower/stapel2d/gui/GUICache;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/gui/GUICache;-><init>(Lio/blueflower/stapel2d/gui/Master;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->guiCache:Lio/blueflower/stapel2d/gui/GUICache;

    .line 1084
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    .line 1086
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->citySaved:Z

    if-nez v0, :cond_49

    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->shouldSaveOnAppSwitch()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isSavable()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 1087
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->isRequestRestart()Z

    move-result v0

    if-nez v0, :cond_49

    const/4 v0, 0x1

    .line 1088
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->citySaved:Z

    .line 1089
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveErrorHandler:Lio/blueflower/stapel2d/util/Setter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Linfo/flowersoft/theotown/stages/CityStage;->getSaveThread(ZZLio/blueflower/stapel2d/util/Setter;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_49
    const/4 v0, 0x0

    .line 1092
    invoke-static {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->setMaster(Lio/blueflower/stapel2d/gui/Master;)V

    .line 1093
    sput-object v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->stageSetter:Lio/blueflower/stapel2d/util/Setter;

    .line 1095
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    .line 1096
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->save()V

    return-void
.end method

.method public final leaveStage(ZZ)Lio/blueflower/stapel2d/gamestack/Stage;
    .registers 7

    const/4 v0, 0x1

    .line 1246
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->citySaved:Z

    if-eqz p2, :cond_c

    .line 1248
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    :cond_c
    if-eqz p1, :cond_40

    .line 1250
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isSavable()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 1251
    new-instance p1, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda9;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    .line 1256
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    const-string v2, "save"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 1257
    new-instance v1, Linfo/flowersoft/theotown/stages/SaveWaitingStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveErrorHandler:Lio/blueflower/stapel2d/util/Setter;

    .line 1258
    invoke-virtual {p0, v0, v0, v3}, Linfo/flowersoft/theotown/stages/CityStage;->getSaveThread(ZZLio/blueflower/stapel2d/util/Setter;)Ljava/lang/Thread;

    move-result-object v0

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-direct {v1, v2, v0, p1, v3}, Linfo/flowersoft/theotown/stages/SaveWaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 1260
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/stages/WaitingStage;->setAborted(Ljava/lang/Runnable;)Linfo/flowersoft/theotown/stages/WaitingStage;

    if-eqz p2, :cond_3f

    .line 1261
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_3f
    return-object v1

    .line 1264
    :cond_40
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->hasTempBackupFile()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 1265
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->restoreTempBackupFile()Z

    .line 1267
    :cond_4d
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->dispose()V

    .line 1268
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setCity(Linfo/flowersoft/theotown/city/City;)V

    return-object p2
.end method

.method public final leaveStage(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 1242
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/CityStage;->leaveStage(ZZ)Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public final loadScripts()V
    .registers 10

    .line 398
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 400
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v4, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    new-instance v5, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/CityStage;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/cityfile/RegionInformation;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/NeighborCityLibrary;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v2, v3, v4}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 413
    :goto_5f
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_75

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/LuaLibrary;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 414
    :cond_75
    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->setCityName(Ljava/lang/String;)V

    .line 415
    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CityStage;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->enterCity(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    .line 417
    const-string v1, "enterCity"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 418
    const-string v1, "update"

    const-class v2, Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->updateMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    return-void
.end method

.method public final maybeShowScenarioWelcomeDialog()V
    .registers 6

    .line 570
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_28

    .line 573
    :cond_9
    sget-object v1, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;->INSTANCE:Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ScenarioIsNewlyStarted;->isNewlyStarted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 575
    sget-object v1, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;->Companion:Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    new-instance v4, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/city/ScenarioInfo;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;->forInfo(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/ScenarioInfo;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 581
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    :cond_28
    :goto_28
    return-void
.end method

.method public onBack()V
    .registers 11

    .line 1051
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1052
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onBack()V

    return-void

    .line 1054
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 1055
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "roottoolbar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1056
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    return-void

    .line 1057
    :cond_2d
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    if-eq v0, v1, :cond_43

    .line 1058
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->closeOrCancelTool()V

    return-void

    .line 1060
    :cond_43
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_65

    .line 1061
    sput-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    .line 1062
    new-instance v3, Linfo/flowersoft/theotown/ui/GameMenuBuilder;

    invoke-direct {v3}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/CityStage;->gameStageContext:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v9, Linfo/flowersoft/theotown/stages/CityStage$6;

    invoke-direct {v9, p0}, Linfo/flowersoft/theotown/stages/CityStage$6;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Linfo/flowersoft/theotown/ui/GameMenuBuilder;->build(Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Linfo/flowersoft/theotown/region/Region;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    return-void

    .line 1070
    :cond_65
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/CityStage;->close()V

    return-void
.end method

.method public onUpdate()V
    .registers 12

    .line 595
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->asyncRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 596
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->asyncRunnables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 599
    :cond_14
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->updateInCity()V

    .line 601
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->isActive()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 602
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v0

    sget-object v2, Linfo/flowersoft/theotown/resources/MusicBox$Type;->ACTION:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/resources/MusicBox;->selectType(Linfo/flowersoft/theotown/resources/MusicBox$Type;)V

    goto :goto_41

    .line 604
    :cond_38
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v0

    sget-object v2, Linfo/flowersoft/theotown/resources/MusicBox$Type;->GAME:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/resources/MusicBox;->selectType(Linfo/flowersoft/theotown/resources/MusicBox$Type;)V

    .line 607
    :goto_41
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->handleTouchInput()V

    .line 608
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->handleKeyInput()V

    .line 610
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->updateMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    const/4 v2, 0x0

    if-eqz v0, :cond_78

    .line 611
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v3

    .line 612
    :try_start_4f
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->drawCity()V

    .line 614
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 615
    const-class v4, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 616
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CityStage;->updateMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke()V

    .line 617
    const-class v4, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 618
    monitor-exit v3

    goto :goto_78

    :catchall_75
    move-exception v0

    monitor-exit v3
    :try_end_77
    .catchall {:try_start_4f .. :try_end_77} :catchall_75

    throw v0

    .line 621
    :cond_78
    :goto_78
    iget v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->movementPivotX:I

    if-ltz v0, :cond_c2

    .line 622
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 623
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 624
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->movementPivotX:I

    int-to-float v5, v0

    iget v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->movementPivotY:I

    int-to-float v6, v0

    const/high16 v8, 0x41000000    # 8.0f

    iget-object v9, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 625
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 626
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->movementPivotX:I

    int-to-float v5, v0

    iget v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->movementPivotY:I

    int-to-float v6, v0

    iget v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->movementTargetX:I

    int-to-float v7, v0

    iget v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->movementTargetY:I

    int-to-float v8, v0

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v10, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 627
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 630
    :cond_c2
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->updateSaveCounter()V

    .line 632
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->updateGameTime()V

    .line 636
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveException:Ljava/lang/Exception;

    if-eqz v0, :cond_106

    .line 637
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x952

    .line 638
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x17d

    .line 639
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveException:Ljava/lang/Exception;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v3, v4, v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 640
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x98f

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    const/4 v1, 0x1

    .line 641
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 642
    iput-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveException:Ljava/lang/Exception;

    .line 645
    :cond_106
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->finalCityAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_10f

    .line 646
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 647
    iput-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->finalCityAction:Ljava/lang/Runnable;

    :cond_10f
    return-void
.end method

.method public onUpdateWhileDialogIsOpen()V
    .registers 2

    .line 1045
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onUpdateWhileDialogIsOpen()V

    .line 1046
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->flushTime()V

    return-void
.end method

.method public prepare()V
    .registers 10

    .line 220
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    .line 221
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 223
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->storeTempBackupFileInTheFuture()Z

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 225
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isLeftSideTraffic()Z

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Drafts;->setLeftSideTraffic(Z)V

    .line 230
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    .line 232
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->isOnline()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7d

    .line 233
    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    move-result-object v3

    .line 234
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isAllowPlugins()Z

    move-result v0

    if-eqz v0, :cond_3f

    move v4, v2

    goto :goto_41

    :cond_3f
    const/4 v0, 0x3

    move v4, v0

    :goto_41
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 233
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/store/PluginUnloader;->apply(ILjava/util/Set;Ljava/util/Set;Lcom/badlogic/gdx/utils/IntSet;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    const-string v1, "online"

    if-eqz v0, :cond_60

    .line 240
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visit city"

    invoke-interface {v0, v1, v4, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 242
    :cond_60
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "enter own city"

    invoke-interface {v0, v1, v4, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_6d
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 246
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v1, "online_city_visit"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    goto :goto_8f

    :cond_7d
    if-eqz v0, :cond_83

    .line 249
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibraryKt;->applyToDrafts(Linfo/flowersoft/theotown/city/ScenarioInfo;)V

    goto :goto_8f

    .line 251
    :cond_83
    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/store/PluginUnloader;->apply(ILjava/util/Set;Ljava/util/Set;Lcom/badlogic/gdx/utils/IntSet;Ljava/lang/String;)V

    .line 256
    :cond_8f
    :goto_8f
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->assignHandlers()V

    .line 258
    new-instance v0, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/Drafts;->BUILDING_PEOPLE_COUNTER:Linfo/flowersoft/theotown/resources/BuildingPeopleCounter;

    .line 260
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 261
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 262
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c1

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v1

    if-nez v1, :cond_bf

    goto :goto_c1

    :cond_bf
    const/4 v1, 0x0

    goto :goto_c7

    .line 263
    :cond_c1
    :goto_c1
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v1

    .line 262
    :goto_c7
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    .line 266
    :cond_ca
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->soundManager:Linfo/flowersoft/theotown/city/components/SoundManager;

    .line 268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 269
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v2, Linfo/flowersoft/theotown/stages/CityStage$2;

    invoke-direct {v2, p0, v0}, Linfo/flowersoft/theotown/stages/CityStage$2;-><init>(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->setController(Linfo/flowersoft/theotown/city/CityController;)V

    .line 350
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->setDefaultTool(Linfo/flowersoft/theotown/city/components/Tool;)V

    .line 351
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 353
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->clearDateListeners()V

    .line 354
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/stages/CityStage$3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/CityStage$3;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->addDateListener(Linfo/flowersoft/theotown/city/components/DateListener;)V

    .line 378
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->getInstance()Linfo/flowersoft/theotown/tutorial/Tutorial;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setContext(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 379
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->getInstance()Linfo/flowersoft/theotown/tutorial/Tutorial;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 381
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    iget-wide v0, v0, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->lastAutoSaveSeconds:J

    .line 383
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->loadScripts()V

    return-void
.end method

.method public final proceedSave()V
    .registers 7

    .line 1223
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isSavable()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1225
    :cond_9
    new-instance v0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda6;-><init>()V

    const/4 v1, 0x1

    .line 1227
    iput-boolean v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->citySaved:Z

    .line 1228
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v2

    iget-wide v2, v2, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    iput-wide v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->lastAutoSaveSeconds:J

    .line 1230
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    const-string v3, "save"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 1232
    new-instance v2, Linfo/flowersoft/theotown/stages/SaveWaitingStage;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v4, 0x0

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveErrorHandler:Lio/blueflower/stapel2d/util/Setter;

    .line 1234
    invoke-virtual {p0, v1, v4, v5}, Linfo/flowersoft/theotown/stages/CityStage;->getSaveThread(ZZLio/blueflower/stapel2d/util/Setter;)Ljava/lang/Thread;

    move-result-object v1

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-direct {v2, v3, v1, v0, v4}, Linfo/flowersoft/theotown/stages/SaveWaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 1237
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 1238
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public final rotateMap(I)V
    .registers 4

    .line 1427
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    rem-int/lit8 v1, p1, 0x4

    if-ne v0, v1, :cond_b

    return-void

    .line 1429
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->setRotation(I)V

    .line 1431
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->minimap:Linfo/flowersoft/theotown/ui/Minimap;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Minimap;->flush()V

    return-void
.end method

.method public runPostponedTasks()V
    .registers 3

    .line 1592
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    .line 1593
    :try_start_3
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->runPostponedTasks()V

    .line 1594
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1289
    const-string v0, "GameStage"

    return-object v0
.end method

.method public final unloadScripts()V
    .registers 4

    .line 424
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->joinWorkers()V

    .line 426
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 427
    const-string v1, "leaveCity"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 428
    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;->leaveCity()V

    const/4 v1, 0x0

    .line 430
    iput-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->updateMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    const/4 v1, 0x0

    .line 431
    :goto_1d
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/LuaLibrary;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->unloadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 432
    :cond_33
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->luaLibraries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final updateGameTime()V
    .registers 14

    .line 1016
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 1017
    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->lastMS:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    const-wide/16 v7, 0x0

    if-gez v6, :cond_14

    cmp-long v6, v2, v7

    if-gez v6, :cond_32

    .line 1019
    :cond_14
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v6

    iget-wide v9, v6, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v6, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    .line 1020
    sget-wide v9, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    add-long/2addr v9, v11

    sput-wide v9, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    sub-long/2addr v2, v4

    .line 1021
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->lastMS:J

    .line 1024
    :cond_32
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->autoSaveMinutes:I

    if-lez v0, :cond_70

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 1025
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isSavable()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    .line 1026
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->getTouchPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1027
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_70

    sget-object v0, Linfo/flowersoft/theotown/stages/RecoveryMode;->INSTANCE:Linfo/flowersoft/theotown/stages/RecoveryMode;

    .line 1028
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RecoveryMode;->getActive()Z

    move-result v0

    if-nez v0, :cond_70

    .line 1029
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    iget-wide v0, v0, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/CityStage;->lastAutoSaveSeconds:J

    sub-long/2addr v0, v2

    sget v2, Linfo/flowersoft/theotown/resources/Settings;->autoSaveMinutes:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_70

    .line 1030
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage;->proceedSave()V

    :cond_70
    return-void
.end method

.method public final updateSaveCounter()V
    .registers 3

    .line 1005
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->citySaved:Z

    if-eqz v0, :cond_14

    .line 1006
    iget v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveCounter:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_10

    const/4 v0, 0x0

    .line 1007
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->citySaved:Z

    .line 1008
    iput v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveCounter:I

    return-void

    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 1010
    iput v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveCounter:I

    :cond_14
    return-void
.end method

.method public final visitCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V
    .registers 5

    .line 1418
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    instance-of v0, v0, Linfo/flowersoft/theotown/stages/CityInfoStage;

    if-nez v0, :cond_20

    .line 1419
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/stages/CityInfoStage;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 1420
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/stages/CityInfoStage;->selectCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    .line 1421
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 1422
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CityStage;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_20
    return-void
.end method

.method public final visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 4

    .line 1274
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->shouldSaveOnAppSwitch()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isSavable()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1275
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "save"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveErrorHandler:Lio/blueflower/stapel2d/util/Setter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Linfo/flowersoft/theotown/stages/CityStage;->getSaveThread(ZZLio/blueflower/stapel2d/util/Setter;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveHook:Ljava/lang/Thread;

    .line 1277
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->saveHook:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->addLeaveAppHook(Ljava/lang/Thread;)Z

    const/4 v0, 0x1

    .line 1278
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/CityStage;->citySaved:Z

    .line 1280
    :cond_2c
    instance-of v0, p1, Linfo/flowersoft/theotown/stages/BaseStage;

    if-eqz v0, :cond_38

    .line 1281
    move-object v0, p1

    check-cast v0, Linfo/flowersoft/theotown/stages/BaseStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 1283
    :cond_38
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage.AnonymousClass1 (info.flowersoft.theotown.stages.CityStage$1)
.class public Linfo/flowersoft/theotown/stages/CityStage$1;
.super Ljava/lang/Object;
.source "CityStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/CityStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 209
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Exception;)V
    .registers 3

    .line 212
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$002(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 214
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$100(Linfo/flowersoft/theotown/stages/CityStage;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->ensureOnTop(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 209
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$1;->set(Ljava/lang/Exception;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage.AnonymousClass2 (info.flowersoft.theotown.stages.CityStage$2)
.class public Linfo/flowersoft/theotown/stages/CityStage$2;
.super Ljava/lang/Object;
.source "CityStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/CityController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityStage;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityStage;

.field public final synthetic val$mainThread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$4dka33cwfb6gQKY4A-1NhNeepws(Linfo/flowersoft/theotown/stages/CityStage$2;Z)V
    .registers 2

    .line 341
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    .line 341
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$700(Linfo/flowersoft/theotown/stages/CityStage;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZZCwfJ70xq_8Fe1ozbi0ZclQlLc(Linfo/flowersoft/theotown/stages/CityStage$2;Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 302
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 303
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    instance-of v0, v0, Linfo/flowersoft/theotown/stages/CityStage;

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 304
    :cond_17
    new-instance v1, Linfo/flowersoft/theotown/stages/CityStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/stages/CityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/cityfile/RegionInformation;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V

    invoke-virtual {p2, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_28
    return-void
.end method

.method public static synthetic $r8$lambda$dOgLyxdyNy5UrnU6NiHRp15OpvU(Linfo/flowersoft/theotown/stages/CityStage$2;ZLjava/lang/Runnable;)V
    .registers 4

    if-eqz p1, :cond_d

    .line 275
    new-instance p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    .line 275
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    .line 275
    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->save(Ljava/lang/Runnable;)V

    return-void

    .line 277
    :cond_d
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    .line 277
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/CityStage;->access$200(Linfo/flowersoft/theotown/stages/CityStage;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, v0, v0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$300(Linfo/flowersoft/theotown/stages/CityStage;ZZLio/blueflower/stapel2d/util/Setter;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->run()V

    if-eqz p2, :cond_20

    .line 278
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_20
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Thread;)V
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

    .line 269
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->val$mainThread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exit(Z)V
    .registers 4

    .line 341
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    new-instance v1, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/CityStage$2;Z)V

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage;->access$502(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

.method public isSavable()Z
    .registers 2

    .line 346
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$600(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isSavable()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .registers 8

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_52

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_52

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 296
    new-instance p1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;-><init>(Ljava/io/File;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 297
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 298
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v1

    .line 300
    new-instance v2, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v1}, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/CityStage$2;Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 308
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Linfo/flowersoft/theotown/stages/CityStage;->access$400(Linfo/flowersoft/theotown/stages/CityStage;ZZ)Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v3

    .line 310
    new-instance v4, Linfo/flowersoft/theotown/stages/LoadWaitingStage;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v5, v5, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v4, v5, v0, v2, p1}, Linfo/flowersoft/theotown/stages/LoadWaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 311
    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    if-eqz v3, :cond_52

    .line 312
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_52
    return-void
.end method

.method public loadFromExternal(Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZZLjava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_51

    .line 318
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_51

    if-eqz p3, :cond_f

    .line 319
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getLocalMapSaveDir()Ljava/io/File;

    move-result-object p3

    goto :goto_13

    .line 320
    :cond_f
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getOldMapSaveDir()Ljava/io/File;

    move-result-object p3

    .line 321
    :goto_13
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_1f
    if-eqz p4, :cond_27

    .line 322
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p4

    .line 323
    :cond_2b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_38

    if-eqz p2, :cond_44

    .line 326
    :cond_38
    :try_start_38
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 331
    :cond_44
    :goto_44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$2;->load(Ljava/lang/String;)V

    :cond_51
    return-void
.end method

.method public save(ZLjava/lang/Runnable;)V
    .registers 5

    .line 272
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->val$mainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_13

    .line 273
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    new-instance v1, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/CityStage$2;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void

    :cond_13
    if-eqz p1, :cond_20

    .line 283
    new-instance p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->save(Ljava/lang/Runnable;)V

    return-void

    .line 285
    :cond_20
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$200(Linfo/flowersoft/theotown/stages/CityStage;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v1, v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$300(Linfo/flowersoft/theotown/stages/CityStage;ZZLio/blueflower/stapel2d/util/Setter;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->run()V

    if-eqz p2, :cond_33

    .line 286
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_33
    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$2;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$2;ZLjava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CityStage$2;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CityStage$2;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/CityStage$2;->$r8$lambda$dOgLyxdyNy5UrnU6NiHRp15OpvU(Linfo/flowersoft/theotown/stages/CityStage$2;ZLjava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$2;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$2;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/CityStage$2;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/CityStage$2;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$2;->$r8$lambda$4dka33cwfb6gQKY4A-1NhNeepws(Linfo/flowersoft/theotown/stages/CityStage$2;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->load()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.CityStage$2$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$2;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$2:Lio/blueflower/stapel2d/gamestack/GameStack;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$2;Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CityStage$2;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda3;->f$2:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CityStage$2;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda3;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage$2$$ExternalSyntheticLambda3;->f$2:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/CityStage$2;->$r8$lambda$ZZCwfJ70xq_8Fe1ozbi0ZclQlLc(Linfo/flowersoft/theotown/stages/CityStage$2;Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage.AnonymousClass3 (info.flowersoft.theotown.stages.CityStage$3)
.class public Linfo/flowersoft/theotown/stages/CityStage$3;
.super Ljava/lang/Object;
.source "CityStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/DateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityStage;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 354
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$3;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextDay()V
    .registers 4

    .line 357
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$3;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$800(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_44

    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREEFASTSPEED00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_44

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_44

    .line 358
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getFastForwardDays()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->setFastForwardDays(I)V

    .line 360
    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getFastForwardDays()I

    move-result v0

    if-gtz v0, :cond_44

    .line 361
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$3;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$800(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    .line 364
    :cond_44
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$3;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$800(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6c

    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_SLOWSPEED:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 365
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$3;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$800(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    :cond_6c
    return-void
.end method

.method public nextMonth()V
    .registers 1

    .line 0
    return-void
.end method

.method public nextYear()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage.AnonymousClass4 (info.flowersoft.theotown.stages.CityStage$4)
.class public Linfo/flowersoft/theotown/stages/CityStage$4;
.super Linfo/flowersoft/theotown/ui/TouchPane;
.source "CityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;IIIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 459
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/TouchPane;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public clickAt(IILio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 6

    .line 462
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 463
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->reset()V

    if-eqz p3, :cond_49

    .line 464
    invoke-virtual {p3}, Lio/blueflower/stapel2d/touch/TouchPoint;->isMouse()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getButton()I

    move-result v0

    if-nez v0, :cond_49

    .line 465
    :cond_1d
    iget-object p3, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {p3}, Linfo/flowersoft/theotown/stages/CityStage;->access$1100(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    move-result-object p3

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/CityStage;->access$1000(Linfo/flowersoft/theotown/stages/CityStage;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->transformFromScreen(Linfo/flowersoft/theotown/city/City;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    .line 466
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {p2}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object p2

    iget p3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int p3, p3

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int p1, p1

    invoke-virtual {p2, p3, p1}, Linfo/flowersoft/theotown/city/City;->onClick(II)V

    return-void

    :cond_49
    if-eqz p3, :cond_5b

    .line 467
    invoke-virtual {p3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getButton()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5b

    .line 468
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->closeOrCancelTool()V

    :cond_5b
    return-void
.end method

.method public twoFingerClick()V
    .registers 2

    .line 475
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_18

    .line 476
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->reset()V

    .line 477
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->closeOrCancelTool()V

    :cond_18
    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 9

    .line 483
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    .line 484
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getScrollChange()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_aa

    .line 486
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->clearScrollChange()V

    .line 488
    sget v2, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    if-nez v2, :cond_18

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    .line 490
    :cond_18
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/CityStage;->access$1200(Linfo/flowersoft/theotown/stages/CityStage;)F

    move-result v2

    float-to-double v2, v2

    .line 491
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 493
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 494
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 495
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result p1

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v4

    mul-float/2addr p1, v4

    float-to-int p1, p1

    .line 496
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/CityStage;->access$1100(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v5}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/CityStage;->access$1000(Linfo/flowersoft/theotown/stages/CityStage;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    int-to-float v3, v3

    int-to-float p1, p1

    invoke-virtual {v6, v3, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->transformFromScreen(Linfo/flowersoft/theotown/city/City;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_83

    .line 498
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int p1, p1

    invoke-virtual {v0, v2, v1, p1}, Linfo/flowersoft/theotown/city/City;->zoomIn(FII)V

    goto :goto_aa

    .line 500
    :cond_83
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int p1, p1

    invoke-virtual {v0, v2, v1, p1}, Linfo/flowersoft/theotown/city/City;->zoomOut(FII)V

    goto :goto_aa

    :cond_93
    cmpg-float p1, v0, v1

    if-gez p1, :cond_a1

    .line 504
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->zoomIn(F)V

    goto :goto_aa

    .line 506
    :cond_a1
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->zoomOut(F)V

    :cond_aa
    :goto_aa
    const/4 p1, 0x0

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.CityStage.AnonymousClass5 (info.flowersoft.theotown.stages.CityStage$5)
.class public Linfo/flowersoft/theotown/stages/CityStage$5;
.super Ljava/lang/Object;
.source "CityStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Lio/blueflower/stapel2d/gamestack/Stage;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 517
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$5;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 4

    .line 520
    instance-of v0, p1, Linfo/flowersoft/theotown/stages/BaseStage;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Linfo/flowersoft/theotown/stages/BaseStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage$5;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 521
    :cond_10
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$5;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$1300(Linfo/flowersoft/theotown/stages/CityStage;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 517
    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$5;->set(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage.AnonymousClass6 (info.flowersoft.theotown.stages.CityStage$6)
.class public Linfo/flowersoft/theotown/stages/CityStage$6;
.super Ljava/lang/Object;
.source "CityStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityStage;->onBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Lio/blueflower/stapel2d/gamestack/Stage;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1063
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$6;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 3

    .line 1066
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$6;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1063
    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$6;->set(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage.AnonymousClass7 (info.flowersoft.theotown.stages.CityStage$7)
.class public Linfo/flowersoft/theotown/stages/CityStage$7;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "CityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityStage;->showSaveDialog(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;ZLio/blueflower/stapel2d/util/Setter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$onSave:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/Runnable;)V
    .registers 10

    .line 1188
    iput-object p8, p0, Linfo/flowersoft/theotown/stages/CityStage$7;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/CityStage$7;->val$onSave:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p7}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 1191
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 1192
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$7;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 1193
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$7;->val$onSave:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage.AnonymousClass8 (info.flowersoft.theotown.stages.CityStage$8)
.class public Linfo/flowersoft/theotown/stages/CityStage$8;
.super Linfo/flowersoft/theotown/tools/DefaultTool;
.source "CityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityStage;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public static synthetic $r8$lambda$BcRcqJ0njj0cVITSMaFWl_P4ZE8(Linfo/flowersoft/theotown/stages/CityStage$8;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V
    .registers 2

    .line 1397
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    .line 1397
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$1500(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$InoscTHAz7TYW3HUcrdmsVnjCok(Linfo/flowersoft/theotown/stages/CityStage$8;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 1398
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    .line 1398
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$1300(Linfo/flowersoft/theotown/stages/CityStage;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RU0OcmlejuUr1MppMWg4YU9jDiI(Linfo/flowersoft/theotown/stages/CityStage$8;II)V
    .registers 4

    .line 1305
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    .line 1305
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$1600(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1306
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {p0}, Linfo/flowersoft/theotown/stages/CityStage;->access$1600(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;->visit(II)V

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$hiCm_g0A9-ivxaO5sMwa_TGs5Wo(Linfo/flowersoft/theotown/stages/CityStage$8;Linfo/flowersoft/theotown/city/components/Tool;IIII)V
    .registers 16

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    neg-int v0, p2

    neg-int v1, p3

    .line 1298
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 1299
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    sub-int v1, p2, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    sub-int v3, p3, v3

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1297
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_3b

    .line 1300
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isTutorial()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1304
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    new-instance p4, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p2, p3}, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/CityStage$8;II)V

    invoke-static {p1, p4}, Linfo/flowersoft/theotown/stages/CityStage;->access$1400(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)V

    return-void

    .line 1313
    :cond_3b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_1ea

    .line 1314
    :cond_45
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/BuildMask;

    .line 1315
    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/components/BuildMask;->isClickable(II)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_1ea

    .line 1318
    :cond_57
    invoke-static {}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    .line 1319
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultIdleGame;

    goto :goto_6a

    :cond_69
    move-object v0, v1

    .line 1321
    :goto_6a
    instance-of v3, p1, Linfo/flowersoft/theotown/tools/DefaultTool;

    if-eqz v3, :cond_89

    .line 1322
    check-cast p1, Linfo/flowersoft/theotown/tools/DefaultTool;

    .line 1323
    invoke-virtual {p1, p4, p5}, Linfo/flowersoft/theotown/tools/DefaultTool;->getIndicatorPtr(II)I

    move-result p4

    if-ltz p4, :cond_89

    .line 1325
    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/tools/DefaultTool;->getIndicatorTileX(I)I

    move-result p5

    .line 1326
    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/tools/DefaultTool;->getIndicatorTileY(I)I

    move-result p1

    .line 1327
    iget-object p4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p4, p5, p1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p4

    if-eqz p4, :cond_89

    move v5, p1

    move v4, p5

    goto :goto_8b

    :cond_89
    move v4, p2

    move v5, p3

    .line 1334
    :goto_8b
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object p1

    sget p2, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CLICK:I

    sget-object p3, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    .line 1336
    new-instance p1, Linfo/flowersoft/theotown/city/TileLogger;

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/city/TileLogger;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 1337
    invoke-virtual {p1, v4, v5}, Linfo/flowersoft/theotown/city/TileLogger;->log(II)V

    .line 1339
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    .line 1341
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/RoadList;->getMaxLevel()I

    move-result p2

    move-object p3, v1

    :goto_b1
    if-ltz p2, :cond_be

    if-nez p3, :cond_be

    .line 1342
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, v4, v5, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    add-int/lit8 p2, p2, -0x1

    goto :goto_b1

    .line 1346
    :cond_be
    const-string p2, "click"

    const/4 p4, 0x0

    if-eqz p3, :cond_f0

    .line 1347
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result p5

    sub-int/2addr p5, v2

    move-object v3, v1

    :goto_c9
    if-ltz p5, :cond_ed

    .line 1348
    invoke-virtual {p3, p5}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v3

    if-eqz v3, :cond_ea

    .line 1349
    iget-object v6, v3, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    if-eqz v6, :cond_e5

    .line 1350
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e5

    .line 1351
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v6

    invoke-virtual {v6, p2, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v6

    if-nez v6, :cond_ed

    :cond_e5
    iget-object v6, v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->onClickTransitions:Ljava/util/List;

    if-eqz v6, :cond_ea

    goto :goto_ed

    :cond_ea
    add-int/lit8 p5, p5, -0x1

    goto :goto_c9

    .line 1354
    :cond_ed
    :goto_ed
    iget p5, p3, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    goto :goto_f2

    :cond_f0
    move p5, p4

    move-object v3, v1

    .line 1359
    :goto_f2
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v6

    const-string v7, "clickAny"

    .line 1360
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v6

    if-eqz v6, :cond_106

    .line 1362
    invoke-virtual {v6, v4, v5, p5}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    move-result v6

    if-nez v6, :cond_106

    goto/16 :goto_1ea

    :cond_106
    if-eqz p1, :cond_10c

    .line 1367
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    :cond_10c
    if-nez v1, :cond_112

    if-eqz p3, :cond_112

    .line 1368
    iget-object v1, p3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    :cond_112
    if-eqz v3, :cond_115

    move-object v1, v3

    :cond_115
    if-eqz v1, :cond_129

    .line 1371
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v6

    invoke-virtual {v6, p2, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p2

    if-eqz p2, :cond_129

    .line 1372
    invoke-virtual {p2, v4, v5, p5}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    move-result p2

    if-eqz p2, :cond_128

    goto :goto_129

    :cond_128
    move v2, p4

    :cond_129
    :goto_129
    if-eqz v2, :cond_1b7

    const/4 p2, 0x3

    if-eqz p1, :cond_15c

    .line 1376
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result p5

    if-eqz p5, :cond_15c

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p5

    invoke-virtual {p5}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isClickSensitive()Z

    move-result p5

    if-eqz p5, :cond_15c

    .line 1377
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 1378
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingWorker()Linfo/flowersoft/theotown/components/management/BuildingWorker;

    move-result-object p2

    const-class p3, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;

    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/components/management/BuildingWorker;->getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;

    .line 1379
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/buildingcontroller/TransitionBuildingController;->onClick(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 1380
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->hiddenOnClick:Z

    goto :goto_1b7

    :cond_15c
    if-eqz v3, :cond_162

    .line 1381
    iget-object p5, v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->onClickTransitions:Ljava/util/List;

    if-nez p5, :cond_16c

    :cond_162
    if-eqz p3, :cond_188

    iget-object p5, p3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 1382
    invoke-virtual {p5}, Linfo/flowersoft/theotown/draft/RoadDraft;->isClickSensitive()Z

    move-result p5

    if-eqz p5, :cond_188

    .line 1383
    :cond_16c
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 1384
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getRoadWorker()Linfo/flowersoft/theotown/components/management/RoadWorker;

    move-result-object p1

    const-class p2, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/management/RoadWorker;->getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/roadcontroller/RoadController;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;

    .line 1385
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/components/roadcontroller/TransitionRoadController;->onClick(Linfo/flowersoft/theotown/city/objects/Road;)V

    .line 1386
    iget-object p1, p3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->hiddenOnClick:Z

    goto :goto_1b7

    :cond_188
    if-eqz p1, :cond_1b7

    .line 1387
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result p2

    if-eqz p2, :cond_1b7

    if-eqz v0, :cond_1b7

    .line 1388
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->getGame(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/minigame/IdleGame;

    move-result-object p1

    if-eqz p1, :cond_1b7

    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 1389
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result p2

    if-nez p2, :cond_1b7

    .line 1390
    new-instance p2, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget-object p5, p0, Linfo/flowersoft/theotown/stages/CityStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v0, p5, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p5}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p5

    invoke-direct {p2, p3, v0, p5, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/minigame/IdleGame;)V

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/minigame/IdleGameDialogBuilder;->build(Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;

    move v2, p4

    :cond_1b7
    :goto_1b7
    if-eqz v2, :cond_1ea

    .line 1396
    new-instance v3, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;

    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p1}, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v6, p1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    new-instance v7, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/CityStage$8;)V

    new-instance v8, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/CityStage$8;)V

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v9, p1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual/range {v3 .. v9}, Linfo/flowersoft/theotown/stages/tiledialog/TileInfoDialogBuilder;->build(IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1e1

    .line 1401
    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 1402
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void

    .line 1404
    :cond_1e1
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    :cond_1ea
    :goto_1ea
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1293
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/DefaultTool;-><init>()V

    .line 1295
    new-instance p1, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/CityStage$8;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/components/Tool;->registerClickListener(Linfo/flowersoft/theotown/city/components/Tool$ClickListener;)V

    return-void
.end method


# virtual methods
.method public ensureValidPosition()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.CityStage$8$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.CityStage$8$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Tool$ClickListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$8;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$8;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CityStage$8;

    return-void
.end method


# virtual methods
.method public final onClick(Linfo/flowersoft/theotown/city/components/Tool;IIII)V
    .registers 12

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CityStage$8;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/CityStage$8;->$r8$lambda$hiCm_g0A9-ivxaO5sMwa_TGs5Wo(Linfo/flowersoft/theotown/stages/CityStage$8;Linfo/flowersoft/theotown/city/components/Tool;IIII)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$8$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.CityStage$8$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$8;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$8;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/CityStage$8;

    iput p2, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/CityStage$8;

    iget v1, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/CityStage$8;->$r8$lambda$RU0OcmlejuUr1MppMWg4YU9jDiI(Linfo/flowersoft/theotown/stages/CityStage$8;II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$8$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.CityStage$8$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$8;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$8;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/CityStage$8;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/CityStage$8;

    check-cast p1, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage$8;->$r8$lambda$BcRcqJ0njj0cVITSMaFWl_P4ZE8(Linfo/flowersoft/theotown/stages/CityStage$8;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$8$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.CityStage$8$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$8;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$8;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CityStage$8;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$8$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CityStage$8;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage$8;->$r8$lambda$InoscTHAz7TYW3HUcrdmsVnjCok(Linfo/flowersoft/theotown/stages/CityStage$8;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage.CityVisitor (info.flowersoft.theotown.stages.CityStage$CityVisitor)
.class public interface abstract Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;
.super Ljava/lang/Object;
.source "CityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/CityStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CityVisitor"
.end annotation


# virtual methods
.method public abstract visit(II)V
.end method

###### Class info.flowersoft.theotown.stages.CityStage.GameStageContext (info.flowersoft.theotown.stages.CityStage$GameStageContext)
.class public Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;
.super Ljava/lang/Object;
.source "CityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/CityStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameStageContext"
.end annotation


# instance fields
.field public areaPanel:Lio/blueflower/stapel2d/gui/Panel;

.field public debugLayer:Linfo/flowersoft/theotown/ui/DebugLayer;

.field public lastEnterMS:J

.field public mapScreenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

.field public minimapPanel:Lio/blueflower/stapel2d/gui/Panel;

.field public onlineScreenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

.field public screenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public static synthetic $r8$lambda$ceLdWdOF-qrZApHxELw8lmbRk1c(Ljava/lang/Runnable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 1546
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$lN175G-aLiI2RoVtuztTUXHknms(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)F
    .registers 2

    .line 1572
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    .line 1572
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/CityStage;->access$600(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getProgressProvider()Linfo/flowersoft/theotown/util/ProgressProvider;

    move-result-object p0

    invoke-interface {p0}, Linfo/flowersoft/theotown/util/ProgressProvider;->getProgress()F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    return p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1445
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1443
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->lastEnterMS:J

    .line 1446
    new-instance v2, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$1;

    iget-object v0, p1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v6

    iget-object v0, p1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    iget-object v8, p1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$1;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/stages/CityStage;)V

    iput-object v2, v3, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->areaPanel:Lio/blueflower/stapel2d/gui/Panel;

    const/4 p1, 0x1

    .line 1450
    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setTouchThrough(Z)V

    return-void
.end method


# virtual methods
.method public addPostProcessor(Ljava/lang/Runnable;)V
    .registers 3

    .line 1522
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$2000(Linfo/flowersoft/theotown/stages/CityStage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .registers 2

    .line 1462
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$1700(Linfo/flowersoft/theotown/stages/CityStage;)V

    return-void
.end method

.method public closeApp()V
    .registers 2

    .line 1466
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$1800(Linfo/flowersoft/theotown/stages/CityStage;)V

    return-void
.end method

.method public getCity()Linfo/flowersoft/theotown/city/City;
    .registers 2

    .line 1482
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsStage()Linfo/flowersoft/theotown/stages/AbstractCommentsStage;
    .registers 2

    .line 1534
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$2200(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Linfo/flowersoft/theotown/components/DefaultDate;
    .registers 2

    .line 1486
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$800(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    return-object v0
.end method

.method public getDelimitedMS()I
    .registers 2

    .line 1514
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->delimitedMS:I

    return v0
.end method

.method public getEngine()Lio/blueflower/stapel2d/drawing/Engine;
    .registers 2

    .line 1502
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    return-object v0
.end method

.method public getGUI()Lio/blueflower/stapel2d/gui/Master;
    .registers 2

    .line 1490
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->areaPanel:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Master;

    return-object v0
.end method

.method public getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 2

    .line 1478
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object v0
.end method

.method public getGiftManager()Linfo/flowersoft/theotown/online/CityGiftManager;
    .registers 2

    .line 1538
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$2300(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/online/CityGiftManager;

    move-result-object v0

    return-object v0
.end method

.method public getLastRenderTime()I
    .registers 2

    .line 1510
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->lastRenderTime:I

    return v0
.end method

.method public getMinimap()Linfo/flowersoft/theotown/ui/Minimap;
    .registers 2

    .line 1498
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$1900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/ui/Minimap;

    move-result-object v0

    return-object v0
.end method

.method public handleRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .line 1586
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$2500(Linfo/flowersoft/theotown/stages/CityStage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isDialogOpen()Z
    .registers 2

    .line 1474
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    return v0
.end method

.method public isSavable()Z
    .registers 2

    .line 1458
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$600(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isSavable()Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/Runnable;)V
    .registers 7

    .line 1542
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->isSavable()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1543
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage;->access$2402(Linfo/flowersoft/theotown/stages/CityStage;Z)Z

    .line 1545
    new-instance v0, Linfo/flowersoft/theotown/stages/SaveWaitingStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v3, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/CityStage;->access$200(Linfo/flowersoft/theotown/stages/CityStage;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object v4

    invoke-static {v2, v1, v1, v4}, Linfo/flowersoft/theotown/stages/CityStage;->access$300(Linfo/flowersoft/theotown/stages/CityStage;ZZLio/blueflower/stapel2d/util/Setter;)Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    .line 1547
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$600(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    invoke-direct {v0, v3, v1, v2, p1}, Linfo/flowersoft/theotown/stages/SaveWaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 1548
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 1549
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_3a
    return-void
.end method

.method public saveForScreenshot(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 1556
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->isSavable()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1557
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage;->access$2402(Linfo/flowersoft/theotown/stages/CityStage;Z)Z

    .line 1559
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "save"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 1561
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->shouldSaveForScreenshot()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1562
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$200(Linfo/flowersoft/theotown/stages/CityStage;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Linfo/flowersoft/theotown/stages/CityStage;->access$300(Linfo/flowersoft/theotown/stages/CityStage;ZZLio/blueflower/stapel2d/util/Setter;)Ljava/lang/Thread;

    move-result-object v0

    goto :goto_2c

    .line 1563
    :cond_27
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    :goto_2c
    move-object v5, v0

    goto :goto_34

    .line 1565
    :cond_2e
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    goto :goto_2c

    .line 1568
    :goto_34
    new-instance v1, Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_MAP_SCREENSHOT:I

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x6bb

    .line 1569
    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    .line 1573
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$600(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getStateProvider()Lio/blueflower/stapel2d/util/Getter;

    move-result-object v8

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    .line 1574
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/stages/WaitingStage;->append(Lio/blueflower/stapel2d/util/Getter;)V

    .line 1575
    new-instance v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$2;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$2;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/stages/WaitingStage;->setAborted(Ljava/lang/Runnable;)Linfo/flowersoft/theotown/stages/WaitingStage;

    .line 1581
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 1582
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public setMinimap(Linfo/flowersoft/theotown/ui/Minimap;)V
    .registers 3

    .line 1494
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$1902(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/ui/Minimap;)Linfo/flowersoft/theotown/ui/Minimap;

    return-void
.end method

.method public showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 3

    .line 1526
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

.method public turnMap(I)V
    .registers 4

    .line 1530
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->access$900(Linfo/flowersoft/theotown/stages/CityStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$2100(Linfo/flowersoft/theotown/stages/CityStage;I)V

    return-void
.end method

.method public visitCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V
    .registers 3

    .line 1518
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$1500(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

.method public visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 3

    .line 1470
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->this$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->access$1300(Linfo/flowersoft/theotown/stages/CityStage;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage.GameStageContext.AnonymousClass1 (info.flowersoft.theotown.stages.CityStage$GameStageContext$1)
.class public Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "CityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;-><init>(Linfo/flowersoft/theotown/stages/CityStage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

.field public final synthetic val$this$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/stages/CityStage;)V
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

    .line 1446
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$1;->this$1:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$1;->val$this$0:Linfo/flowersoft/theotown/stages/CityStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage.GameStageContext.AnonymousClass2 (info.flowersoft.theotown.stages.CityStage$GameStageContext$2)
.class public Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$2;
.super Ljava/lang/Object;
.source "CityStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->saveForScreenshot(Lio/blueflower/stapel2d/util/Getter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

.field public final synthetic val$afterSaving:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 1575
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$2;->this$1:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$2;->val$afterSaving:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1578
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$2;->val$afterSaving:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    invoke-static {v0}, Linfo/flowersoft/theotown/city/PreviewCreator;->evaluateSteppedTask(Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;)Ljava/lang/Object;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$GameStageContext$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.CityStage$GameStageContext$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/util/ProgressProvider;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    return-void
.end method


# virtual methods
.method public final getProgress()F
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->$r8$lambda$lN175G-aLiI2RoVtuztTUXHknms(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)F

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.CityStage$GameStageContext$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.CityStage$GameStageContext$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->$r8$lambda$ceLdWdOF-qrZApHxELw8lmbRk1c(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda0;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$ueIj473HORGQ_mCvoClt2wmZ7RQ()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    check-cast p1, Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$czpfUZKtDjSdlMVdrJJ5MPtWj40(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda10 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$gVykIAht4IoFp1AtWGLCXHlPGhE(Linfo/flowersoft/theotown/stages/CityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda11 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    check-cast p1, Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$HuO27UHhppDqsPiIqYrLx9qWN6U(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda12 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$3IboEVEjiVWWz896i3lC6SLU8Ss(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda13 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$qlrmTzefXJ06wLB7uIbKXy8bhEk(Linfo/flowersoft/theotown/stages/CityStage;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$f9kd5pTh2rZ5WOg3CVVms-FXieE(Linfo/flowersoft/theotown/stages/CityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$RyHOzuXsH1Ot9KESHcGwBquZL4s(Linfo/flowersoft/theotown/stages/CityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/ScenarioInfo;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/ScenarioInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/city/ScenarioInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/city/ScenarioInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$BAhGHyMgfEtwhuJFFXabUfHm89s(Linfo/flowersoft/theotown/city/ScenarioInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/mechanics/LastCityManager;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/mechanics/LastCityManager;ZLio/blueflower/stapel2d/util/Setter;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda5;->f$1:Linfo/flowersoft/theotown/mechanics/LastCityManager;

    iput-boolean p3, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda5;->f$3:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda5;->f$1:Linfo/flowersoft/theotown/mechanics/LastCityManager;

    iget-boolean v2, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda5;->f$2:Z

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda5;->f$3:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$TNTCV6kWbcRzk91cznnB71jtkHY(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/mechanics/LastCityManager;ZLio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda6;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$v2rhJNw8uhlBTWb3ohRW10mnufE()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    check-cast p1, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$N5rtcgrP7TMFSsHUCUfU0pSXFKQ(Linfo/flowersoft/theotown/stages/CityStage;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$dUPqw1VMZELCznzEpCh-b_kwL2o(Linfo/flowersoft/theotown/stages/CityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda9 (info.flowersoft.theotown.stages.CityStage$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityStage$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/stages/CityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityStage;->$r8$lambda$oPi-_QPaRgNqIinHyadFo3QRYfg(Linfo/flowersoft/theotown/stages/CityStage;)V

    return-void
.end method
