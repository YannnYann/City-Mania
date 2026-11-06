###### Class info.flowersoft.theotown.stages.LoadingStage (info.flowersoft.theotown.stages.LoadingStage)
.class public Linfo/flowersoft/theotown/stages/LoadingStage;
.super Lio/blueflower/stapel2d/gamestack/Stage;
.source "LoadingStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/LoadingStage$Task;
    }
.end annotation


# instance fields
.field public final completedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/LoadingStage$Task;",
            ">;"
        }
    .end annotation
.end field

.field public contentLoader:Linfo/flowersoft/theotown/draftloader/ContentLoader;

.field public contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/resources/ContentData;",
            ">;"
        }
    .end annotation
.end field

.field public context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;"
        }
    .end annotation
.end field

.field public final pendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final pg:Linfo/flowersoft/theotown/util/ProgressSetter;

.field public progressDone:I

.field public progressTotal:I

.field public startScreenDrawer:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

.field public final synchronizedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/FutureTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field public taskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public taskStartedMS:J

.field public final tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/LoadingStage$Task;",
            ">;"
        }
    .end annotation
.end field

.field public final textures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/drawing/Texture;",
            ">;"
        }
    .end annotation
.end field

.field public watchdog:Linfo/flowersoft/theotown/util/Watchdog;


# direct methods
.method public static synthetic $r8$lambda$0FMjDnYqRbnQVmwEvwkF4mgo2HU(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 237
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->initScripts()V

    return-void
.end method

.method public static synthetic $r8$lambda$0Mwg2jWxbTciCadei31HuJ9p-to(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 190
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->createTexture()Lio/blueflower/stapel2d/drawing/TiledTextureSource;

    .line 191
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->createSkin()V

    return-void
.end method

.method public static synthetic $r8$lambda$27wNPPRRxNmNMFTpEt7FTYGlTTY(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 4

    .line 179
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSettings()V

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/input/KeyActionManager;->load(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/input/KeyActionManager;->save(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 182
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->notifications:Linfo/flowersoft/theotown/crossplatform/Notifications;

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->pushNotifications:Z

    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->pushNotificationsOnline:Z

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Notifications;->setSubscription(ZZ)V

    .line 183
    invoke-static {}, Linfo/flowersoft/theotown/resources/StaticFiles;->getInstance()Linfo/flowersoft/theotown/resources/StaticFiles;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->KEYS:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/StaticFiles;->init(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 184
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->analyzeGL()V

    .line 185
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->assertPerformance()V

    .line 186
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p0

    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->locale:Ljava/util/Locale;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getEffectiveLocalizationPatches()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->setLanguage(Ljava/util/Locale;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3DX-ZX_byXy0raL_Ef9rKoo9BRM(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 8

    .line 1716
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 1717
    sget-object p0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p0, p0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    const-string v1, "Hi"

    invoke-virtual {v0, p0, v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 1718
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    return-void
.end method

.method public static synthetic $r8$lambda$5IIPDj1T38Y9ZzjDJhAm90WrOvg(Linfo/flowersoft/theotown/stages/LoadingStage;Linfo/flowersoft/theotown/draftloader/FrameList;[I)V
    .registers 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 627
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draftloader/FrameList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7d

    .line 628
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Resources;->HUGE_TEXTURE_MODE:Z

    const/16 v2, 0x1000

    if-eqz v0, :cond_13

    const/16 v0, 0x2000

    goto :goto_14

    :cond_13
    move v0, v2

    .line 629
    :goto_14
    invoke-static {v0, v0}, Lio/blueflower/stapel2d/drawing/Texture;->probeSize(II)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 630
    div-int/lit8 v0, v0, 0x2

    const/16 v3, 0x400

    if-lt v0, v3, :cond_21

    goto :goto_14

    .line 632
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to allocate texture of size "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nIn total "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " textures were allocated,\nHuge texture mode is: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Linfo/flowersoft/theotown/resources/Resources;->HUGE_TEXTURE_MODE:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 636
    :cond_4c
    new-instance v3, Lio/blueflower/stapel2d/drawing/TiledTextureSource;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v0, v4}, Lio/blueflower/stapel2d/drawing/TiledTextureSource;-><init>(III)V

    .line 637
    new-instance v5, Lio/blueflower/stapel2d/drawing/Texture;

    invoke-direct {v5, v3}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    .line 638
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->textures:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object p0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0, v5}, Lio/blueflower/stapel2d/drawing/Image;->addTexture(Lio/blueflower/stapel2d/drawing/Texture;)I

    move-result v7

    .line 640
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v9, v1

    :goto_67
    if-ge v9, v0, :cond_76

    move v8, v1

    :goto_6a
    if-ge v8, v0, :cond_73

    move v11, v10

    move-object v6, p1

    .line 643
    invoke-virtual/range {v6 .. v11}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    add-int/2addr v8, v10

    goto :goto_6a

    :cond_73
    move-object v6, p1

    add-int/2addr v9, v10

    goto :goto_67

    :cond_76
    move-object v6, p1

    .line 646
    aget p0, p2, v1

    add-int/2addr p0, v4

    aput p0, p2, v1

    goto :goto_7e

    :cond_7d
    move-object v6, p1

    .line 649
    :goto_7e
    invoke-virtual {v6}, Linfo/flowersoft/theotown/draftloader/FrameList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9e

    .line 651
    invoke-virtual {v6, v1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getAreaId(I)I

    move-result p0

    .line 652
    invoke-virtual {v6, v1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getX(I)I

    move-result p1

    invoke-virtual {v6, v1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getY(I)I

    move-result p2

    .line 653
    invoke-virtual {v6, v1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getWidth(I)I

    move-result v0

    invoke-virtual {v6, v1}, Linfo/flowersoft/theotown/draftloader/FrameList;->getHeight(I)I

    move-result v1

    .line 650
    invoke-static {p0, p1, p2, v0, v1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addTextureArea(IIIII)V

    .line 655
    invoke-virtual {v6}, Linfo/flowersoft/theotown/draftloader/FrameList;->removeFirst()V

    :cond_9e
    return-void
.end method

.method public static synthetic $r8$lambda$91f1pW_qgFvDyuN4dIiiQVrIoA4(Linfo/flowersoft/theotown/stages/LoadingStage;Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1666
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->loadTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 1667
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pg:Linfo/flowersoft/theotown/util/ProgressSetter;

    iget p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->progressDone:I

    add-int/lit8 p2, p2, 0x1

    iget p0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->progressTotal:I

    invoke-interface {p1, p2, p0}, Linfo/flowersoft/theotown/util/ProgressSetter;->set(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$9HiNoI69LBqmWLh0444Ms_0GoAU(Linfo/flowersoft/theotown/stages/LoadingStage;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 4

    .line 1684
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->textures:Ljava/util/List;

    .line 1684
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    goto :goto_6

    .line 1685
    :cond_16
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->textures:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/drawing/Texture;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Texture;->setColorDepth(I)V

    goto :goto_1c

    :cond_2e
    return-void
.end method

.method public static synthetic $r8$lambda$9JOacwMEpmMPfxN0cWDczezDkoA(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->failedStartupCtr:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_19

    .line 214
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x2e

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    return-void

    .line 217
    :cond_19
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/RecoveryStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->startScreenDrawer:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    invoke-direct {v1, v2, p0}, Linfo/flowersoft/theotown/stages/RecoveryStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/ui/StartScreenDrawer;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9x3KPNdEZLUG1X9SBLvCm-gG1C8(I)Z
    .registers 3

    .line 802
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->missingChars:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1c

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Linfo/flowersoft/theotown/resources/Settings;->missingChars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Linfo/flowersoft/theotown/resources/Settings;->missingChars:Ljava/lang/String;

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$C3vqKUJnyGXh8oNqRWC-zTqwcy8(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadTopics()V

    return-void
.end method

.method public static synthetic $r8$lambda$E3lnnHdHdfPXqgFHKq1FhY0yrCk(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadDrafts()V

    return-void
.end method

.method public static synthetic $r8$lambda$IVSEllZ3meS0G9IO5Q79mWJuztY(JLjava/lang/Object;)V
    .registers 7

    .line 170
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Watchdog"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms, hint: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$JP9B_NjtKwBAZEKt5TVVWbhvnBA(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadFrames()V

    return-void
.end method

.method public static synthetic $r8$lambda$NEIrPaFV4uqsBvTk5pgp2xytpi8(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->provideSamplePlugins()V

    return-void
.end method

.method public static synthetic $r8$lambda$Nu3bxYA_aK-yUIG7yPAJrI4H0GM(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadTexture()V

    return-void
.end method

.method public static synthetic $r8$lambda$PAGQe9o2SF56OnYr2x8Vh62pVO8(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadMusic()V

    return-void
.end method

.method public static synthetic $r8$lambda$TkRXk68rQRXmHN_AuGzY4s5_aDc(Linfo/flowersoft/theotown/stages/LoadingStage;)Ljava/lang/Object;
    .registers 1

    .line 1832
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    .line 1832
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YG7VgAHr62WqfZYVvftj0HZsxaI(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorOccured()Z

    move-result v0

    if-nez v0, :cond_e

    .line 257
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->createBGCity(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    :cond_e
    return-void
.end method

.method public static synthetic $r8$lambda$cFW3ex1Yn4-a010Bsb_0jWekgJU(Linfo/flowersoft/theotown/stages/LoadingStage;[ILjava/lang/Runnable;)Z
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 660
    aget p1, p1, v0

    const/16 v1, 0x10

    if-ge p1, v1, :cond_7f

    .line 661
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->countTextureAreas()I

    move-result p1

    .line 662
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pendingTasks:Ljava/util/List;

    monitor-enter v1

    .line 663
    :try_start_11
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pendingTasks:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_7c

    .line 666
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    .line 669
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pendingTasks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_74

    const-wide/16 v3, 0xa

    .line 671
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 674
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 675
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pendingTasks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1b

    const-wide/16 v5, 0x1388

    cmp-long p2, v3, v5

    if-gez p2, :cond_3c

    goto :goto_1b

    .line 676
    :cond_3c
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->countActivePlugins()I

    move-result p0

    .line 677
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->disableRecentPlugins()I

    move-result p2

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not allocate texture in time. This could be caused by having too many plugins.\nIn an attempt to recover I disable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " active plugins. Please restart the game to test if it helps."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 685
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_70
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_70} :catch_70

    :catch_70
    move-exception p0

    .line 689
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 692
    :cond_74
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->countTextureAreas()I

    move-result p0

    if-le p0, p1, :cond_7b

    const/4 v0, 0x1

    :cond_7b
    return v0

    :catchall_7c
    move-exception p0

    .line 664
    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p0

    :cond_7f
    return v0
.end method

.method public static synthetic $r8$lambda$dnF3OEWtuGsES1G0uWmsNRfpRSo(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 3

    .line 262
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->executor:Ljava/util/concurrent/ExecutorService;

    .line 262
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 264
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 265
    const-string v1, "finishLoading"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static synthetic $r8$lambda$ea-36rUaZTbXiMeQtjPZzLJ4-PU(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadFonts()V

    return-void
.end method

.method public static synthetic $r8$lambda$fW3eN3AdayYnb4eBeZ7ZAZZtWW4()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$giEJ2W9Pei-8vUvaSjsJzh0vgaE(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 2

    .line 1689
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->loadTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iMcqvn8qjQ-DHSStU3Yo7rgbRgs(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->prefetchImages()V

    return-void
.end method

.method public static synthetic $r8$lambda$kpXa3xsavEtmX4M4BOY2Snd5IPA(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->collectDrafts()V

    return-void
.end method

.method public static synthetic $r8$lambda$lX8ayMgacI9JK3RMCODLSFAEoYY(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadShaders()V

    return-void
.end method

.method public static synthetic $r8$lambda$nYtcKcxsTLgCPz1T1kAnSqFfiXo(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadScriptingLibraries()V

    return-void
.end method

.method public static synthetic $r8$lambda$nlFm8a3ilQk7Wvelef0vx27udos(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    :goto_3
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->waitingForPermissions()Z

    move-result v0

    if-eqz v0, :cond_16

    const-wide/16 v0, 0x64

    .line 199
    :try_start_d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_3

    :catch_11
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 204
    :cond_16
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSkin()V

    .line 205
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadDarkSkin()V

    return-void
.end method

.method public static synthetic $r8$lambda$sG5nLif9xr_ysjhg8SsCrxQanac(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 1

    .line 249
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->checkWinter()V

    .line 250
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->validateScripts()V

    return-void
.end method

.method public static synthetic $r8$lambda$vHmx3qgCneT0A8OubRJBo85UCF8(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 4

    .line 229
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->finishDraftLoading()V

    .line 230
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadDraftDefinedFrames()V

    .line 231
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/resources/Settings;->locale:Ljava/util/Locale;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getEffectiveLocalizationPatches()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->setLanguage(Ljava/util/Locale;Ljava/util/List;)V

    .line 232
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p0

    invoke-interface {p0}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->getEffectiveLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Linfo/flowersoft/theotown/resources/Resources;->applyFontLocale(Ljava/util/Locale;)V

    .line 233
    sget-object p0, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ThemeManager;->update()V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 151
    invoke-direct {p0}, Lio/blueflower/stapel2d/gamestack/Stage;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->textures:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->tasks:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->completedTasks:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->synchronizedTasks:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->contents:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->files:Ljava/util/List;

    .line 134
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->executor:Ljava/util/concurrent/ExecutorService;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pendingTasks:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 139
    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->taskStartedMS:J

    .line 143
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$1;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pg:Linfo/flowersoft/theotown/util/ProgressSetter;

    .line 152
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/stages/LoadingStage;I)I
    .registers 2

    .line 117
    iput p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->progressDone:I

    return p1
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/stages/LoadingStage;I)I
    .registers 2

    .line 117
    iput p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->progressTotal:I

    return p1
.end method

.method public static getDefaultMusicFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1456
    const-string v1, "music_aeon.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    const-string v1, "music_alice.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    const-string v1, "music_august.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    const-string v1, "music_awake.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    const-string v1, "music_call.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    const-string v1, "music_crush.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    const-string v1, "music_dreamland.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    const-string v1, "music_family.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1464
    const-string v1, "music_fragments.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    const-string v1, "music_hedwig.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    const-string v1, "music_heroofhyrule.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1467
    const-string v1, "music_human.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    const-string v1, "music_june.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    const-string v1, "music_justintime.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    const-string v1, "music_justus.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    const-string v1, "music_legendarybirds1.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1472
    const-string v1, "music_notfarnow.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    const-string v1, "music_quiet.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    const-string v1, "music_remember.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    const-string v1, "music_shesleeps.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    const-string v1, "music_stargazer.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    const-string v1, "music_thecatontheroof.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    const-string v1, "music_twilightyears.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    const-string v1, "music_tt_beginning.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1482
    const-string v1, "music_tt_brickbybrick.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    const-string v1, "music_tt_clockwork.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    const-string v1, "music_tt_concretedreams.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1485
    const-string v1, "music_tt_countryside.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    const-string v1, "music_tt_curious.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1487
    const-string v1, "music_tt_getacab.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    const-string v1, "music_tt_parksidemorning.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    const-string v1, "music_tt_penthouse.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    const-string v1, "music_tt_retroreflectors.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1491
    const-string v1, "music_tt_staircase.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    const-string v1, "music_tt_streetlights.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    const-string v1, "music_tt_traffic.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1494
    const-string v1, "music_tt_urbanoasis.mp3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V
    .registers 5

    .line 776
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-static {p2, v1}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/drawing/FontFactory;->addFont(Lcom/badlogic/gdx/files/FileHandle;)V

    return-void
.end method

.method public final addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;)V
    .registers 6

    .line 780
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-static {p2, v1}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/drawing/FontFactory;->addFont(Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;)V

    return-void
.end method

.method public final addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;F)V
    .registers 7

    .line 784
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-static {p2, v1}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/drawing/FontFactory;->addFont(Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;F)V

    return-void
.end method

.method public final addMusic(Linfo/flowersoft/theotown/resources/MusicBox;Linfo/flowersoft/theotown/resources/MusicBox$Type;Ljava/lang/String;)V
    .registers 8

    .line 1394
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/stages/LoadingStage;->getUserFriendlyMusicName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    .line 1396
    invoke-static {p3, v3}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 1392
    invoke-virtual {p1, p3, v0, p2, v1}, Linfo/flowersoft/theotown/resources/MusicBox;->addMusic(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/resources/MusicBox$Type;Lcom/badlogic/gdx/files/FileHandle;)V

    return-void
.end method

.method public final addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V
    .registers 3

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V
    .registers 6

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "world_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".lby"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->getBitmap(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->addSource(Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;II)V

    return-void
.end method

.method public final analyzeGL()V
    .registers 8

    .line 750
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x1f00

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 751
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0x1f01

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 752
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x1f02

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 753
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 754
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Running OpenGL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-interface {v3, v4, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x40

    .line 757
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 758
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 759
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 760
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xd33

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 761
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    .line 762
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v3, 0x8872

    invoke-interface {v2, v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 763
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_UNITS:I

    .line 765
    sget v0, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_80

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    .line 769
    :cond_80
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget v2, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    .line 770
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 769
    const-string v3, "Max texture size on this system is %dx%d"

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget v2, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_UNITS:I

    .line 772
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 771
    const-string v3, "Max number of texture units is %d"

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final assertPerformance()V
    .registers 9

    .line 728
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max texture size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 729
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max heap size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 731
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Engine consumes "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 732
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getMemoryConsumption()J

    move-result-wide v6

    div-long/2addr v6, v4

    div-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 731
    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 733
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    .line 734
    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ppi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 733
    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 736
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Units: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_UNITS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Max texture size"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    sget v0, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_f8

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_f7

    .line 743
    sget v0, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_UNITS:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_d9

    goto :goto_f7

    .line 744
    :cond_d9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture unit count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_UNITS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is too small for TT in not single mode!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f7
    :goto_f7
    return-void

    .line 740
    :cond_f8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is too small for TT!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkWinter()V
    .registers 3

    .line 393
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/WinterManager;->shouldItBeWinter(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    return-void
.end method

.method public final collectDrafts()V
    .registers 6

    .line 397
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->pluginTextureCache:Z

    const-string v1, "LoadingStage"

    if-eqz v0, :cond_11

    .line 398
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->loadCache()V

    .line 399
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "Loaded plugin texture cache"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 401
    :cond_11
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "Omitted plugin texture cache"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_18
    new-instance v0, Linfo/flowersoft/theotown/resources/ContentCollector;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/ContentCollector;-><init>()V

    .line 405
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->contents:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->files:Ljava/util/List;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pg:Linfo/flowersoft/theotown/util/ProgressSetter;

    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/resources/ContentCollector;->collect(Ljava/util/List;Ljava/util/List;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/util/ProgressSetter;)V

    return-void
.end method

.method public final collectMusic(Ljava/io/File;Ljava/lang/String;Ljava/util/List;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x3

    if-le p4, v0, :cond_5

    goto/16 :goto_81

    .line 1504
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_d

    goto/16 :goto_81

    .line 1509
    :cond_d
    array-length v0, p1

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_81

    aget-object v2, p1, v1

    .line 1510
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1512
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_7e

    .line 1516
    :cond_20
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1520
    :cond_3a
    invoke-interface {p3, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    goto :goto_7e

    .line 1524
    :cond_41
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    const-string v4, ".ogg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1525
    :cond_57
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 1526
    :cond_5b
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    add-int/lit8 v4, p4, 0x1

    .line 1527
    invoke-virtual {p0, v2, v3, p3, v4}, Linfo/flowersoft/theotown/stages/LoadingStage;->collectMusic(Ljava/io/File;Ljava/lang/String;Ljava/util/List;I)V

    :cond_7e
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_81
    :goto_81
    return-void
.end method

.method public final createSkin()V
    .registers 5

    .line 468
    new-instance v0, Lio/blueflower/stapel2d/drawing/Font;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Lio/blueflower/stapel2d/drawing/Font;-><init>(Lio/blueflower/stapel2d/drawing/Shader;Lio/blueflower/stapel2d/drawing/Image;F)V

    .line 469
    new-instance v1, Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-direct {v1, v2, v3, v0}, Lio/blueflower/stapel2d/gui/Skin;-><init>(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;)V

    sput-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    return-void
.end method

.method public final createTexture()Lio/blueflower/stapel2d/drawing/TiledTextureSource;
    .registers 9

    .line 545
    const-string v0, "texture"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 546
    const-string v1, "huge texture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 548
    sget v1, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    const/16 v3, 0x1000

    if-nez v1, :cond_15

    .line 549
    sput v3, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    .line 551
    :cond_15
    sget v1, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    if-lt v1, v3, :cond_da

    const/4 v4, 0x1

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_26

    if-eqz v0, :cond_26

    .line 555
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->useBigTextureIfPossible:Z

    if-eqz v0, :cond_26

    move v0, v4

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Resources;->HUGE_TEXTURE_MODE:Z

    if-eqz v0, :cond_31

    .line 560
    new-instance v0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;

    invoke-direct {v0, v5, v5, v4}, Lio/blueflower/stapel2d/drawing/TiledTextureSource;-><init>(III)V

    goto :goto_36

    .line 562
    :cond_31
    new-instance v0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;

    invoke-direct {v0, v3, v3, v4}, Lio/blueflower/stapel2d/drawing/TiledTextureSource;-><init>(III)V

    .line 566
    :goto_36
    invoke-virtual {p0, v0, v2, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    const/16 v1, 0x400

    .line 569
    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    .line 572
    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    .line 575
    invoke-virtual {p0, v0, v1, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    const/16 v3, 0x800

    .line 578
    invoke-virtual {p0, v0, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    const/16 v4, 0xc00

    .line 581
    invoke-virtual {p0, v0, v4, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    .line 584
    invoke-virtual {p0, v0, v4, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    .line 585
    invoke-virtual {p0, v0, v1, v4}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    .line 588
    invoke-virtual {p0, v0, v2, v3}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    .line 591
    invoke-virtual {p0, v0, v2, v4}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    .line 594
    invoke-virtual {p0, v0, v3, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    .line 595
    invoke-virtual {p0, v0, v3, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTextureSource(Lio/blueflower/stapel2d/drawing/TiledTextureSource;II)V

    .line 603
    new-instance v1, Lio/blueflower/stapel2d/drawing/Texture;

    invoke-direct {v1, v0}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    sput-object v1, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    .line 605
    new-instance v3, Lio/blueflower/stapel2d/drawing/Image;

    invoke-direct {v3, v1}, Lio/blueflower/stapel2d/drawing/Image;-><init>(Lio/blueflower/stapel2d/drawing/Texture;)V

    sput-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v1, 0x0

    .line 606
    invoke-virtual {v3, v1, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 607
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Texture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v1, v1, v4, v5}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 610
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v3, v1, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 611
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v3, v1, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 612
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v3, v1, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 614
    filled-new-array {v2}, [I

    move-result-object v1

    .line 617
    new-instance v2, Linfo/flowersoft/theotown/draftloader/FrameList;

    invoke-direct {v2}, Linfo/flowersoft/theotown/draftloader/FrameList;-><init>()V

    const/16 v6, 0x800

    const/16 v7, 0x800

    const/4 v3, 0x0

    const/16 v4, 0x800

    const/16 v5, 0x800

    .line 619
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    .line 620
    sget-boolean v3, Linfo/flowersoft/theotown/resources/Resources;->HUGE_TEXTURE_MODE:Z

    if-eqz v3, :cond_c3

    const/16 v6, 0x1000

    const/16 v7, 0x1000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1000

    .line 621
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    const/16 v4, 0x1000

    const/4 v5, 0x0

    .line 622
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    const/16 v5, 0x1000

    .line 623
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/FrameList;->add(IIIII)V

    .line 626
    :cond_c3
    new-instance v3, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0, v2, v1}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda23;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;Linfo/flowersoft/theotown/draftloader/FrameList;[I)V

    .line 659
    new-instance v2, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda24;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;[ILjava/lang/Runnable;)V

    sput-object v2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->outOfSpaceHandler:Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;

    .line 698
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->textures:Ljava/util/List;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-object v0

    .line 552
    :cond_da
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This game requires a texture size of at least 4096. However, your device only supports up to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drop()V
    .registers 3

    .line 1744
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->startScreenDrawer:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->dispose()V

    .line 1746
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->taskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 1748
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 1749
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->taskFuture:Ljava/util/concurrent/Future;

    .line 1751
    :cond_10
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1753
    invoke-super {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->drop()V

    const/4 v0, 0x0

    .line 1756
    sput v0, Linfo/flowersoft/theotown/resources/Settings;->failedStartupCtr:I

    .line 1757
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    return-void
.end method

.method public enter()V
    .registers 4

    .line 1762
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/Watchdog;->start()V

    .line 1763
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->INSTANCE:Linfo/flowersoft/theotown/ui/CursorManager;

    sget-object v1, Linfo/flowersoft/theotown/ui/CursorType;->Wait:Linfo/flowersoft/theotown/ui/CursorType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorManager;->setCursor(Linfo/flowersoft/theotown/ui/CursorType;Z)V

    return-void
.end method

.method public final executeSyncJob(Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1729
    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 1730
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->synchronizedTasks:Ljava/util/List;

    monitor-enter p1

    .line 1731
    :try_start_9
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->synchronizedTasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1732
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1b

    .line 1734
    :try_start_f
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_12} :catch_15
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    .line 1738
    throw p1

    :catch_15
    move-exception p1

    .line 1736
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :catchall_1b
    move-exception v0

    .line 1732
    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public final finishDraftLoading()V
    .registers 2

    .line 442
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->saveCache()V

    .line 443
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->afterLoading()V

    .line 445
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->contentLoader:Linfo/flowersoft/theotown/draftloader/ContentLoader;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->fixDrafts()V

    .line 446
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->contentLoader:Linfo/flowersoft/theotown/draftloader/ContentLoader;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->analyzeContents()V

    .line 448
    invoke-static {}, Linfo/flowersoft/theotown/InAppHandler;->getInstance()Linfo/flowersoft/theotown/InAppHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/InAppHandler;->init()V

    .line 449
    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/PluginUnloader;->saveState()V

    return-void
.end method

.method public final getBitmap(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;
    .registers 3

    .line 705
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$6;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/LoadingStage$6;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNameById(I)Lio/blueflower/stapel2d/util/Getter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$5;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/LoadingStage$5;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;I)V

    return-object v0
.end method

.method public final getUserFriendlyMusicName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_51

    .line 1432
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_51

    :cond_9
    const/16 v0, 0x2e

    .line 1437
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1a

    .line 1438
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1441
    :cond_1a
    const-string v0, "music_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x6

    .line 1442
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1444
    :cond_27
    const-string v0, "tt_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x3

    .line 1445
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1448
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1433
    :cond_51
    :goto_51
    const-string p1, "<empty>"

    return-object p1
.end method

.method public final initScripts()V
    .registers 5

    .line 367
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 368
    const-string v1, "initBase"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 369
    const-string v1, "earlyInit"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 370
    const-string v1, "init"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 371
    const-string v1, "lateInit"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 372
    const-string v1, "load"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->updateDraftCallbacks()V

    .line 375
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Linfo/flowersoft/theotown/stages/LoadingStage$3;

    invoke-direct {v3, p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage$3;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method public leave()V
    .registers 4

    .line 1768
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/Watchdog;->stop()V

    .line 1769
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->INSTANCE:Linfo/flowersoft/theotown/ui/CursorManager;

    sget-object v1, Linfo/flowersoft/theotown/ui/CursorType;->Normal:Linfo/flowersoft/theotown/ui/CursorType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorManager;->setCursor(Linfo/flowersoft/theotown/ui/CursorType;Z)V

    return-void
.end method

.method public final loadDarkSkin()V
    .registers 9

    .line 914
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    sput-object v0, Linfo/flowersoft/theotown/resources/Resources;->skinLight:Lio/blueflower/stapel2d/gui/Skin;

    .line 915
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 916
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skinLight:Lio/blueflower/stapel2d/gui/Skin;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Skin;->copyAll()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v1

    .line 917
    sput-object v1, Linfo/flowersoft/theotown/resources/Resources;->skinDark:Lio/blueflower/stapel2d/gui/Skin;

    .line 920
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    .line 921
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    .line 922
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    .line 923
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE_LIGHT:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    .line 924
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    .line 925
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    .line 926
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    .line 927
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_ORANGE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    .line 928
    new-instance v3, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v4, 0x18

    invoke-direct {v3, v4, v4, v4}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    .line 929
    new-instance v3, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v4, 0x37

    invoke-direct {v3, v4, v4, v4}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    .line 930
    new-instance v3, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v4, 0x2d

    invoke-direct {v3, v4, v4, v4}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    .line 931
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const v5, 0x3f333333    # 0.7f

    invoke-static {v5, v3, v4}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    iput-object v5, v1, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v5, 0x3f000000    # 0.5f

    .line 932
    invoke-static {v5, v3, v4}, Lio/blueflower/stapel2d/drawing/Colors;->interpolate(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    .line 933
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    .line 934
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    iput-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v2, 0x45400000    # 3072.0f

    const/4 v3, 0x0

    .line 937
    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/drawing/Image;->setOffset(FF)V

    .line 938
    invoke-virtual {v0, v5, v5}, Lio/blueflower/stapel2d/drawing/Image;->setScale(FF)V

    const/4 v2, 0x1

    .line 939
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 940
    invoke-virtual {v0, v2, v3, v4, v4}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v5

    iput v5, v1, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    .line 941
    iput v5, v1, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    const/high16 v5, 0x42f00000    # 120.0f

    .line 942
    invoke-virtual {v0, v5, v3, v4, v4}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v6

    iput v6, v1, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    const/high16 v6, 0x41f00000    # 30.0f

    .line 943
    invoke-virtual {v0, v2, v6, v4, v4}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v7

    iput v7, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    const/high16 v7, 0x42700000    # 60.0f

    .line 944
    invoke-virtual {v0, v2, v7, v4, v4}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v2

    iput v2, v1, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    .line 945
    invoke-virtual {v0, v5, v7, v4, v4}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v2

    iput v2, v1, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    .line 946
    invoke-virtual {v0, v5, v6, v4, v4}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v2

    iput v2, v1, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    const/high16 v2, 0x43160000    # 150.0f

    const/high16 v4, 0x41c00000    # 24.0f

    .line 947
    invoke-virtual {v0, v2, v3, v4, v4}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v2

    iput v2, v1, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    const/high16 v2, 0x44400000    # 768.0f

    const/high16 v4, 0x41800000    # 16.0f

    .line 950
    invoke-virtual {v0, v2, v3, v4, v4}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v2

    iput v2, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    const/high16 v2, 0x444c0000    # 816.0f

    .line 951
    invoke-virtual {v0, v2, v3, v4, v4}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v3

    iput v3, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v5, 0x41700000    # 15.0f

    .line 952
    invoke-virtual {v0, v2, v3, v4, v5}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v2

    iput v2, v1, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    .line 954
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Image;->resetScale()V

    .line 955
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Image;->resetOffset()V

    return-void
.end method

.method public final loadDraftDefinedFrames()V
    .registers 7

    .line 1351
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 1354
    const-string v1, "$anim_people_source01"

    const-class v2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    .line 1355
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FRAME_PEOPLE"

    invoke-interface {v1, v5, v4}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MINER:I

    .line 1357
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_WORKMAN:I

    .line 1358
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x2

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_ROADWORKER:I

    .line 1359
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x3

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_WORKER:I

    .line 1360
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x4

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MEDIC:I

    .line 1361
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x5

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_LAWYER:I

    .line 1362
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x6

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MECHANIC:I

    .line 1363
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x7

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MANAGER:I

    .line 1364
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x8

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICER:I

    .line 1365
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x9

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_JUDGE:I

    .line 1366
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0xa

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MAYOR:I

    .line 1367
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0xb

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_SERVANT:I

    .line 1368
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0xc

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MUSICIAN:I

    .line 1369
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0xd

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_NONE:I

    .line 1370
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0xe

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICEWORKER:I

    .line 1371
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0xf

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_PROSTITUTE:I

    .line 1372
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x10

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GRANDMA_DONT_USE:I

    .line 1373
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x11

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_PRIEST:I

    .line 1374
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x12

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_WIZARD:I

    .line 1375
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x13

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_TEACHER0:I

    .line 1376
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x14

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_SWAT:I

    .line 1377
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x15

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_TEACHER1:I

    .line 1378
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x16

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GARBAGE_COLLECTOR:I

    .line 1379
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x17

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_SOLDIER:I

    .line 1380
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x18

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GENERAL:I

    .line 1381
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x19

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_RANGER:I

    .line 1382
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x1a

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_FIREFIGHTER0:I

    .line 1383
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x1b

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_FIREFIGHTER1:I

    .line 1384
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x1c

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GIRL:I

    .line 1385
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    const/16 v5, 0x1d

    invoke-virtual {v0, v1, v4, v5}, Lio/blueflower/stapel2d/drawing/Image;->setType(III)V

    .line 1387
    const-string v1, "$anim_store_report00"

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v1, v1, v3

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REPORT:I

    .line 1388
    invoke-virtual {v0, v1, v4}, Lio/blueflower/stapel2d/drawing/Image;->setType(II)V

    return-void
.end method

.method public final loadDrafts()V
    .registers 6

    .line 420
    new-instance v0, Linfo/flowersoft/theotown/draftloader/ContentLoader;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->contentLoader:Linfo/flowersoft/theotown/draftloader/ContentLoader;

    .line 421
    invoke-static {}, Linfo/flowersoft/theotown/resources/ContentCollector;->getPatchStrings()Ljava/util/List;

    move-result-object v0

    .line 422
    sget-object v1, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->INSTANCE:Linfo/flowersoft/theotown/resources/PluginScriptPolicy;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->begin()V

    .line 424
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->contentLoader:Linfo/flowersoft/theotown/draftloader/ContentLoader;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->contents:Ljava/util/List;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pg:Linfo/flowersoft/theotown/util/ProgressSetter;

    invoke-virtual {v2, v0, v3, v4}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->loadContents(Ljava/util/List;Ljava/util/List;Linfo/flowersoft/theotown/util/ProgressSetter;)V

    .line 429
    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->end()V

    .line 431
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->contentLoader:Linfo/flowersoft/theotown/draftloader/ContentLoader;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->logPlugins()V

    .line 432
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->contentLoader:Linfo/flowersoft/theotown/draftloader/ContentLoader;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draftloader/ContentLoader;->validateDrafts()V

    .line 433
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/Ground;->resolveDefaultWater()V

    .line 434
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/Road;->init()V

    .line 436
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->finalizeScripts()V

    .line 438
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lua stats precompile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getPrecompileMS()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms, compile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCompileMS()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms, init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInitMS()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LoadingStage"

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadFonts()V
    .registers 15

    .line 788
    const-string v0, "font"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 789
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 791
    sget-object v3, Linfo/flowersoft/theotown/resources/Settings;->missingChars:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 792
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing chars: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Linfo/flowersoft/theotown/resources/Settings;->missingChars:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "Font loader"

    invoke-interface {v3, v6, v4, v5}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_2c
    new-instance v7, Linfo/flowersoft/theotown/drawing/FontFactory;

    invoke-direct {v7}, Linfo/flowersoft/theotown/drawing/FontFactory;-><init>()V

    .line 796
    sput-object v7, Linfo/flowersoft/theotown/resources/Resources;->fontFactory:Linfo/flowersoft/theotown/drawing/FontFactory;

    .line 798
    const-string v3, " ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00dc0123456789.,!?:;-=+/*_&()\u20ac@abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00fc\u00df#\'%<>{}[]$\\\""

    invoke-virtual {v7, v3}, Linfo/flowersoft/theotown/drawing/FontFactory;->addPreloadedChars(Ljava/lang/String;)V

    .line 799
    const-string v3, "\u20ae"

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x54

    invoke-virtual {v7, v3, v4}, Linfo/flowersoft/theotown/drawing/FontFactory;->addReplacement(II)V

    const/16 v3, 0x202f

    const/16 v4, 0x20

    .line 800
    invoke-virtual {v7, v3, v4}, Linfo/flowersoft/theotown/drawing/FontFactory;->addReplacement(II)V

    .line 801
    new-instance v3, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda29;

    invoke-direct {v3}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {v7, v3}, Linfo/flowersoft/theotown/drawing/FontFactory;->setMissingCharListener(Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;)V

    .line 808
    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v3, "comic sans"

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 809
    const-string v0, "font_comic_sans.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 812
    :cond_64
    const-string v0, "font_cabin.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 813
    const-string v0, "font_firasans.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 814
    const-string v0, "font_kanit.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 815
    const-string v0, "font_notosans.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 816
    const-string v0, "ja"

    invoke-static {v0}, Linfo/flowersoft/theotown/drawing/FontFactory;->getLanguageAffinity(Ljava/lang/String;)Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;

    move-result-object v0

    const-string v3, "font_notosans_jp.otf"

    invoke-virtual {p0, v7, v3, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;)V

    .line 817
    const-string v0, "ko"

    invoke-static {v0}, Linfo/flowersoft/theotown/drawing/FontFactory;->getLanguageAffinity(Ljava/lang/String;)Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;

    move-result-object v0

    const-string v3, "font_notosans_kr.otf"

    invoke-virtual {p0, v7, v3, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;)V

    .line 818
    const-string v0, "font_notosans_sc.otf"

    const-string v3, "zh"

    invoke-static {v3}, Linfo/flowersoft/theotown/drawing/FontFactory;->getLanguageAffinity(Ljava/lang/String;)Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;

    move-result-object v4

    invoke-virtual {p0, v7, v0, v4}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;)V

    .line 819
    const-string v0, "font_notosans_tc.otf"

    invoke-static {v3}, Linfo/flowersoft/theotown/drawing/FontFactory;->getLanguageAffinity(Ljava/lang/String;)Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;

    move-result-object v3

    invoke-virtual {p0, v7, v0, v3}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;)V

    .line 820
    const-string v0, "ar"

    invoke-static {v0}, Linfo/flowersoft/theotown/drawing/FontFactory;->getLanguageAffinity(Ljava/lang/String;)Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;

    move-result-object v0

    const/high16 v3, 0x3f000000    # 0.5f

    const-string v4, "font_notosans_ar.ttf"

    invoke-virtual {p0, v7, v4, v0, v3}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;F)V

    .line 821
    const-string v0, "font_messiri.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 822
    const-string v0, "font_heptaslab.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 823
    const-string v0, "font_emoji.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 824
    const-string v0, "font_tagalog.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 825
    const-string v0, "font_notosans_hb.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 826
    const-string v0, "font_notosans_mm.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 827
    const-string v0, "font_notosans_math.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 828
    const-string v0, "font_notosans_symbols.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 829
    const-string v0, "font_notosans_dv.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 830
    const-string v0, "font_notosans_bg.ttf"

    invoke-virtual {p0, v7, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addFont(Linfo/flowersoft/theotown/drawing/FontFactory;Ljava/lang/String;)V

    .line 832
    new-instance v0, Lio/blueflower/stapel2d/drawing/Shader;

    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v4, "shader_default_vs.lby"

    .line 834
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 833
    invoke-interface {v3, v4}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->normalizeShaderCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v5, "shader_font_fs.lby"

    .line 836
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 835
    invoke-interface {v4, v5}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->normalizeShaderCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lio/blueflower/stapel2d/drawing/Shader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    sput-object v0, Linfo/flowersoft/theotown/resources/Resources;->SHADER_FONT:Lio/blueflower/stapel2d/drawing/Shader;

    .line 840
    new-instance v13, Linfo/flowersoft/theotown/SDFFontModifier;

    const/4 v3, 0x5

    invoke-direct {v13, v3}, Linfo/flowersoft/theotown/SDFFontModifier;-><init>(I)V

    .line 841
    const-string v3, "small size"

    const/16 v4, 0x12

    invoke-virtual {v1, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 842
    const-string v4, "medium size"

    const/16 v5, 0x16

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 843
    const-string v4, "big size"

    const/16 v5, 0x24

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x2

    const/16 v9, 0x400

    const/16 v10, 0x200

    .line 844
    invoke-virtual/range {v7 .. v13}, Linfo/flowersoft/theotown/drawing/FontFactory;->generate(IIIFILinfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v4

    .line 847
    new-instance v5, Lio/blueflower/stapel2d/drawing/Font;

    int-to-float v3, v3

    int-to-float v6, v8

    div-float/2addr v3, v6

    invoke-direct {v5, v0, v4, v3}, Lio/blueflower/stapel2d/drawing/Font;-><init>(Lio/blueflower/stapel2d/drawing/Shader;Lio/blueflower/stapel2d/drawing/Image;F)V

    iput-object v5, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 848
    new-instance v3, Lio/blueflower/stapel2d/drawing/Font;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4, v5}, Lio/blueflower/stapel2d/drawing/Font;-><init>(Lio/blueflower/stapel2d/drawing/Shader;Lio/blueflower/stapel2d/drawing/Image;F)V

    iput-object v3, v2, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 849
    new-instance v3, Lio/blueflower/stapel2d/drawing/Font;

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-direct {v3, v0, v4, v1}, Lio/blueflower/stapel2d/drawing/Font;-><init>(Lio/blueflower/stapel2d/drawing/Shader;Lio/blueflower/stapel2d/drawing/Image;F)V

    iput-object v3, v2, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 851
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/gamestack/TranslationManager;->getEffectiveLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v7, v0}, Linfo/flowersoft/theotown/drawing/FontFactory;->setLocale(Ljava/util/Locale;)V

    .line 852
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->fontScaling:I

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->applyFontScaling(I)V

    return-void
.end method

.method public final loadFrames()V
    .registers 21

    .line 959
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 v1, 0x45400000    # 3072.0f

    const/4 v10, 0x0

    .line 961
    invoke-virtual {v0, v1, v10}, Lio/blueflower/stapel2d/drawing/Image;->setOffset(FF)V

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 962
    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->setScale(FF)V

    const/4 v1, 0x1

    .line 963
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v7, 0x43a90000    # 338.0f

    const/high16 v3, 0x43240000    # 164.0f

    .line 964
    invoke-virtual {v0, v7, v3, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->NP_UI_PAUSE:I

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v4, 0x41f00000    # 30.0f

    .line 965
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->NP_TUTORIAL_MARK:I

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v3, 0x43870000    # 270.0f

    .line 966
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->NP_TUTORIAL_UNMARK:I

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x431f0000    # 159.0f

    const/high16 v4, 0x42b40000    # 90.0f

    .line 967
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->NP_REGION_BORDER:I

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x42540000    # 53.0f

    const/high16 v4, 0x41f80000    # 31.0f

    .line 968
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x43420000    # 194.0f

    .line 969
    invoke-virtual {v0, v7, v3, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_CIRCLE:I

    const/high16 v1, 0x43bf0000    # 382.0f

    const/high16 v2, 0x42bc0000    # 94.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x44684000    # 929.0f

    .line 970
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOGO_THEOTOWN:I

    const/high16 v1, 0x43400000    # 192.0f

    const/high16 v2, 0x42c00000    # 96.0f

    const/high16 v3, 0x44680000    # 928.0f

    .line 973
    invoke-virtual {v0, v10, v3, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    const/high16 v3, 0x43400000    # 192.0f

    const/high16 v4, 0x44680000    # 928.0f

    .line 974
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41400000    # 12.0f

    const v1, 0x43928000    # 293.0f

    const/high16 v2, 0x42740000    # 61.0f

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v4, 0x42480000    # 50.0f

    .line 976
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_HALO:I

    const/high16 v1, 0x43880000    # 272.0f

    const/high16 v2, 0x43200000    # 160.0f

    const/high16 v3, 0x43b80000    # 368.0f

    .line 977
    invoke-virtual {v0, v3, v10, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SHOPITEM_BACKGROUND:I

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x41f80000    # 31.0f

    .line 978
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_Y:I

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v3, 0x41a80000    # 21.0f

    .line 979
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_X:I

    const/high16 v1, 0x41900000    # 18.0f

    const v3, 0x43ac8000    # 345.0f

    const/high16 v4, 0x42740000    # 61.0f

    .line 980
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_MX:I

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v2, 0x421c0000    # 39.0f

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41800000    # 16.0f

    .line 981
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOUCH_POINT:I

    const/high16 v1, 0x43220000    # 162.0f

    const/high16 v11, 0x42500000    # 52.0f

    .line 983
    invoke-virtual {v0, v11, v1, v11, v11}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROCKETAIMTOOL:I

    const/high16 v1, 0x43220000    # 162.0f

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42d40000    # 106.0f

    .line 984
    invoke-virtual {v0, v3, v1, v2, v11}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_INHABITANTS:I

    .line 986
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Image;->resetScale()V

    .line 987
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Image;->resetOffset()V

    const v1, 0x4403c000    # 527.0f

    const/high16 v12, 0x41d00000    # 26.0f

    .line 991
    invoke-virtual {v0, v10, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    const v2, 0x440a4000    # 553.0f

    .line 992
    invoke-virtual {v0, v10, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v3

    sput v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESIDENTIAL:I

    const v3, 0x4410c000    # 579.0f

    .line 993
    invoke-virtual {v0, v10, v3, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v4

    sput v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_COMMERCIAL:I

    const v4, 0x44174000    # 605.0f

    .line 994
    invoke-virtual {v0, v10, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_INDUSTRIAL:I

    const/high16 v5, 0x43d00000    # 416.0f

    const v6, 0x4444c000    # 787.0f

    .line 995
    invoke-virtual {v0, v5, v6, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESIDENTIAL_LVL2:I

    const v5, 0x444b4000    # 813.0f

    .line 996
    invoke-virtual {v0, v7, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_COMMERCIAL_LVL2:I

    const/high16 v5, 0x43b60000    # 364.0f

    const v6, 0x444b4000    # 813.0f

    .line 997
    invoke-virtual {v0, v5, v6, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_INDUSTRIAL_LVL2:I

    const v5, 0x444b4000    # 813.0f

    const/high16 v6, 0x43c30000    # 390.0f

    .line 998
    invoke-virtual {v0, v6, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_FARM:I

    const/high16 v5, 0x43d00000    # 416.0f

    const v8, 0x444b4000    # 813.0f

    .line 999
    invoke-virtual {v0, v5, v8, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_HARBOR:I

    .line 1000
    invoke-virtual {v0, v12, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    .line 1001
    invoke-virtual {v0, v12, v3, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    .line 1002
    invoke-virtual {v0, v12, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    .line 1003
    invoke-virtual {v0, v11, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD:I

    .line 1004
    invoke-virtual {v0, v11, v3, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_SMALL:I

    .line 1005
    invoke-virtual {v0, v11, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_PARK:I

    const/high16 v5, 0x429c0000    # 78.0f

    .line 1006
    invoke-virtual {v0, v5, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_PUBLIC:I

    const/high16 v5, 0x429c0000    # 78.0f

    .line 1007
    invoke-virtual {v0, v5, v3, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAD:I

    const/high16 v5, 0x429c0000    # 78.0f

    .line 1008
    invoke-virtual {v0, v5, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_SAVE:I

    const/high16 v5, 0x42d00000    # 104.0f

    .line 1009
    invoke-virtual {v0, v5, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_MAP:I

    const/high16 v5, 0x42d00000    # 104.0f

    .line 1010
    invoke-virtual {v0, v5, v3, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_PAUSE:I

    const/high16 v5, 0x42d00000    # 104.0f

    .line 1011
    invoke-virtual {v0, v5, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY:I

    const v5, 0x441dc000    # 631.0f

    .line 1012
    invoke-virtual {v0, v10, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v8

    sput v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFAST:I

    .line 1013
    invoke-virtual {v0, v12, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v8

    sput v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOSE:I

    .line 1014
    invoke-virtual {v0, v11, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v8

    sput v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC:I

    const/high16 v8, 0x439c0000    # 312.0f

    .line 1015
    invoke-virtual {v0, v8, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUS_TRANSPORT:I

    .line 1016
    invoke-virtual {v0, v8, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_SUPPLY:I

    const/high16 v9, 0x429c0000    # 78.0f

    .line 1017
    invoke-virtual {v0, v9, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_SETTINGS:I

    const/high16 v9, 0x42d00000    # 104.0f

    .line 1018
    invoke-virtual {v0, v9, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_MENU:I

    const v9, 0x44244000    # 657.0f

    .line 1019
    invoke-virtual {v0, v10, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_FORWARD:I

    .line 1020
    invoke-virtual {v0, v12, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    const v13, 0x4551e000    # 3358.0f

    const v14, 0x438a8000    # 277.0f

    .line 1021
    invoke-virtual {v0, v13, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACK_UPWARDS:I

    .line 1022
    invoke-virtual {v0, v11, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESET:I

    const/high16 v13, 0x429c0000    # 78.0f

    .line 1023
    invoke-virtual {v0, v13, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANDOM:I

    const/high16 v13, 0x43900000    # 288.0f

    const/high16 v14, 0x44380000    # 736.0f

    const/high16 v15, 0x42000000    # 32.0f

    .line 1024
    invoke-virtual {v0, v13, v14, v15, v15}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_WIZARD:I

    const/high16 v13, 0x42d00000    # 104.0f

    .line 1025
    invoke-virtual {v0, v13, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_WATER:I

    const/high16 v13, 0x43020000    # 130.0f

    .line 1026
    invoke-virtual {v0, v13, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_ENERGY:I

    const/high16 v13, 0x43020000    # 130.0f

    .line 1027
    invoke-virtual {v0, v13, v3, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIC:I

    const/high16 v13, 0x43020000    # 130.0f

    .line 1028
    invoke-virtual {v0, v13, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_POLICE:I

    const/high16 v13, 0x43020000    # 130.0f

    .line 1029
    invoke-virtual {v0, v13, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_FIREDEPARTMENT:I

    const/high16 v13, 0x43020000    # 130.0f

    .line 1030
    invoke-virtual {v0, v13, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDUCATION:I

    const/high16 v13, 0x431c0000    # 156.0f

    .line 1031
    invoke-virtual {v0, v13, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_ZONES:I

    const/high16 v13, 0x431c0000    # 156.0f

    .line 1032
    invoke-virtual {v0, v13, v3, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_CAMERA:I

    const/high16 v13, 0x431c0000    # 156.0f

    .line 1033
    invoke-virtual {v0, v13, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    const/high16 v13, 0x431c0000    # 156.0f

    .line 1034
    invoke-virtual {v0, v13, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_DEBUGINFO:I

    const/high16 v13, 0x431c0000    # 156.0f

    .line 1035
    invoke-virtual {v0, v13, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v13

    sput v13, Linfo/flowersoft/theotown/resources/Resources;->ICON_AWARD:I

    const v13, 0x442ac000    # 683.0f

    .line 1036
    invoke-virtual {v0, v10, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v14

    sput v14, Linfo/flowersoft/theotown/resources/Resources;->ICON_MUSIC:I

    .line 1037
    invoke-virtual {v0, v12, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v14

    sput v14, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    .line 1038
    invoke-virtual {v0, v11, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v14

    sput v14, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    const/high16 v14, 0x429c0000    # 78.0f

    .line 1039
    invoke-virtual {v0, v14, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v14

    sput v14, Linfo/flowersoft/theotown/resources/Resources;->ICON_INFO:I

    const/high16 v14, 0x42d00000    # 104.0f

    .line 1040
    invoke-virtual {v0, v14, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v14

    sput v14, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFASTFAST:I

    const/high16 v14, 0x43020000    # 130.0f

    .line 1041
    invoke-virtual {v0, v14, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v14

    sput v14, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCATE:I

    const/high16 v14, 0x431c0000    # 156.0f

    .line 1042
    invoke-virtual {v0, v14, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v14

    sput v14, Linfo/flowersoft/theotown/resources/Resources;->ICON_TERRAIN:I

    const v14, 0x44314000    # 709.0f

    .line 1043
    invoke-virtual {v0, v10, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v16

    sput v16, Linfo/flowersoft/theotown/resources/Resources;->ICON_LAND:I

    .line 1044
    invoke-virtual {v0, v12, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v16

    sput v16, Linfo/flowersoft/theotown/resources/Resources;->ICON_RIVER:I

    .line 1045
    invoke-virtual {v0, v11, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v16

    sput v16, Linfo/flowersoft/theotown/resources/Resources;->ICON_TREE:I

    const/high16 v10, 0x429c0000    # 78.0f

    .line 1046
    invoke-virtual {v0, v10, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v10

    sput v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_TURN_RIGHT:I

    const/high16 v10, 0x42d00000    # 104.0f

    .line 1047
    invoke-virtual {v0, v10, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v10

    sput v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_TURN_LEFT:I

    const/high16 v10, 0x431c0000    # 156.0f

    .line 1048
    invoke-virtual {v0, v10, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v10

    sput v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    const/high16 v10, 0x43360000    # 182.0f

    .line 1049
    invoke-virtual {v0, v10, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v17

    sput v17, Linfo/flowersoft/theotown/resources/Resources;->ICON_SPORTS:I

    .line 1050
    invoke-virtual {v0, v10, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v17

    sput v17, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    .line 1051
    invoke-virtual {v0, v10, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v17

    sput v17, Linfo/flowersoft/theotown/resources/Resources;->ICON_CALL_FIREDEPARTMENT:I

    const v15, 0x44468000    # 794.0f

    .line 1052
    invoke-virtual {v0, v8, v15, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v15

    sput v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_CALL_MEDIC:I

    const/high16 v15, 0x444d0000    # 820.0f

    const/high16 v3, 0x43500000    # 208.0f

    .line 1053
    invoke-virtual {v0, v3, v15, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v15

    sput v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_CALL_POLICE:I

    .line 1054
    invoke-virtual {v0, v10, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v15

    sput v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_SMALL_MAP:I

    .line 1055
    invoke-virtual {v0, v3, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v15

    sput v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_BIG_MAP:I

    .line 1056
    invoke-virtual {v0, v3, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v15

    sput v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_BIGBIGEXTRA_MAP:I

    .line 1057
    invoke-virtual {v0, v3, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v15

    sput v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_BIGBIGBIG_MAP:I

    const/high16 v15, 0x444d0000    # 820.0f

    .line 1058
    invoke-virtual {v0, v8, v15, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v15

    sput v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_SERVICE:I

    .line 1059
    invoke-virtual {v0, v3, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v15

    sput v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_GAMEMODE_EASY:I

    const/high16 v15, 0x436a0000    # 234.0f

    .line 1060
    invoke-virtual {v0, v15, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v15

    sput v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_GAMEMODE_MIDDLE:I

    const/high16 v15, 0x43820000    # 260.0f

    .line 1061
    invoke-virtual {v0, v15, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v18

    sput v18, Linfo/flowersoft/theotown/resources/Resources;->ICON_GAMEMODE_HARD:I

    const v5, 0x4549c000    # 3228.0f

    const v9, 0x438a8000    # 277.0f

    .line 1062
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_GAMEMODE_SANDBOX:I

    .line 1063
    invoke-virtual {v0, v8, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_RELIGION:I

    const/high16 v5, 0x43b60000    # 364.0f

    .line 1064
    invoke-virtual {v0, v5, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_CATASTROPHES:I

    .line 1065
    invoke-virtual {v0, v6, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_FIRE:I

    const/high16 v5, 0x43d00000    # 416.0f

    .line 1066
    invoke-virtual {v0, v5, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_METEOR:I

    const v5, 0x4437c000    # 735.0f

    .line 1067
    invoke-virtual {v0, v7, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_EARTHQUAKE:I

    const/high16 v5, 0x43b60000    # 364.0f

    const v9, 0x4437c000    # 735.0f

    .line 1068
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_ILLNESS:I

    const v5, 0x4437c000    # 735.0f

    .line 1069
    invoke-virtual {v0, v6, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_FLOODING:I

    const/high16 v5, 0x43d00000    # 416.0f

    .line 1070
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_GODZILLA:I

    const v5, 0x4444c000    # 787.0f

    .line 1071
    invoke-virtual {v0, v6, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_NUKE:I

    const v5, 0x4451c000    # 839.0f

    .line 1072
    invoke-virtual {v0, v7, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_TORNADO:I

    const/high16 v5, 0x436a0000    # 234.0f

    const/high16 v9, 0x444d0000    # 820.0f

    .line 1073
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_RIOT:I

    .line 1074
    invoke-virtual {v0, v10, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_UFO:I

    const v5, 0x443e4000    # 761.0f

    .line 1075
    invoke-virtual {v0, v7, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOISE:I

    const/high16 v5, 0x43b60000    # 364.0f

    const v9, 0x443e4000    # 761.0f

    .line 1076
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_POLLUTION:I

    const v5, 0x443e4000    # 761.0f

    .line 1077
    invoke-virtual {v0, v6, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_PUBLICTRANSPORT:I

    const/high16 v5, 0x43d00000    # 416.0f

    .line 1078
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAN:I

    const v5, 0x4444c000    # 787.0f

    .line 1079
    invoke-virtual {v0, v7, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAN_TAKE:I

    const/high16 v5, 0x43b60000    # 364.0f

    const v9, 0x4444c000    # 787.0f

    .line 1080
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAD_PAYBACK:I

    const/high16 v5, 0x43b60000    # 364.0f

    const v9, 0x4451c000    # 839.0f

    .line 1081
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNTOUCHABLE:I

    const v5, 0x4451c000    # 839.0f

    .line 1082
    invoke-virtual {v0, v6, v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    const/high16 v5, 0x43d00000    # 416.0f

    .line 1083
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_RATING:I

    const/high16 v9, 0x44400000    # 768.0f

    .line 1084
    invoke-virtual {v0, v3, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDUCATION_LOW:I

    const/high16 v5, 0x436a0000    # 234.0f

    .line 1085
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDUCATION_HIGH:I

    .line 1086
    invoke-virtual {v0, v15, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v5

    sput v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_DENSITY:I

    const/high16 v5, 0x438f0000    # 286.0f

    .line 1087
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v19

    sput v19, Linfo/flowersoft/theotown/resources/Resources;->ICON_HAPPINESS:I

    .line 1088
    invoke-virtual {v0, v8, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v19

    sput v19, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL:I

    const v9, 0x44468000    # 794.0f

    .line 1089
    invoke-virtual {v0, v3, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_MAP_SCREENSHOT:I

    const/high16 v9, 0x436a0000    # 234.0f

    const v14, 0x44468000    # 794.0f

    .line 1090
    invoke-virtual {v0, v9, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_SAVE_AND_CLOSE:I

    const v9, 0x44468000    # 794.0f

    .line 1091
    invoke-virtual {v0, v15, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_PREVIOUS:I

    const v9, 0x44468000    # 794.0f

    .line 1092
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    const/high16 v9, 0x444d0000    # 820.0f

    .line 1093
    invoke-virtual {v0, v15, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    const/high16 v9, 0x444d0000    # 820.0f

    .line 1094
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_I:I

    const v9, 0x44538000    # 846.0f

    .line 1095
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_II:I

    const v9, 0x44538000    # 846.0f

    .line 1096
    invoke-virtual {v0, v8, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_III:I

    .line 1097
    invoke-virtual {v0, v12, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_COPY:I

    .line 1098
    invoke-virtual {v0, v11, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC_LIGHTS_ON:I

    const/high16 v9, 0x429c0000    # 78.0f

    .line 1099
    invoke-virtual {v0, v9, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC_LIGHTS_OFF:I

    const/high16 v9, 0x42d00000    # 104.0f

    .line 1100
    invoke-virtual {v0, v9, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_WASTE_DISPOSAL:I

    const/high16 v9, 0x43020000    # 130.0f

    .line 1101
    invoke-virtual {v0, v9, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_DECORATION:I

    const/high16 v9, 0x43b60000    # 364.0f

    const v14, 0x44584000    # 865.0f

    .line 1102
    invoke-virtual {v0, v9, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_DECORATION:I

    const v9, 0x45504000    # 3332.0f

    const v14, 0x438a8000    # 277.0f

    .line 1103
    invoke-virtual {v0, v9, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_FENCE:I

    const/high16 v9, 0x431c0000    # 156.0f

    .line 1104
    invoke-virtual {v0, v9, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_MILITARY:I

    .line 1105
    invoke-virtual {v0, v10, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANK:I

    .line 1106
    invoke-virtual {v0, v3, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_AUTOROAD:I

    .line 1107
    invoke-virtual {v0, v10, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    .line 1108
    invoke-virtual {v0, v3, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_MINUS:I

    const v9, 0x4410c000    # 579.0f

    .line 1109
    invoke-virtual {v0, v10, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v14

    sput v14, Linfo/flowersoft/theotown/resources/Resources;->ICON_FEATURES:I

    .line 1110
    invoke-virtual {v0, v3, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v14

    sput v14, Linfo/flowersoft/theotown/resources/Resources;->ICON_AIRPORT:I

    const/high16 v9, 0x436a0000    # 234.0f

    .line 1111
    invoke-virtual {v0, v9, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_GROUND:I

    .line 1112
    invoke-virtual {v0, v15, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_BRIDGE:I

    .line 1113
    invoke-virtual {v0, v5, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_AIR:I

    .line 1114
    invoke-virtual {v0, v8, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_UP:I

    .line 1115
    invoke-virtual {v0, v7, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_DOWN:I

    const/high16 v9, 0x454d0000    # 3280.0f

    const v14, 0x438a8000    # 277.0f

    .line 1116
    invoke-virtual {v0, v9, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_CONSTANT:I

    .line 1117
    invoke-virtual {v0, v3, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_STATISTICS:I

    const/high16 v9, 0x43b60000    # 364.0f

    .line 1118
    invoke-virtual {v0, v9, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_RED_BUTTON:I

    .line 1119
    invoke-virtual {v0, v6, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f000000    # 0.5f

    .line 1120
    invoke-virtual {v0, v9, v14}, Lio/blueflower/stapel2d/drawing/Image;->setScale(FF)V

    .line 1121
    invoke-virtual {v0, v6, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND_SMALL:I

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    .line 1122
    invoke-virtual {v0, v9, v14}, Lio/blueflower/stapel2d/drawing/Image;->setScale(FF)V

    const/high16 v9, 0x43d00000    # 416.0f

    .line 1123
    invoke-virtual {v0, v9, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY_AD_VIDEO:I

    const/high16 v9, 0x436a0000    # 234.0f

    const v13, 0x44244000    # 657.0f

    .line 1125
    invoke-virtual {v0, v9, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION:I

    .line 1126
    invoke-virtual {v0, v15, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    .line 1127
    invoke-virtual {v0, v5, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOCK:I

    const v9, 0x45482000    # 3202.0f

    const v14, 0x438a8000    # 277.0f

    .line 1128
    invoke-virtual {v0, v9, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOCK_EMPTY:I

    .line 1129
    invoke-virtual {v0, v8, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_UNDER:I

    .line 1130
    invoke-virtual {v0, v7, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_SIGN:I

    const/high16 v9, 0x43b60000    # 364.0f

    .line 1131
    invoke-virtual {v0, v9, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYSLOW:I

    .line 1132
    invoke-virtual {v0, v6, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_SINGLELANE:I

    const/high16 v9, 0x43d00000    # 416.0f

    .line 1133
    invoke-virtual {v0, v9, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEIGHBORHOOD_COMMERCIAL:I

    const/high16 v9, 0x436a0000    # 234.0f

    const v13, 0x441dc000    # 631.0f

    .line 1134
    invoke-virtual {v0, v9, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROADAUTOJOIN:I

    .line 1135
    invoke-virtual {v0, v15, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_SUNNY:I

    .line 1136
    invoke-virtual {v0, v5, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_RAINY:I

    .line 1137
    invoke-virtual {v0, v8, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v9

    sput v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_LIGHTING:I

    .line 1138
    invoke-virtual {v0, v7, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_CENTER:I

    const/high16 v7, 0x43b60000    # 364.0f

    .line 1139
    invoke-virtual {v0, v7, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_FOG:I

    .line 1140
    invoke-virtual {v0, v6, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE_DROPPER:I

    const/high16 v7, 0x43d00000    # 416.0f

    .line 1141
    invoke-virtual {v0, v7, v13, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_WINTER:I

    const/high16 v7, 0x436a0000    # 234.0f

    .line 1142
    invoke-virtual {v0, v7, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_CHRISTMAS:I

    .line 1143
    invoke-virtual {v0, v15, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROUTE:I

    const v9, 0x4410c000    # 579.0f

    .line 1144
    invoke-virtual {v0, v15, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_PERFORMANCE:I

    .line 1145
    invoke-virtual {v0, v15, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_DAILY_AWARD:I

    .line 1146
    invoke-virtual {v0, v15, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_SHORT_BUILD_TIME:I

    .line 1147
    invoke-virtual {v0, v5, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_HEART:I

    .line 1148
    invoke-virtual {v0, v5, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v7

    sput v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_HALF_TUNNEL_PRICE:I

    .line 1149
    invoke-virtual {v0, v5, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_UP:I

    .line 1150
    invoke-virtual {v0, v5, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_DOWN:I

    .line 1151
    invoke-virtual {v0, v8, v9, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    const v2, 0x44538000    # 846.0f

    .line 1152
    invoke-virtual {v0, v15, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MOVE_BUILDING:I

    .line 1153
    invoke-virtual {v0, v8, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LANDMARK:I

    const/high16 v2, 0x445a0000    # 872.0f

    .line 1154
    invoke-virtual {v0, v5, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_BODY_DISPOSAL:I

    const v2, 0x44584000    # 865.0f

    .line 1155
    invoke-virtual {v0, v6, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_GOLDEN_PRESENT:I

    const v2, 0x45524000    # 3364.0f

    const/high16 v4, 0x42e00000    # 112.0f

    .line 1156
    invoke-virtual {v0, v2, v4, v11, v11}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_INFINITY:I

    const/high16 v2, 0x43260000    # 166.0f

    const v4, 0x44678000    # 926.0f

    .line 1157
    invoke-virtual {v0, v2, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_HELP:I

    const v2, 0x44608000    # 898.0f

    .line 1158
    invoke-virtual {v0, v5, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_HILLS:I

    const v2, 0x4544e000    # 3150.0f

    const v4, 0x438a8000    # 277.0f

    .line 1159
    invoke-virtual {v0, v2, v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v2

    sput v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_FOLLOW_CAR_TOOL:I

    .line 1160
    invoke-virtual {v0, v10, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UBER:I

    const v1, 0x454b6000    # 3254.0f

    const v2, 0x438a8000    # 277.0f

    .line 1161
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_FOLDER:I

    const v1, 0x45538000    # 3384.0f

    .line 1162
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    const v1, 0x45552000    # 3410.0f

    .line 1163
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CONSOLE:I

    const/high16 v1, 0x454f0000    # 3312.0f

    const/high16 v2, 0x437b0000    # 251.0f

    .line 1164
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_STAR:I

    const v1, 0x4550a000    # 3338.0f

    .line 1165
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUGIN:I

    const v1, 0x445a8000    # 874.0f

    .line 1166
    invoke-virtual {v0, v10, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DOWNLOAD:I

    const v1, 0x45524000    # 3364.0f

    .line 1167
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UP:I

    const v1, 0x4553e000    # 3390.0f

    .line 1168
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DOWN:I

    const v1, 0x44fd8000    # 2028.0f

    const/high16 v2, 0x41a00000    # 20.0f

    const v4, 0x45403000    # 3075.0f

    .line 1169
    invoke-virtual {v0, v4, v1, v12, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DESERT:I

    const v1, 0x4550a000    # 3338.0f

    const/high16 v2, 0x43610000    # 225.0f

    .line 1170
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_HAMBURGER:I

    const v1, 0x45524000    # 3364.0f

    .line 1171
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGION_COIN:I

    const v1, 0x4553e000    # 3390.0f

    .line 1172
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ADMIN_NUKE_TOOL:I

    const v1, 0x45558000    # 3416.0f

    .line 1173
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PICKLE_COIN:I

    const v1, 0x4556c000    # 3436.0f

    const/high16 v2, 0x43900000    # 288.0f

    .line 1174
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_SPLIT:I

    const v1, 0x45586000    # 3462.0f

    .line 1175
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_SHOW:I

    const/high16 v1, 0x455a0000    # 3488.0f

    .line 1176
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_HIDE:I

    const v1, 0x455ba000    # 3514.0f

    .line 1177
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_MERGE:I

    const v1, 0x455d4000    # 3540.0f

    .line 1178
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_CIRCLE:I

    const/high16 v1, 0x45600000    # 3584.0f

    const v2, 0x44084000    # 545.0f

    .line 1179
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIUM_MAP:I

    const v1, 0x4561a000    # 3610.0f

    .line 1180
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_BIGBIG_MAP:I

    const v1, 0x45634000    # 3636.0f

    .line 1181
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGIONS:I

    const/high16 v1, 0x45400000    # 3072.0f

    const/high16 v2, 0x44500000    # 832.0f

    .line 1182
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ABOUT:I

    const v1, 0x45468000    # 3176.0f

    .line 1183
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CULTURE:I

    const v1, 0x45434000    # 3124.0f

    .line 1184
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION_NO:I

    const v1, 0x4549c000    # 3228.0f

    .line 1185
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_SCENARIO:I

    const v1, 0x45434000    # 3124.0f

    const v2, 0x44568000    # 858.0f

    .line 1186
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_COLOR:I

    const v1, 0x45468000    # 3176.0f

    .line 1187
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NATURE:I

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v2, 0x41a00000    # 20.0f

    const v4, 0x4549c000    # 3228.0f

    const/high16 v5, 0x43420000    # 194.0f

    .line 1188
    invoke-virtual {v0, v4, v5, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLEAR_TEXT:I

    const v1, 0x45482000    # 3202.0f

    const v2, 0x44568000    # 858.0f

    .line 1189
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CATEGORY:I

    const v1, 0x4549c000    # 3228.0f

    .line 1190
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OTHER:I

    const v1, 0x454b6000    # 3254.0f

    .line 1191
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_COMMENTS:I

    const/high16 v1, 0x454d0000    # 3280.0f

    .line 1192
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_THEMES:I

    const/high16 v1, 0x43ad0000    # 346.0f

    const/high16 v2, 0x44600000    # 896.0f

    .line 1194
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACHIEVEMENTS:I

    const/high16 v1, 0x43a00000    # 320.0f

    .line 1195
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEADERBOARDS:I

    const/high16 v1, 0x43e00000    # 448.0f

    const/high16 v2, 0x442c0000    # 688.0f

    const/high16 v13, 0x42800000    # 64.0f

    const/high16 v4, 0x42000000    # 32.0f

    .line 1197
    invoke-virtual {v0, v1, v2, v13, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUS_STOP:I

    const/high16 v1, 0x43e00000    # 448.0f

    const/high16 v2, 0x44340000    # 720.0f

    .line 1198
    invoke-virtual {v0, v1, v2, v13, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PIPE:I

    const/high16 v1, 0x43e00000    # 448.0f

    const/high16 v2, 0x443c0000    # 752.0f

    .line 1199
    invoke-virtual {v0, v1, v2, v13, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_WIRE:I

    const/high16 v1, 0x43e00000    # 448.0f

    const/high16 v2, 0x44440000    # 784.0f

    .line 1200
    invoke-virtual {v0, v1, v2, v13, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_ANY:I

    const/high16 v1, 0x43e00000    # 448.0f

    const/high16 v2, 0x444c0000    # 816.0f

    .line 1201
    invoke-virtual {v0, v1, v2, v13, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_PIPE:I

    const/high16 v1, 0x43e00000    # 448.0f

    const/high16 v14, 0x44540000    # 848.0f

    .line 1202
    invoke-virtual {v0, v1, v14, v13, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_ZONE:I

    const/high16 v1, 0x44000000    # 512.0f

    const/high16 v2, 0x44340000    # 720.0f

    .line 1203
    invoke-virtual {v0, v1, v2, v13, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_TUNNEL:I

    const/high16 v1, 0x41b00000    # 22.0f

    const/high16 v2, 0x41b00000    # 22.0f

    const v5, 0x4401c000    # 519.0f

    const/high16 v6, 0x44360000    # 728.0f

    .line 1204
    invoke-virtual {v0, v5, v6, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_TUNNEL_SMALL:I

    const/high16 v1, 0x44000000    # 512.0f

    const/high16 v2, 0x443c0000    # 752.0f

    .line 1205
    invoke-virtual {v0, v1, v2, v13, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_UNDERGROUND_WIRE:I

    const/high16 v1, 0x41b00000    # 22.0f

    const/high16 v2, 0x41b00000    # 22.0f

    const/high16 v5, 0x44050000    # 532.0f

    const/high16 v6, 0x443d0000    # 756.0f

    .line 1206
    invoke-virtual {v0, v5, v6, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_UNDERGROUND_WIRE_SMALL:I

    const/high16 v1, 0x44100000    # 576.0f

    const/high16 v2, 0x44380000    # 736.0f

    .line 1207
    invoke-virtual {v0, v1, v2, v13, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_ROAD_DECORATION:I

    const v1, 0x45504000    # 3332.0f

    const v2, 0x438a8000    # 277.0f

    .line 1208
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_FENCE:I

    const/high16 v1, 0x44440000    # 784.0f

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v5, 0x44080000    # 544.0f

    .line 1209
    invoke-virtual {v0, v5, v1, v4, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_METRO_TUNNEL:I

    const/high16 v1, 0x45400000    # 3072.0f

    const/4 v2, 0x0

    .line 1211
    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->setOffset(FF)V

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v4, 0x3e800000    # 0.25f

    .line 1212
    invoke-virtual {v0, v1, v4}, Lio/blueflower/stapel2d/drawing/Image;->setScale(FF)V

    const/high16 v1, 0x43220000    # 162.0f

    .line 1214
    invoke-virtual {v0, v2, v1, v11, v11}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    .line 1215
    invoke-virtual {v0, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->setOffset(FF)V

    .line 1216
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Image;->resetScale()V

    const/high16 v1, 0x43020000    # 130.0f

    const v2, 0x44314000    # 709.0f

    .line 1218
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    .line 1219
    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SEARCH_BUTTON:I

    const/16 v1, 0xa

    .line 1223
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v1, 0x43a00000    # 320.0f

    const/4 v2, 0x0

    move v4, v3

    const/high16 v3, 0x42000000    # 32.0f

    move v7, v4

    const/high16 v4, 0x41800000    # 16.0f

    move v15, v7

    .line 1224
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RESIDENTIAL_ZONE:I

    const/high16 v1, 0x43b00000    # 352.0f

    .line 1225
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_COMMERCIAL_ZONE:I

    const/high16 v1, 0x43c00000    # 384.0f

    .line 1226
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_INDUSTRIAL_ZONE:I

    const/high16 v1, 0x43a00000    # 320.0f

    const/high16 v2, 0x41800000    # 16.0f

    .line 1227
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RESIDENTIAL_LVL2_ZONE:I

    const/high16 v1, 0x43b00000    # 352.0f

    .line 1228
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_COMMERCIAL_LVL2_ZONE:I

    const/high16 v1, 0x43c00000    # 384.0f

    .line 1229
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_INDUSTRIAL_LVL2_ZONE:I

    const/high16 v1, 0x43d00000    # 416.0f

    .line 1230
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_FARM_ZONE:I

    const/high16 v1, 0x43e00000    # 448.0f

    .line 1231
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_HARBOR_ZONE:I

    const/high16 v1, 0x43c00000    # 384.0f

    const v2, 0x4541b000    # 3099.0f

    .line 1232
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_MILITARY_ZONE:I

    const/high16 v1, 0x43d00000    # 416.0f

    .line 1233
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_AIRPORT_ZONE:I

    const/high16 v1, 0x43d00000    # 416.0f

    const/4 v2, 0x0

    .line 1234
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_OTHER_ZONE:I

    const/high16 v1, 0x43600000    # 224.0f

    .line 1235
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_DESTROYED_ZONE:I

    const/4 v1, 0x5

    .line 1237
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    const/high16 v1, 0x43f00000    # 480.0f

    .line 1238
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_BLANK_TILE:I

    const/16 v1, 0x8

    .line 1240
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    const/high16 v1, 0x42c00000    # 96.0f

    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v3, 0x43b00000    # 352.0f

    .line 1241
    invoke-virtual {v0, v3, v1, v13, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_REGION_BORDER:I

    const/16 v1, 0x9

    .line 1243
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    const/high16 v1, 0x43e00000    # 448.0f

    const/4 v2, 0x0

    const/high16 v3, 0x42000000    # 32.0f

    .line 1244
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_REMOVE_TILE:I

    const/4 v1, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    .line 1245
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_WHITE_TILE:I

    const/high16 v1, 0x43f00000    # 480.0f

    const/high16 v3, 0x41800000    # 16.0f

    .line 1246
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    const/high16 v5, -0x3e800000    # -16.0f

    const/high16 v1, 0x43f80000    # 496.0f

    .line 1247
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    const/4 v5, 0x0

    const/high16 v1, 0x43f00000    # 480.0f

    const/4 v2, 0x0

    .line 1248
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    const/high16 v5, -0x3e800000    # -16.0f

    const/high16 v1, 0x43f80000    # 496.0f

    .line 1249
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    const/high16 v1, 0x43800000    # 256.0f

    const/4 v2, 0x0

    .line 1250
    invoke-virtual {v0, v2, v1, v13, v13}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_CAUSTICS1:I

    const/4 v8, 0x0

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v1, 0x0

    const/high16 v2, 0x43600000    # 224.0f

    const/high16 v3, 0x44000000    # 512.0f

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x42000000    # 32.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/16 v7, 0x20

    const/high16 v15, 0x44400000    # 768.0f

    .line 1251
    invoke-virtual/range {v0 .. v9}, Lio/blueflower/stapel2d/drawing/Image;->addStrip(FFFFFFIFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x10

    .line 1252
    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    .line 1253
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x11

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    .line 1254
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x12

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_RED_DOTTED:I

    .line 1255
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x13

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN:I

    .line 1256
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x14

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_RED:I

    .line 1257
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x15

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLUE_DOTTED:I

    .line 1258
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x16

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_TILE:I

    .line 1259
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x17

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLUE:I

    .line 1260
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x18

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_WHITE:I

    .line 1261
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x19

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_MARKER:I

    .line 1262
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x1a

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    .line 1263
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x1b

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLOB:I

    .line 1264
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    add-int/lit8 v1, v1, 0x1c

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_ARROWS:I

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v1, 0x43900000    # 288.0f

    const/high16 v2, 0x43700000    # 240.0f

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41000000    # 8.0f

    .line 1266
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TILEMARK:I

    const/high16 v5, -0x3e800000    # -16.0f

    const/high16 v1, 0x43980000    # 304.0f

    .line 1267
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    const/4 v6, 0x0

    const/high16 v2, 0x43780000    # 248.0f

    .line 1268
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    const/4 v5, 0x0

    const/high16 v1, 0x43900000    # 288.0f

    .line 1269
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    const/high16 v1, 0x454b0000    # 3248.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42800000    # 64.0f

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x42000000    # 32.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x4

    .line 1270
    invoke-virtual/range {v0 .. v9}, Lio/blueflower/stapel2d/drawing/Image;->addStrip(FFFFFFIFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SIDEMARK:I

    const/high16 v9, 0x41c00000    # 24.0f

    const/high16 v1, 0x44000000    # 512.0f

    const/high16 v2, 0x43800000    # 256.0f

    const/high16 v3, 0x43000000    # 128.0f

    const/high16 v6, 0x42000000    # 32.0f

    .line 1271
    invoke-virtual/range {v0 .. v9}, Lio/blueflower/stapel2d/drawing/Image;->addStrip(FFFFFFIFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_CONSTRUCTION_TILE:I

    const/high16 v1, 0x45400000    # 3072.0f

    const/4 v7, 0x0

    .line 1273
    invoke-virtual {v0, v1, v7}, Lio/blueflower/stapel2d/drawing/Image;->setOffset(FF)V

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v1, 0x0

    const v2, 0x445f4000    # 893.0f

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x42080000    # 34.0f

    .line 1274
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_WARNING_SIGN:I

    .line 1275
    invoke-virtual {v0, v7, v7}, Lio/blueflower/stapel2d/drawing/Image;->setOffset(FF)V

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v1, 0x0

    const/high16 v2, 0x43400000    # 192.0f

    const/high16 v3, 0x42000000    # 32.0f

    const/high16 v4, 0x42000000    # 32.0f

    .line 1277
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_NO_ROAD:I

    const/high16 v1, 0x42000000    # 32.0f

    .line 1278
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_UNHAPPY:I

    const/high16 v1, 0x42800000    # 64.0f

    .line 1279
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_NO_ENERGY:I

    const/high16 v1, 0x42c00000    # 96.0f

    .line 1280
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_EMPTY:I

    const/high16 v1, 0x43000000    # 128.0f

    .line 1281
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_NO_WATER:I

    const/high16 v1, 0x43200000    # 160.0f

    .line 1282
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_NO_COAL:I

    const/high16 v1, 0x43400000    # 192.0f

    .line 1283
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_OVERLOADED:I

    const/high16 v1, 0x43600000    # 224.0f

    .line 1284
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_CRIME_GRAFFITI:I

    const/high16 v1, 0x43800000    # 256.0f

    .line 1285
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_CRIME_BURGLARY:I

    const/high16 v1, 0x43900000    # 288.0f

    .line 1286
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_CRIME_MURDER:I

    const/high16 v1, 0x43a00000    # 320.0f

    .line 1287
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_CRIME_RIOT:I

    const/high16 v1, 0x43b00000    # 352.0f

    .line 1288
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_ILLNESS:I

    const/high16 v1, 0x43c00000    # 384.0f

    .line 1289
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_DEATH:I

    const/4 v1, 0x0

    const/high16 v2, 0x446c0000    # 944.0f

    .line 1290
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_GARBAGE:I

    const/high16 v1, 0x44200000    # 640.0f

    const/high16 v2, 0x42400000    # 48.0f

    const/high16 v3, 0x43e00000    # 448.0f

    .line 1292
    invoke-virtual {v0, v3, v1, v13, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOGO_FLOWERSOFT_SMALL:I

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v6, 0x42140000    # 37.0f

    const/4 v1, 0x0

    const v2, 0x44468000    # 794.0f

    const/high16 v3, 0x41f80000    # 31.0f

    const/high16 v4, 0x42240000    # 41.0f

    .line 1294
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_FIRE_ALERT:I

    const/high16 v1, 0x41f80000    # 31.0f

    .line 1295
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_POLICE_ALERT:I

    const/high16 v1, 0x42780000    # 62.0f

    .line 1296
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_MEDIC_ALERT:I

    const/high16 v1, 0x42ba0000    # 93.0f

    .line 1297
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_SWAT_ALERT:I

    const/high16 v1, 0x42000000    # 32.0f

    const v2, 0x4469c000    # 935.0f

    .line 1298
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_GARBAGE_ALERT:I

    const/16 v1, 0x18

    .line 1300
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    const/high16 v1, 0x42fc0000    # 126.0f

    const/high16 v2, 0x42fc0000    # 126.0f

    const v3, 0x43c08000    # 385.0f

    const v4, 0x44604000    # 897.0f

    .line 1301
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RAIN:I

    const/high16 v1, -0x3d040000    # -126.0f

    const v3, 0x43ff8000    # 511.0f

    .line 1302
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 1303
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v1

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RAIN:I

    const/high16 v3, 0x42fc0000    # 126.0f

    const/high16 v4, 0x42fc0000    # 126.0f

    const v5, 0x44f02000    # 1921.0f

    const v6, 0x45001000    # 2049.0f

    .line 1304
    invoke-virtual {v0, v5, v6, v3, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v3

    .line 1303
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/resources/WinterManager;->registerWinterFrame(II)V

    .line 1305
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v1

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RAIN:I

    add-int/lit8 v2, v2, 0x1

    const/high16 v3, -0x3d040000    # -126.0f

    const v5, 0x44ffe000    # 2047.0f

    .line 1306
    invoke-virtual {v0, v5, v6, v3, v4}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v3

    .line 1305
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/resources/WinterManager;->registerWinterFrame(II)V

    const/16 v1, 0x9

    .line 1308
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    const/16 v7, 0xa

    .line 1309
    sput v7, Linfo/flowersoft/theotown/resources/Resources;->FRAMES_DESTRUCTION_COUNT:I

    mul-int/lit8 v1, v7, 0x20

    int-to-float v3, v1

    const/high16 v9, 0x42200000    # 40.0f

    const/4 v1, 0x0

    const/high16 v2, 0x44740000    # 976.0f

    const/high16 v4, 0x42400000    # 48.0f

    const/high16 v5, 0x42000000    # 32.0f

    const/high16 v6, 0x42400000    # 48.0f

    .line 1310
    invoke-virtual/range {v0 .. v9}, Lio/blueflower/stapel2d/drawing/Image;->addStrip(FFFFFFIFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->FRAMES_DESTRUCTION:I

    const/4 v1, 0x1

    .line 1317
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    const/4 v2, 0x0

    .line 1318
    invoke-virtual {v0, v2, v15, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_BLAZE:I

    .line 1319
    invoke-virtual {v0, v12, v15, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_FLOWERSOFT:I

    .line 1320
    invoke-virtual {v0, v11, v15, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_THEO:I

    const/high16 v1, 0x429c0000    # 78.0f

    .line 1321
    invoke-virtual {v0, v1, v15, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_LUCAS:I

    const/high16 v1, 0x42d00000    # 104.0f

    .line 1322
    invoke-virtual {v0, v1, v15, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_LOBBY:I

    const/high16 v1, 0x43020000    # 130.0f

    .line 1323
    invoke-virtual {v0, v1, v15, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_PHOENIX:I

    const/high16 v1, 0x431c0000    # 156.0f

    .line 1324
    invoke-virtual {v0, v1, v15, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_MAXIME:I

    .line 1325
    invoke-virtual {v0, v10, v15, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_LIBGDX:I

    const/4 v2, 0x0

    .line 1326
    invoke-virtual {v0, v2, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_AZULA:I

    .line 1327
    invoke-virtual {v0, v12, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_HERNAN:I

    .line 1328
    invoke-virtual {v0, v11, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_HAKANUCKUS:I

    const/high16 v1, 0x429c0000    # 78.0f

    .line 1329
    invoke-virtual {v0, v1, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_DANIIL:I

    const/high16 v1, 0x42d00000    # 104.0f

    .line 1330
    invoke-virtual {v0, v1, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_RONNIE:I

    const/high16 v1, 0x43020000    # 130.0f

    .line 1331
    invoke-virtual {v0, v1, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_Bearbear65:I

    const/high16 v1, 0x431c0000    # 156.0f

    .line 1332
    invoke-virtual {v0, v1, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_MDK:I

    .line 1333
    invoke-virtual {v0, v10, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_WADERS:I

    const/high16 v4, 0x43500000    # 208.0f

    .line 1334
    invoke-virtual {v0, v4, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_KHADAFI:I

    const/high16 v1, 0x436a0000    # 234.0f

    .line 1335
    invoke-virtual {v0, v1, v14, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_REMAINSSTAY:I

    const/high16 v1, 0x436a0000    # 234.0f

    const/high16 v2, 0x44610000    # 900.0f

    .line 1336
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_RENO:I

    const v1, 0x445a8000    # 874.0f

    .line 1337
    invoke-virtual {v0, v4, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_JA:I

    const/high16 v1, 0x44610000    # 900.0f

    .line 1338
    invoke-virtual {v0, v4, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_AB:I

    const/high16 v1, 0x427c0000    # 63.0f

    const v2, 0x44678000    # 926.0f

    .line 1339
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_SGG:I

    const v1, 0x45558000    # 3416.0f

    const/high16 v2, 0x437b0000    # 251.0f

    .line 1340
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_CEPHUES:I

    const/high16 v1, 0x454f0000    # 3312.0f

    const/high16 v2, 0x43610000    # 225.0f

    .line 1341
    invoke-virtual {v0, v1, v2, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_LAKAN:I

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v2, 0x41900000    # 18.0f

    const v3, 0x44034000    # 525.0f

    .line 1342
    invoke-virtual {v0, v15, v3, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_EVAN:I

    const v1, 0x445a8000    # 874.0f

    const/4 v2, 0x0

    .line 1343
    invoke-virtual {v0, v2, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_DISCORD:I

    const v1, 0x445a8000    # 874.0f

    .line 1344
    invoke-virtual {v0, v12, v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_BUNNY:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1346
    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->setScale(FF)V

    const/4 v1, 0x0

    .line 1347
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    return-void
.end method

.method public final loadMusic()V
    .registers 9

    .line 1400
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorOccured()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_7e

    .line 1402
    :cond_8
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v0

    .line 1403
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/MusicBox;->loadSettings()V

    .line 1405
    sget-object v1, Linfo/flowersoft/theotown/resources/MusicBox$Type;->GAME:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    const-string v2, "music_joy.mp3"

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->addMusic(Linfo/flowersoft/theotown/resources/MusicBox;Linfo/flowersoft/theotown/resources/MusicBox$Type;Ljava/lang/String;)V

    .line 1406
    const-string v2, "music_lapse.mp3"

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->addMusic(Linfo/flowersoft/theotown/resources/MusicBox;Linfo/flowersoft/theotown/resources/MusicBox$Type;Ljava/lang/String;)V

    .line 1407
    const-string v2, "music_natsukusanokaori.mp3"

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->addMusic(Linfo/flowersoft/theotown/resources/MusicBox;Linfo/flowersoft/theotown/resources/MusicBox$Type;Ljava/lang/String;)V

    .line 1408
    sget-object v1, Linfo/flowersoft/theotown/resources/MusicBox$Type;->ACTION:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    const-string v2, "music_tt_redalert.mp3"

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->addMusic(Linfo/flowersoft/theotown/resources/MusicBox;Linfo/flowersoft/theotown/resources/MusicBox$Type;Ljava/lang/String;)V

    .line 1410
    invoke-static {}, Linfo/flowersoft/theotown/stages/LoadingStage;->getDefaultMusicFiles()Ljava/util/List;

    move-result-object v1

    .line 1412
    new-instance v2, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "music"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_48

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1414
    const-string v3, ""

    invoke-virtual {p0, v2, v3, v1, v4}, Linfo/flowersoft/theotown/stages/LoadingStage;->collectMusic(Ljava/io/File;Ljava/lang/String;Ljava/util/List;I)V

    .line 1417
    :cond_48
    :goto_48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_7e

    .line 1418
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1420
    const-string v5, "emergency/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1421
    sget-object v5, Linfo/flowersoft/theotown/resources/MusicBox$Type;->ACTION:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    goto :goto_61

    .line 1422
    :cond_5f
    sget-object v5, Linfo/flowersoft/theotown/resources/MusicBox$Type;->GAME:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    .line 1424
    :goto_61
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    .line 1425
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Linfo/flowersoft/theotown/stages/LoadingStage;->getUserFriendlyMusicName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1427
    invoke-virtual {v0, v3, v7, v5, v6}, Linfo/flowersoft/theotown/resources/MusicBox;->addMusic(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/resources/MusicBox$Type;Lcom/badlogic/gdx/files/FileHandle;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_7e
    :goto_7e
    return-void
.end method

.method public final loadScriptingLibraries()V
    .registers 7

    .line 335
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 337
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    .line 339
    new-instance v3, Linfo/flowersoft/theotown/scripting/ManagedLibrary;

    const-string v4, "libs/string.lua"

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 340
    new-instance v3, Linfo/flowersoft/theotown/scripting/ManagedLibrary;

    const-string v4, "libs/math.lua"

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 341
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;

    invoke-direct {v3}, Linfo/flowersoft/theotown/scripting/libraries/UtilLibrary;-><init>()V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 342
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 343
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    invoke-direct {v3}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;-><init>()V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 344
    new-instance v3, Linfo/flowersoft/theotown/scripting/ManagedLibrary;

    const-string v4, "libs/Vector.lua"

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 346
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;

    invoke-direct {v3}, Linfo/flowersoft/theotown/scripting/libraries/DebugLibrary;-><init>()V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 347
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary;

    invoke-direct {v3}, Linfo/flowersoft/theotown/scripting/libraries/AnalyticsLibrary;-><init>()V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 348
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 349
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 350
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 351
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;

    invoke-direct {v3}, Linfo/flowersoft/theotown/scripting/libraries/ScriptLibrary;-><init>()V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 352
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/BuildingLibrary;

    invoke-direct {v3}, Linfo/flowersoft/theotown/scripting/libraries/BuildingLibrary;-><init>()V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 353
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;

    invoke-direct {v3}, Linfo/flowersoft/theotown/scripting/libraries/TSLibrary;-><init>()V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 354
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;

    invoke-direct {v3}, Linfo/flowersoft/theotown/scripting/libraries/PixmapLibrary;-><init>()V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 356
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/IntrinsicsLibrary;

    invoke-direct {v3}, Linfo/flowersoft/theotown/scripting/libraries/IntrinsicsLibrary;-><init>()V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 358
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/DsaLibrary;

    invoke-direct {v3}, Linfo/flowersoft/theotown/scripting/libraries/DsaLibrary;-><init>()V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    .line 360
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 361
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading libraries took "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LoadingStage"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->protect()V

    return-void
.end method

.method public final loadSettings()V
    .registers 5

    .line 453
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->load()V

    .line 454
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->startCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->startCounter:I

    .line 455
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->failedStartupCtr:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->failedStartupCtr:I

    .line 456
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    .line 458
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->screenOrientation:I

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->applyOrientation(I)V

    .line 459
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager;->init()V

    .line 460
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/Features;->load()V

    .line 461
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->fullscreen:Z

    if-eqz v0, :cond_33

    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->supportsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 462
    :cond_33
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->fullscreen:Z

    sget v2, Linfo/flowersoft/theotown/resources/Settings;->fullscreenWidth:I

    sget v3, Linfo/flowersoft/theotown/resources/Settings;->fullscreenHeight:I

    invoke-interface {v0, v1, v2, v3}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->setFullscreen(ZII)V

    .line 464
    :cond_3e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_4f

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->vsync:Z

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setVSync(Z)V

    :cond_4f
    return-void
.end method

.method public final loadShaders()V
    .registers 7

    .line 473
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getInstance()Linfo/flowersoft/theotown/resources/ShaderRepository;

    move-result-object v0

    const/16 v1, 0x32

    .line 477
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->getNameById(I)Lio/blueflower/stapel2d/util/Getter;

    move-result-object v1

    .line 478
    const-string v2, "shader_default_vs.lby"

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "shader_default_fs.lby"

    .line 479
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 475
    invoke-virtual {v0, v5, v1, v3, v4}, Linfo/flowersoft/theotown/resources/ShaderRepository;->registerShader(Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x33f

    .line 483
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->getNameById(I)Lio/blueflower/stapel2d/util/Getter;

    move-result-object v1

    .line 484
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "shader_fancy_fs.lby"

    .line 485
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-virtual {v0, v5, v1, v3, v4}, Linfo/flowersoft/theotown/resources/ShaderRepository;->registerShader(Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9c4

    .line 489
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->getNameById(I)Lio/blueflower/stapel2d/util/Getter;

    move-result-object v1

    .line 490
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "shader_fancy2_fs.lby"

    .line 491
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    invoke-virtual {v0, v5, v1, v3, v4}, Linfo/flowersoft/theotown/resources/ShaderRepository;->registerShader(Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9ec

    .line 495
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->getNameById(I)Lio/blueflower/stapel2d/util/Getter;

    move-result-object v1

    .line 496
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "shader_smooth_fs.lby"

    .line 497
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 493
    invoke-virtual {v0, v5, v1, v3, v4}, Linfo/flowersoft/theotown/resources/ShaderRepository;->registerShader(Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd32

    .line 501
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->getNameById(I)Lio/blueflower/stapel2d/util/Getter;

    move-result-object v1

    .line 502
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "shader_lol_fs.lby"

    .line 503
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 499
    invoke-virtual {v0, v5, v1, v3, v4}, Linfo/flowersoft/theotown/resources/ShaderRepository;->registerShader(Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7ce

    .line 507
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->getNameById(I)Lio/blueflower/stapel2d/util/Getter;

    move-result-object v1

    .line 508
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shader_inverted_fs.lby"

    .line 509
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/LoadingStage;->readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 505
    invoke-virtual {v0, v5, v1, v2, v3}, Linfo/flowersoft/theotown/resources/ShaderRepository;->registerShader(Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->SHADERS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/ShaderDraft;

    .line 513
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    new-instance v4, Linfo/flowersoft/theotown/stages/LoadingStage$4;

    invoke-direct {v4, p0, v2}, Linfo/flowersoft/theotown/stages/LoadingStage$4;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;Linfo/flowersoft/theotown/draft/ShaderDraft;)V

    iget-object v5, v2, Linfo/flowersoft/theotown/draft/ShaderDraft;->vertexCode:Ljava/lang/String;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ShaderDraft;->fragmentCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5, v2}, Linfo/flowersoft/theotown/resources/ShaderRepository;->registerShader(Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    :cond_9a
    return-void
.end method

.method public final loadSkin()V
    .registers 13

    .line 856
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 857
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    const/high16 v2, 0x45400000    # 3072.0f

    const/4 v3, 0x0

    .line 861
    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/drawing/Image;->setOffset(FF)V

    const/high16 v2, 0x3f000000    # 0.5f

    .line 862
    invoke-virtual {v0, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->setScale(FF)V

    const/4 v2, 0x1

    .line 864
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 865
    invoke-virtual {v0, v3, v3, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v4

    iput v4, v1, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    .line 866
    iput v4, v1, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    const/high16 v4, 0x41f00000    # 30.0f

    .line 867
    invoke-virtual {v0, v4, v3, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v5

    iput v5, v1, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    const/high16 v5, 0x42700000    # 60.0f

    .line 868
    invoke-virtual {v0, v5, v3, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v6

    iput v6, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    .line 869
    invoke-virtual {v0, v3, v5, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v6

    iput v6, v1, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    .line 870
    invoke-virtual {v0, v4, v5, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v6

    iput v6, v1, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    .line 871
    invoke-virtual {v0, v5, v5, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v6

    iput v6, v1, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v7, 0x42b40000    # 90.0f

    .line 872
    invoke-virtual {v0, v3, v7, v6, v6}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v6

    iput v6, v1, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    .line 875
    invoke-virtual {v0, v5, v4, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v6

    iput v6, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonMarked:I

    const/high16 v6, 0x43960000    # 300.0f

    .line 876
    invoke-virtual {v0, v6, v3, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v6

    iput v6, v1, Lio/blueflower/stapel2d/gui/Skin;->npProgressBar:I

    const/high16 v6, 0x43a50000    # 330.0f

    .line 877
    invoke-virtual {v0, v6, v3, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v6

    iput v6, v1, Lio/blueflower/stapel2d/gui/Skin;->npProgressBarFilled:I

    const/high16 v6, 0x43870000    # 270.0f

    .line 878
    invoke-virtual {v0, v6, v3, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v6

    iput v6, v1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    const/high16 v6, 0x43700000    # 240.0f

    .line 879
    invoke-virtual {v0, v6, v3, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v3

    iput v3, v1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    const/high16 v3, 0x43520000    # 210.0f

    .line 880
    invoke-virtual {v0, v3, v7, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v3

    iput v3, v1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectEmpty:I

    const/16 v3, 0x20

    .line 883
    new-array v8, v3, [I

    iput-object v8, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    .line 884
    new-array v3, v3, [I

    iput-object v3, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    const/4 v3, 0x0

    move v8, v3

    :goto_83
    const/16 v9, 0x8

    if-ge v8, v9, :cond_a1

    .line 886
    iget-object v9, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    mul-int/lit8 v10, v8, 0x1e

    int-to-float v10, v10

    const/high16 v11, 0x43570000    # 215.0f

    invoke-virtual {v0, v10, v11, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v11

    aput v11, v9, v8

    .line 887
    iget-object v9, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    const/high16 v11, 0x43750000    # 245.0f

    invoke-virtual {v0, v10, v11, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v10

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_83

    .line 889
    :cond_a1
    :goto_a1
    iget-object v8, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    array-length v10, v8

    if-ge v9, v10, :cond_b4

    const/4 v10, 0x7

    .line 890
    aget v11, v8, v10

    aput v11, v8, v9

    .line 891
    iget-object v8, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    aget v10, v8, v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a1

    :cond_b4
    const/high16 v8, 0x43240000    # 164.0f

    const/high16 v9, 0x41800000    # 16.0f

    .line 895
    invoke-virtual {v0, v6, v8, v9, v9}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v10

    iput v10, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    const/high16 v10, 0x43900000    # 288.0f

    .line 896
    invoke-virtual {v0, v10, v8, v9, v9}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v8

    iput v8, v1, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    const/high16 v8, 0x43270000    # 167.0f

    const/high16 v11, 0x41700000    # 15.0f

    .line 897
    invoke-virtual {v0, v10, v8, v9, v11}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v8

    iput v8, v1, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    const v8, 0x43968000    # 301.0f

    const/high16 v9, 0x41f80000    # 31.0f

    const/high16 v10, 0x41e00000    # 28.0f

    .line 900
    invoke-virtual {v0, v8, v9, v10, v10}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v8

    iput v8, v1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    const v8, 0x43a58000    # 331.0f

    .line 901
    invoke-virtual {v0, v8, v9, v10, v10}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v11

    iput v11, v1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    .line 902
    iput v3, v1, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    .line 903
    invoke-virtual {v0, v8, v9, v10, v10}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v3

    iput v3, v1, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    const/high16 v3, 0x42500000    # 52.0f

    .line 904
    invoke-virtual {v0, v6, v5, v3, v3}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v3

    iput v3, v1, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    .line 906
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Image;->resetScale()V

    const/high16 v3, 0x42200000    # 40.0f

    const/high16 v5, 0x40400000    # 3.0f

    .line 907
    invoke-virtual {v0, v3, v4, v5, v5}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v3

    iput v3, v1, Lio/blueflower/stapel2d/gui/Skin;->npRect:I

    const/high16 v3, 0x43330000    # 179.0f

    .line 908
    invoke-virtual {v0, v3, v7, v2, v2}, Lio/blueflower/stapel2d/drawing/Image;->addNinePatch(FFFF)I

    move-result v2

    iput v2, v1, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    .line 910
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Image;->resetOffset()V

    return-void
.end method

.method public final loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I
    .registers 6

    .line 1533
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-static {p2, v2}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".mp3"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/resources/SoundPlayer;->loadSound(Lcom/badlogic/gdx/files/FileHandle;)I

    move-result p1

    return p1
.end method

.method public final loadSounds()V
    .registers 3

    .line 1537
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorOccured()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1539
    :cond_7
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v0

    .line 1540
    const-string v1, "sound_click.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CLICK:I

    .line 1541
    const-string v1, "sound_money.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_MONEY:I

    .line 1542
    const-string v1, "sound_notification_population.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_NOTIFICATION:I

    .line 1543
    const-string v1, "sound_car_fire.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CAR_FIRE:I

    .line 1544
    const-string v1, "sound_car_police.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CAR_POLICE:I

    .line 1545
    const-string v1, "sound_car_medic.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CAR_MEDIC:I

    .line 1546
    const-string v1, "sound_fire.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_FIRE:I

    .line 1547
    const-string v1, "sound_meteorite_impact.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_METEORITE_IMPACT:I

    .line 1548
    const-string v1, "sound_meteorite_fly.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_METEORITE_FLY:I

    .line 1549
    const-string v1, "sound_earthquake.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_EARTHQUAKE:I

    .line 1550
    const-string v1, "sound_destroy.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    .line 1551
    const-string v1, "sound_build.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD:I

    .line 1552
    const-string v1, "sound_build_land.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD_LAND:I

    .line 1553
    const-string v1, "sound_build_water.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD_WATER:I

    .line 1554
    const-string v1, "sound_wind.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_WIND:I

    .line 1555
    const-string v1, "sound_residential.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_RESIDENTIAL:I

    .line 1556
    const-string v1, "sound_commercial.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_COMMERCIAL:I

    .line 1557
    const-string v1, "sound_industrial.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_INDUSTRIAL:I

    .line 1558
    const-string v1, "sound_park.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_PARK:I

    .line 1559
    const-string v1, "sound_sport.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_SPORT:I

    .line 1560
    const-string v1, "sound_firedepartment.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_FIREDEPARTMENT:I

    .line 1561
    const-string v1, "sound_police.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_POLICE:I

    .line 1562
    const-string v1, "sound_medic.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_MEDIC:I

    .line 1563
    const-string v1, "sound_power.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_POWER:I

    .line 1564
    const-string v1, "sound_demo.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DEMO:I

    .line 1565
    const-string v1, "sound_riot.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_RIOT:I

    .line 1566
    const-string v1, "sound_road.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_ROAD:I

    .line 1567
    const-string v1, "sound_school.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_SCHOOL:I

    .line 1568
    const-string v1, "sound_newrank.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_NEWRANK:I

    .line 1569
    const-string v1, "sound_rain.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_RAIN:I

    .line 1570
    const-string v1, "sound_thunder.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_THUNDER:I

    .line 1571
    const-string v1, "sound_snow.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_SNOW:I

    .line 1572
    const-string v1, "sound_nature.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_NATURE:I

    .line 1573
    const-string v1, "sound_ocean.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_OCEAN:I

    .line 1574
    const-string v1, "sound_traffic.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_TRAFFIC:I

    .line 1575
    const-string v1, "sound_ufo_ambient.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_UFO_AMBIENT:I

    .line 1576
    const-string v1, "sound_ufo_laser.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_UFO_LASER:I

    .line 1577
    const-string v1, "sound_religion.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_RELIGION:I

    .line 1578
    const-string v1, "sound_halloween.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_HALLOWEEN:I

    .line 1579
    const-string v1, "sound_christmas.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CHRISTMAS:I

    .line 1580
    const-string v1, "sound_hohoo.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v1

    sput v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CHRISTMAS_HOHOO:I

    .line 1581
    const-string v1, "sound_opera.mp3"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSound(Linfo/flowersoft/theotown/resources/SoundPlayer;Ljava/lang/String;)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_OPERA:I

    return-void
.end method

.method public final loadTexture()V
    .registers 9

    .line 1646
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    .line 1648
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v4

    .line 1649
    :goto_15
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->useLowColorDepth:Z

    and-int/2addr v2, v1

    sput-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->useLowColorDepth:Z

    .line 1651
    sput-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->crashedWhileLoadingTexture:Z

    .line 1652
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    .line 1654
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->useLowColorDepth:Z

    if-eqz v2, :cond_2d

    if-eqz v1, :cond_2d

    .line 1655
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Texture;->setColorDepth(I)V

    goto :goto_2f

    .line 1657
    :cond_2d
    sput-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->useLowColorDepth:Z

    .line 1660
    :goto_2f
    sput-boolean v3, Lio/blueflower/stapel2d/drawing/GLUtil;->THROW_EXCEPTIONS:Z

    .line 1663
    :try_start_31
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pg:Linfo/flowersoft/theotown/util/ProgressSetter;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->textures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v4, v2}, Linfo/flowersoft/theotown/util/ProgressSetter;->set(II)V

    .line 1664
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->textures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/drawing/Texture;

    .line 1665
    new-instance v5, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0, v0, v2}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda25;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Texture;)V

    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/stages/LoadingStage;->executeSyncJob(Ljava/lang/Runnable;)V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_56} :catch_5f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_31 .. :try_end_56} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_56} :catch_5a
    .catchall {:try_start_31 .. :try_end_56} :catchall_57

    goto :goto_42

    :catchall_57
    move-exception v0

    goto/16 :goto_fe

    :catch_5a
    move-exception v1

    goto :goto_62

    :catch_5c
    move-exception v0

    goto/16 :goto_ec

    :catch_5f
    move-exception v0

    goto/16 :goto_f5

    .line 1677
    :goto_62
    :try_start_62
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    sget-object v5, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v2, v5, :cond_c0

    .line 1678
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->useLowColorDepth:Z

    .line 1679
    sget-object v5, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v6, "Loading textures"

    invoke-interface {v5, v6, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1680
    sget-object v5, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v6, "Loading texture"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Linfo/flowersoft/theotown/resources/Settings;->missingChars:Ljava/lang/String;

    invoke-interface {v5, v6, v1, v7}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    sput-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->useLowColorDepth:Z

    .line 1683
    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda26;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;Lio/blueflower/stapel2d/drawing/Engine;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->executeSyncJob(Ljava/lang/Runnable;)V

    .line 1688
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->textures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/drawing/Texture;

    .line 1689
    new-instance v5, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda27;

    invoke-direct {v5, v0, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda27;-><init>(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Texture;)V

    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/stages/LoadingStage;->executeSyncJob(Ljava/lang/Runnable;)V

    goto :goto_92

    .line 1691
    :cond_a7
    sput-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->useBigTextureIfPossible:Z

    .line 1692
    sput-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->useLowColorDepth:Z
    :try_end_ab
    .catchall {:try_start_62 .. :try_end_ab} :catchall_57

    .line 1712
    :cond_ab
    sput-boolean v4, Lio/blueflower/stapel2d/drawing/GLUtil;->THROW_EXCEPTIONS:Z

    .line 1715
    :try_start_ad
    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda28;-><init>(Lio/blueflower/stapel2d/drawing/Engine;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->executeSyncJob(Ljava/lang/Runnable;)V
    :try_end_b5
    .catchall {:try_start_ad .. :try_end_b5} :catchall_b6

    goto :goto_ba

    :catchall_b6
    move-exception v0

    .line 1721
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1724
    :goto_ba
    sput-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->crashedWhileLoadingTexture:Z

    .line 1725
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    return-void

    .line 1695
    :cond_c0
    :try_start_c0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_eb

    instance-of v0, v1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_eb

    .line 1697
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "8192"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_eb

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->useBigTextureIfPossible:Z

    if-eqz v0, :cond_eb

    .line 1700
    sput-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->useBigTextureIfPossible:Z

    .line 1701
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    .line 1702
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Large textures could not be created. Compatibility mode enabled. Please restart the game."

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1705
    :cond_eb
    throw v1

    .line 1674
    :goto_ec
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1675
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1671
    :goto_f5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1672
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_fe
    .catchall {:try_start_c0 .. :try_end_fe} :catchall_57

    .line 1709
    :goto_fe
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1710
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final loadTopics()V
    .registers 9

    .line 1585
    invoke-static {}, Linfo/flowersoft/theotown/resources/TopicManager;->getInstance()Linfo/flowersoft/theotown/resources/TopicManager;

    move-result-object v0

    .line 1597
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_13

    const/16 v1, 0x30a

    .line 1598
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/TopicManager;->addTopic(I)Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    :cond_13
    const/16 v1, 0x5c6

    .line 1601
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/TopicManager;->addTopic(I)Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    move-result-object v1

    const/16 v2, 0x1f

    const/4 v3, 0x2

    .line 1604
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->addDay(II)V

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 1605
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->setWeight(F)V

    const/16 v1, 0xb52

    .line 1627
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/TopicManager;->addTopic(I)Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    move-result-object v1

    const/high16 v4, 0x41200000    # 10.0f

    .line 1628
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->setWeight(F)V

    const/16 v5, 0x19

    const/16 v6, 0xb

    const/4 v7, 0x3

    .line 1629
    invoke-virtual {v1, v5, v6, v7}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->addDays(III)V

    const/16 v1, 0x2df

    .line 1631
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/TopicManager;->addTopic(I)Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    move-result-object v1

    .line 1632
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->setWeight(F)V

    .line 1633
    invoke-virtual {v1, v2, v6, v3}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->addDays(III)V

    const/16 v1, 0xb5b

    .line 1635
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/TopicManager;->addTopic(I)Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    move-result-object v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 1636
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->setWeight(F)V

    const/4 v2, 0x1

    .line 1637
    invoke-virtual {v1, v2, v7}, Linfo/flowersoft/theotown/resources/TopicManager$Topic;->addDay(II)V

    const/4 v1, 0x0

    .line 1639
    :goto_54
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->TOPICS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 1640
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->TOPICS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/TopicDraft;

    .line 1641
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/resources/TopicManager;->addTopic(Linfo/flowersoft/theotown/draft/TopicDraft;)Linfo/flowersoft/theotown/resources/TopicManager$Topic;

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_6a
    return-void
.end method

.method public final prefetchImages()V
    .registers 8

    .line 409
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    const v1, 0x186a0

    if-ge v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->USE_PREFETCH:Z

    .line 410
    const-string v1, "LoadingStage"

    if-eqz v0, :cond_42

    .line 411
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    .line 412
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->files:Ljava/util/List;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pg:Linfo/flowersoft/theotown/util/ProgressSetter;

    invoke-static {v0, v4}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->preloadImages(Ljava/util/List;Linfo/flowersoft/theotown/util/ProgressSetter;)V

    .line 413
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prefetch plugin images took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 415
    :cond_42
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "Skip plugin image prefetch"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public prepare()V
    .registers 6

    .line 163
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage;->loadSounds()V

    .line 164
    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    .line 165
    invoke-static {}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->startNewSession()V

    .line 167
    new-instance v0, Linfo/flowersoft/theotown/util/Watchdog;

    const-string v1, "loading"

    .line 168
    invoke-static {v1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    const-string v2, "loading watchdog timeout"

    const v3, 0xea60

    .line 169
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/Watchdog;-><init>(JLinfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    .line 174
    new-instance v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;-><init>(Lio/blueflower/stapel2d/drawing/Engine;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->startScreenDrawer:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    .line 176
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda12;-><init>()V

    const-string v2, "Warm-up"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 178
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda15;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Startup"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v4}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 189
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda16;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Texture"

    invoke-direct {v0, v2, v1, v4}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 194
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda17;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Fonts"

    invoke-direct {v0, v2, v1, v4}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 196
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda18;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Skin"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 208
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda19;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Extract files"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 210
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda20;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Frames"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 212
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda21;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Check recovery"

    invoke-direct {v0, v2, v1, v4}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 220
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda22;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Scripting"

    invoke-direct {v0, v2, v1, v4}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 222
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Collecting drafts"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 224
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Prefetching images"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 226
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Loading drafts"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 228
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Finishing drafts"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 236
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Init scripts"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 240
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Loading music"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 242
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Shaders"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 244
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda9;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Topics"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 246
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Loading textures"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 248
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda11;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Checking winter"

    invoke-direct {v0, v2, v1, v3}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 253
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda13;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Preparing background"

    invoke-direct {v0, v2, v1, v4}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    .line 261
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda14;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    const-string v2, "Finishing"

    invoke-direct {v0, v2, v1, v4}, Linfo/flowersoft/theotown/stages/LoadingStage$Task;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->addTask(Linfo/flowersoft/theotown/stages/LoadingStage$Task;)V

    return-void
.end method

.method public final provideSamplePlugins()V
    .registers 6

    .line 321
    new-instance v0, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getPluginDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "README.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "plugins_notice.txt"

    const-string v3, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->replaceWithIfNew(Ljava/io/File;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 323
    new-instance v0, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getPluginDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "sample"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_35

    :cond_34
    return-void

    .line 325
    :cond_35
    :goto_35
    new-instance v1, Ljava/io/File;

    const-string v2, "sample_dsc.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->replaceWithIfNew(Ljava/io/File;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 326
    new-instance v1, Ljava/io/File;

    const-string v2, "sample_bmp.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->replaceWithIfNew(Ljava/io/File;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 327
    new-instance v1, Ljava/io/File;

    const-string v2, "sample_winter_bmp.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->replaceWithIfNew(Ljava/io/File;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 328
    new-instance v1, Ljava/io/File;

    const-string v2, "plugin.manifest"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->replaceWithIfNew(Ljava/io/File;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/Resources;->createNoMediaFile(Ljava/io/File;)Z

    .line 330
    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->createNoMediaFile(Ljava/io/File;)Z

    return-void
.end method

.method public final readInternalEncryptedTextFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 537
    sget-object v0, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/PackedUtils;->readInternalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final replaceWithIfNew(Ljava/io/File;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 7

    .line 384
    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 387
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    .line 388
    invoke-static {p2, p1}, Linfo/flowersoft/theotown/util/Files;->copyFile(Lcom/badlogic/gdx/files/FileHandle;Ljava/io/File;)Z

    :cond_33
    return-void

    .line 385
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not load internal file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1881
    const-string v0, "LoadingStage"

    return-object v0
.end method

.method public update()V
    .registers 11

    .line 1774
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1775
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->beginFrame()V

    .line 1776
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->clear(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1777
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->endFrame()V

    .line 1779
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_204

    .line 1780
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->update()V

    return-void

    .line 1784
    :cond_2f
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 1786
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pendingTasks:Ljava/util/List;

    monitor-enter v2

    .line 1787
    :try_start_36
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pendingTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_63

    move v3, v4

    .line 1788
    :goto_40
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pendingTasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_59

    .line 1789
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pendingTasks:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :catchall_56
    move-exception v0

    goto/16 :goto_207

    .line 1791
    :cond_59
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pendingTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1792
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pendingTasks:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1794
    :cond_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_36 .. :try_end_64} :catchall_56

    .line 1796
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    const/4 v3, 0x0

    if-eqz v2, :cond_da

    .line 1797
    iget-object v2, v2, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->name:Ljava/lang/String;

    .line 1798
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->taskFuture:Ljava/util/concurrent/Future;

    if-eqz v5, :cond_7c

    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    if-eqz v5, :cond_76

    goto :goto_7c

    .line 1820
    :cond_76
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->name:Ljava/lang/String;

    goto/16 :goto_16c

    .line 1799
    :cond_7c
    :goto_7c
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->taskFuture:Ljava/util/concurrent/Future;

    if-eqz v5, :cond_c4

    .line 1801
    :try_start_80
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_83
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_83} :catch_96
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_9a

    :catch_84
    move-exception v0

    .line 1805
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1806
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_90

    .line 1807
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1809
    :cond_90
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_96
    move-exception v5

    .line 1803
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1812
    :goto_9a
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v6, "LoadingStage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->taskStartedMS:J

    sub-long/2addr v0, v8

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    iput-object v3, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->taskFuture:Ljava/util/concurrent/Future;

    .line 1815
    :cond_c4
    iput-object v3, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    .line 1816
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16c

    .line 1817
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->tasks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->name:Ljava/lang/String;

    goto/16 :goto_16c

    .line 1823
    :cond_da
    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->taskStartedMS:J

    .line 1824
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->tasks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    iput-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    .line 1825
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->completedTasks:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1826
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    iget-object v6, v6, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 1827
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->watchdog:Linfo/flowersoft/theotown/util/Watchdog;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    iget-object v5, v5, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/Watchdog;->alive(Ljava/lang/Object;)V

    .line 1828
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->pg:Linfo/flowersoft/theotown/util/ProgressSetter;

    invoke-interface {v2, v4, v4}, Linfo/flowersoft/theotown/util/ProgressSetter;->set(II)V

    .line 1829
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    iget-boolean v5, v2, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->async:Z

    if-eqz v5, :cond_129

    .line 1830
    iget-object v2, v2, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->name:Ljava/lang/String;

    .line 1831
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->taskFuture:Ljava/util/concurrent/Future;

    goto :goto_16c

    .line 1836
    :cond_129
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13c

    .line 1837
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->tasks:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->name:Ljava/lang/String;

    goto :goto_140

    .line 1839
    :cond_13c
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->name:Ljava/lang/String;

    .line 1841
    :goto_140
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    iget-object v5, v5, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->runnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1842
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v6, "LoadingStage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->taskStartedMS:J

    sub-long/2addr v0, v8

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    iput-object v3, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->currentTask:Linfo/flowersoft/theotown/stages/LoadingStage$Task;

    .line 1848
    :cond_16c
    :goto_16c
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->synchronizedTasks:Ljava/util/List;

    monitor-enter v0

    .line 1849
    :try_start_16f
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->synchronizedTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_184

    .line 1850
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->synchronizedTasks:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/concurrent/FutureTask;

    goto :goto_184

    :catchall_181
    move-exception v1

    goto/16 :goto_205

    .line 1852
    :cond_184
    :goto_184
    monitor-exit v0
    :try_end_185
    .catchall {:try_start_16f .. :try_end_185} :catchall_181

    if-eqz v3, :cond_18f

    .line 1855
    :try_start_187
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18a} :catch_18b

    goto :goto_18f

    :catch_18b
    move-exception v0

    .line 1857
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1861
    :cond_18f
    :goto_18f
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->beginFrame()V

    .line 1863
    const-string v0, ""

    .line 1865
    iget v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->progressTotal:I

    const/4 v3, 0x0

    if-lez v1, :cond_1c0

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->progressDone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->progressTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1867
    iget v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->progressDone:I

    int-to-float v1, v1

    iget v4, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->progressTotal:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v3

    .line 1870
    :cond_1c0
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->startScreenDrawer:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->drawBackground()V

    .line 1871
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->startScreenDrawer:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->drawLogo()V

    .line 1872
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->startScreenDrawer:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->completedTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->completedTasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->drawBar(F)V

    .line 1873
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->startScreenDrawer:Linfo/flowersoft/theotown/ui/StartScreenDrawer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "... "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->drawText(Ljava/lang/String;)V

    .line 1875
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->endFrame()V

    :cond_204
    return-void

    .line 1852
    :goto_205
    :try_start_205
    monitor-exit v0
    :try_end_206
    .catchall {:try_start_205 .. :try_end_206} :catchall_181

    throw v1

    .line 1794
    :goto_207
    :try_start_207
    monitor-exit v2
    :try_end_208
    .catchall {:try_start_207 .. :try_end_208} :catchall_56

    throw v0
.end method

.method public final validateScripts()V
    .registers 5

    .line 272
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 273
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v2, 0xe10

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x258

    int-to-long v1, v1

    .line 275
    new-instance v3, Linfo/flowersoft/theotown/stages/LoadingStage$2;

    invoke-direct {v3, p0, v1, v2, v0}, Linfo/flowersoft/theotown/stages/LoadingStage$2;-><init>(Linfo/flowersoft/theotown/stages/LoadingStage;JLinfo/flowersoft/theotown/scripting/ScriptingEnvironment;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage.AnonymousClass1 (info.flowersoft.theotown.stages.LoadingStage$1)
.class public Linfo/flowersoft/theotown/stages/LoadingStage$1;
.super Ljava/lang/Object;
.source "LoadingStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/ProgressSetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/LoadingStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$1;->this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(II)V
    .registers 4

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$1;->this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/LoadingStage;->access$002(Linfo/flowersoft/theotown/stages/LoadingStage;I)I

    .line 147
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$1;->this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/stages/LoadingStage;->access$102(Linfo/flowersoft/theotown/stages/LoadingStage;I)I

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage.AnonymousClass2 (info.flowersoft.theotown.stages.LoadingStage$2)
.class public Linfo/flowersoft/theotown/stages/LoadingStage$2;
.super Ljava/lang/Object;
.source "LoadingStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadingStage;->validateScripts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public ctr:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

.field public final synthetic val$env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

.field public final synthetic val$target:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;JLinfo/flowersoft/theotown/scripting/ScriptingEnvironment;)V
    .registers 5
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

    .line 275
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$2;->this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iput-wide p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$2;->val$target:J

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/LoadingStage$2;->val$env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 276
    iput p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$2;->ctr:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 26

    move-object/from16 v0, p0

    .line 279
    iget v1, v0, Linfo/flowersoft/theotown/stages/LoadingStage$2;->ctr:I

    int-to-long v2, v1

    iget-wide v4, v0, Linfo/flowersoft/theotown/stages/LoadingStage$2;->val$target:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    .line 280
    iput v1, v0, Linfo/flowersoft/theotown/stages/LoadingStage$2;->ctr:I

    .line 281
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadingStage$2;->val$env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;)V

    return-void

    .line 285
    :cond_15
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadingStage$2;->val$env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getGlobals()Lvm2/Globals;

    move-result-object v1

    .line 286
    const-string v2, "O8E72h9si7nnmZ9uJpFZ"

    invoke-virtual {v1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v6

    .line 287
    const-string v3, "sg4vZjLbLgvoohx0eRXY"

    invoke-virtual {v1, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v8

    .line 288
    const-string v10, "Z9exNVYUNGmloOmm3SXe"

    invoke-virtual {v1, v10}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v11

    .line 289
    const-string v13, "jrRDij8oqDNwhEiFmpS5"

    invoke-virtual {v1, v13}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v14

    .line 290
    const-string v0, "V2JfEvNnvsgTX18yehYt"

    move-object/from16 v16, v13

    invoke-virtual {v1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v17

    .line 291
    const-string v13, "Ax7EPgt6mpexln4Xwqaa"

    move-object/from16 v19, v0

    invoke-virtual {v1, v13}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v4

    .line 292
    const-string v0, "a6pXEBfZE69mGyk6Rxby"

    move-wide/from16 v20, v4

    invoke-virtual {v1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    .line 294
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-wide/from16 v23, v6

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    cmpg-double v4, v4, v6

    if-lez v4, :cond_ad

    cmpl-double v4, v23, v8

    if-gtz v4, :cond_ad

    cmpl-double v4, v8, v11

    if-gtz v4, :cond_ad

    cmpl-double v4, v11, v14

    if-gtz v4, :cond_ad

    mul-double v6, v23, v8

    mul-double/2addr v6, v11

    mul-double/2addr v6, v14

    const-wide v4, 0x43d47267bca0397cL    # 5.893416351772832E18

    cmpl-double v4, v6, v4

    if-nez v4, :cond_ad

    cmpl-double v4, v17, v20

    if-nez v4, :cond_ad

    .line 298
    invoke-static/range {v22 .. v22}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fb656087e7e621385fa6e572fadad5f6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fb

    .line 301
    :cond_ad
    :try_start_ad
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 302
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Z"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "W"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "R2h3WkVFOVBRPT0="

    .line 304
    invoke-static {v8}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 303
    invoke-static {v7}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-static {v6}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    .line 304
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_fb} :catch_fb

    .line 309
    :catch_fb
    :cond_fb
    sget-object v4, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {v1, v2, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 310
    invoke-virtual {v1, v3, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 311
    invoke-virtual {v1, v10, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    move-object/from16 v2, v16

    .line 312
    invoke-virtual {v1, v2, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    move-object/from16 v2, v19

    .line 313
    invoke-virtual {v1, v2, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 314
    invoke-virtual {v1, v13, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 315
    invoke-virtual {v1, v0, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage.AnonymousClass3 (info.flowersoft.theotown.stages.LoadingStage$3)
.class public Linfo/flowersoft/theotown/stages/LoadingStage$3;
.super Ljava/lang/Object;
.source "LoadingStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadingStage;->initScripts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

.field public final synthetic val$env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;)V
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

    .line 375
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$3;->val$env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 378
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$3;->val$env:Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage.AnonymousClass4 (info.flowersoft.theotown.stages.LoadingStage$4)
.class public Linfo/flowersoft/theotown/stages/LoadingStage$4;
.super Ljava/lang/Object;
.source "LoadingStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadingStage;->loadShaders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

.field public final synthetic val$shaderDraft:Linfo/flowersoft/theotown/draft/ShaderDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;Linfo/flowersoft/theotown/draft/ShaderDraft;)V
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

    .line 515
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$4;->this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$4;->val$shaderDraft:Linfo/flowersoft/theotown/draft/ShaderDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 515
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage$4;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 4

    .line 518
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$4;->this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$4;->val$shaderDraft:Linfo/flowersoft/theotown/draft/ShaderDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage.AnonymousClass5 (info.flowersoft.theotown.stages.LoadingStage$5)
.class public Linfo/flowersoft/theotown/stages/LoadingStage$5;
.super Ljava/lang/Object;
.source "LoadingStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadingStage;->getNameById(I)Lio/blueflower/stapel2d/util/Getter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

.field public final synthetic val$nameId:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;I)V
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

    .line 528
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$5;->this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iput p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$5;->val$nameId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 528
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/LoadingStage$5;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 3

    .line 531
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$5;->this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/LoadingStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$5;->val$nameId:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage.AnonymousClass6 (info.flowersoft.theotown.stages.LoadingStage$6)
.class public Linfo/flowersoft/theotown/stages/LoadingStage$6;
.super Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;
.source "LoadingStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadingStage;->getBitmap(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

.field public final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;Ljava/lang/String;)V
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

    .line 705
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$6;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Lio/blueflower/stapel2d/drawing/Texture;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 5

    .line 708
    sget-object p1, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$6;->val$id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/PackedUtils;->readInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 710
    :try_start_8
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V

    .line 711
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 712
    invoke-static {v0}, Linfo/flowersoft/theotown/util/PixmapUtil;->premultiplyAlpha(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception p1

    .line 715
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isAsync()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage.Task (info.flowersoft.theotown.stages.LoadingStage$Task)
.class public Linfo/flowersoft/theotown/stages/LoadingStage$Task;
.super Ljava/lang/Object;
.source "LoadingStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/LoadingStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public async:Z

.field public name:Ljava/lang/String;

.field public runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .registers 4

    .line 1889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1890
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->name:Ljava/lang/String;

    .line 1891
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->runnable:Ljava/lang/Runnable;

    .line 1892
    iput-boolean p3, p0, Linfo/flowersoft/theotown/stages/LoadingStage$Task;->async:Z

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$TkRXk68rQRXmHN_AuGzY4s5_aDc(Linfo/flowersoft/theotown/stages/LoadingStage;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/util/Watchdog$TimeoutHandler;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(JLjava/lang/Object;)V
    .registers 4

    .line 0
    invoke-static {p1, p2, p3}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$IVSEllZ3meS0G9IO5Q79mWJuztY(JLjava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda10 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$Nu3bxYA_aK-yUIG7yPAJrI4H0GM(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda11 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$sG5nLif9xr_ysjhg8SsCrxQanac(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda12 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda12;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$fW3eN3AdayYnb4eBeZ7ZAZZtWW4()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda13 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$YG7VgAHr62WqfZYVvftj0HZsxaI(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda14 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda14)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$dnF3OEWtuGsES1G0uWmsNRfpRSo(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda15 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda15)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$27wNPPRRxNmNMFTpEt7FTYGlTTY(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda16 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda16)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$0Mwg2jWxbTciCadei31HuJ9p-to(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda17 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda17)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$ea-36rUaZTbXiMeQtjPZzLJ4-PU(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda18 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda18)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda18;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda18;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$nlFm8a3ilQk7Wvelef0vx27udos(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda19 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda19)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$NEIrPaFV4uqsBvTk5pgp2xytpi8(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$kpXa3xsavEtmX4M4BOY2Snd5IPA(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda20 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda20)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$JP9B_NjtKwBAZEKt5TVVWbhvnBA(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda21 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda21)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$9JOacwMEpmMPfxN0cWDczezDkoA(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda22 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda22)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda22;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda22;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$nYtcKcxsTLgCPz1T1kAnSqFfiXo(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda23 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda23)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/draftloader/FrameList;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;Linfo/flowersoft/theotown/draftloader/FrameList;[I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda23;->f$1:Linfo/flowersoft/theotown/draftloader/FrameList;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda23;->f$2:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda23;->f$1:Linfo/flowersoft/theotown/draftloader/FrameList;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda23;->f$2:[I

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$5IIPDj1T38Y9ZzjDJhAm90WrOvg(Linfo/flowersoft/theotown/stages/LoadingStage;Linfo/flowersoft/theotown/draftloader/FrameList;[I)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda24 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda24)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/draftloader/PluginHelper$OutOfSpaceHandler;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;[ILjava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda24;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda24;->f$1:[I

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda24;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final handle()Z
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda24;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda24;->f$1:[I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda24;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$cFW3ex1Yn4-a010Bsb_0jWekgJU(Linfo/flowersoft/theotown/stages/LoadingStage;[ILjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda25 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda25)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

.field public final synthetic f$1:Lio/blueflower/stapel2d/drawing/Engine;

.field public final synthetic f$2:Lio/blueflower/stapel2d/drawing/Texture;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda25;->f$1:Lio/blueflower/stapel2d/drawing/Engine;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda25;->f$2:Lio/blueflower/stapel2d/drawing/Texture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda25;->f$1:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda25;->f$2:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$91f1pW_qgFvDyuN4dIiiQVrIoA4(Linfo/flowersoft/theotown/stages/LoadingStage;Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Texture;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda26 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda26)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

.field public final synthetic f$1:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda26;->f$1:Lio/blueflower/stapel2d/drawing/Engine;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda26;->f$1:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$9HiNoI69LBqmWLh0444Ms_0GoAU(Linfo/flowersoft/theotown/stages/LoadingStage;Lio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda27 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda27)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/drawing/Engine;

.field public final synthetic f$1:Lio/blueflower/stapel2d/drawing/Texture;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda27;->f$0:Lio/blueflower/stapel2d/drawing/Engine;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda27;->f$1:Lio/blueflower/stapel2d/drawing/Texture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda27;->f$0:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda27;->f$1:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$giEJ2W9Pei-8vUvaSjsJzh0vgaE(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Texture;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda28 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda28)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda28;->f$0:Lio/blueflower/stapel2d/drawing/Engine;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda28;->f$0:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$3DX-ZX_byXy0raL_Ef9rKoo9BRM(Lio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda29 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda29)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(I)Z
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$9x3KPNdEZLUG1X9SBLvCm-gG1C8(I)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$iMcqvn8qjQ-DHSStU3Yo7rgbRgs(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$E3lnnHdHdfPXqgFHKq1FhY0yrCk(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$vHmx3qgCneT0A8OubRJBo85UCF8(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$0FMjDnYqRbnQVmwEvwkF4mgo2HU(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$PAGQe9o2SF56OnYr2x8Vh62pVO8(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$lX8ayMgacI9JK3RMCODLSFAEoYY(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda9 (info.flowersoft.theotown.stages.LoadingStage$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadingStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadingStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadingStage$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/stages/LoadingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadingStage;->$r8$lambda$C3vqKUJnyGXh8oNqRWC-zTqwcy8(Linfo/flowersoft/theotown/stages/LoadingStage;)V

    return-void
.end method
