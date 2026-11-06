###### Class info.flowersoft.theotown.stages.WelcomeStage (info.flowersoft.theotown.stages.WelcomeStage)
.class public Linfo/flowersoft/theotown/stages/WelcomeStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "WelcomeStage.java"


# instance fields
.field public fireworkStartTime:J

.field public lastFireworkTime:J

.field public nextFireworkTime:J

.field public returningPlayerDialog:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;

.field public returningRewardDays:I

.field public returningRewardPending:Z

.field public final welcomeFireworks:Linfo/flowersoft/theotown/components/firework/Firework;


# direct methods
.method public static synthetic $r8$lambda$haq3_kmR4XSWFGiuPjwjGsMH2Fs()V
    .registers 4

    .line 99
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, ""

    const-string v2, "Privacy"

    const-string v3, "Open"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Linfo/flowersoft/theotown/util/OSUtil;->openPolicy()V

    return-void
.end method

.method public static synthetic $r8$lambda$xGc8cqdXLGqUETJDJibh3rSGOFk()V
    .registers 4

    .line 104
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, ""

    const-string v2, "Privacy"

    const-string v3, "Later"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 41
    new-instance p1, Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-direct {p1}, Linfo/flowersoft/theotown/components/firework/Firework;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->welcomeFireworks:Linfo/flowersoft/theotown/components/firework/Firework;

    return-void
.end method


# virtual methods
.method public final drawReturningFireworks()V
    .registers 10

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningPlayerDialog:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_94

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_94

    .line 273
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 274
    iget-wide v5, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->lastFireworkTime:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_20

    const/4 v0, 0x0

    goto :goto_2d

    :cond_20
    sub-long v5, v3, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v5, 0x32

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 275
    :goto_2d
    iput-wide v3, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->lastFireworkTime:J

    .line 276
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->welcomeFireworks:Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/components/firework/Firework;->update(I)V

    .line 278
    iget-wide v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->fireworkStartTime:J

    sub-long v0, v3, v0

    const-wide/16 v5, 0xfa0

    cmp-long v0, v0, v5

    const/high16 v1, 0x41400000    # 12.0f

    if-gez v0, :cond_8c

    iget-wide v5, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->nextFireworkTime:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_8c

    .line 279
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v2, "$firework20"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eqz v0, :cond_87

    .line 281
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v2

    .line 282
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v5

    int-to-float v2, v2

    .line 283
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    const v8, 0x3e19999a    # 0.15f

    add-float/2addr v7, v8

    mul-float/2addr v2, v7

    float-to-int v2, v2

    int-to-float v5, v5

    .line 284
    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 285
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->welcomeFireworks:Linfo/flowersoft/theotown/components/firework/Firework;

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-int v5, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v2, v5, v7}, Linfo/flowersoft/theotown/components/firework/Firework;->emit(Linfo/flowersoft/theotown/draft/AnimationDraft;IIF)Z

    :cond_87
    const-wide/16 v5, 0x28a

    add-long/2addr v3, v5

    .line 287
    iput-wide v3, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->nextFireworkTime:J

    .line 289
    :cond_8c
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->welcomeFireworks:Linfo/flowersoft/theotown/components/firework/Firework;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/components/firework/Firework;->drawScreen(Lio/blueflower/stapel2d/drawing/Engine;F)V

    return-void

    .line 266
    :cond_94
    :goto_94
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->welcomeFireworks:Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/firework/Firework;->clear()V

    .line 267
    iput-wide v1, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->lastFireworkTime:J

    .line 268
    iput-wide v1, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->nextFireworkTime:J

    .line 269
    iput-wide v1, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->fireworkStartTime:J

    return-void
.end method

.method public enter()V
    .registers 24

    move-object/from16 v1, p0

    .line 56
    const-string v2, ""

    invoke-super {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    const/4 v3, 0x0

    .line 57
    iput-object v3, v1, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningPlayerDialog:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;

    .line 58
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/WelcomeStage;->welcomeFireworks:Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/firework/Firework;->clear()V

    const-wide/16 v11, 0x0

    .line 59
    iput-wide v11, v1, Linfo/flowersoft/theotown/stages/WelcomeStage;->lastFireworkTime:J

    .line 60
    iput-wide v11, v1, Linfo/flowersoft/theotown/stages/WelcomeStage;->nextFireworkTime:J

    .line 61
    iput-wide v11, v1, Linfo/flowersoft/theotown/stages/WelcomeStage;->fireworkStartTime:J

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 64
    :try_start_19
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_2a

    :catch_27
    move-exception v0

    goto/16 :goto_cb

    .line 67
    :cond_2a
    :goto_2a
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v4, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getRemainingStorage(Ljava/io/File;)J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    .line 68
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "min space warning"

    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 69
    sget-object v6, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v6}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v6, v7, :cond_48

    move v6, v13

    goto :goto_49

    :cond_48
    move v6, v14

    .line 70
    :goto_49
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v8, "Space left"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "mb"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v7, v0

    cmp-long v0, v4, v7

    if-gez v0, :cond_d2

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_OVERLOADED:I

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0xbc9

    .line 73
    invoke-interface {v8, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v15, 0x556

    .line 74
    invoke-interface {v10, v15}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_ad

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xbb6

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_ae

    :cond_ad
    move-object v4, v2

    :goto_ae
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v7, v8, v4, v5}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 77
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_FORWARD:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xf2

    .line 78
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-virtual {v0, v4, v5}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 79
    invoke-virtual {v0, v13}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_ca} :catch_27

    goto :goto_d2

    .line 82
    :goto_cb
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v5, "Space"

    invoke-interface {v4, v5, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 85
    :cond_d2
    :goto_d2
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_PRIVACY_POLICY_REVIEW:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 86
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_13b

    .line 87
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "privacy"

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_13b

    .line 89
    sget v5, Linfo/flowersoft/theotown/resources/Settings;->firstVersion:I

    const-string v6, "max start version"

    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-gt v5, v4, :cond_13b

    .line 90
    new-instance v15, Linfo/flowersoft/theotown/ui/Dialog;

    sget v16, Linfo/flowersoft/theotown/resources/Resources;->ICON_PUBLIC:I

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x77

    .line 91
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v17

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x829

    .line 92
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x78

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v19, 0xe1

    move-object/from16 v21, v4

    invoke-direct/range {v15 .. v21}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 95
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 96
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xd99

    .line 97
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/stages/WelcomeStage$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Linfo/flowersoft/theotown/stages/WelcomeStage$$ExternalSyntheticLambda0;-><init>()V

    .line 96
    invoke-virtual {v15, v0, v4, v14, v5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 102
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x1e0

    .line 103
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/stages/WelcomeStage$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Linfo/flowersoft/theotown/stages/WelcomeStage$$ExternalSyntheticLambda1;-><init>()V

    .line 102
    invoke-virtual {v15, v0, v4, v14, v5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 105
    invoke-virtual {v15, v13}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 110
    :cond_13b
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_CHOSE_SHADER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    .line 111
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_237

    .line 112
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 114
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getVersion()I

    move-result v0

    const/16 v4, 0x15

    if-lt v0, v4, :cond_22e

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v4, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v4, :cond_22e

    sget v0, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    const/16 v4, 0x2000

    if-lt v0, v4, :cond_22e

    .line 116
    :try_start_164
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v2, "$res13"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v7, v0, v14

    .line 117
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getInstance()Linfo/flowersoft/theotown/resources/ShaderRepository;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ShaderRepository;->countShaders()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 118
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getInstance()Linfo/flowersoft/theotown/resources/ShaderRepository;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v9, v3}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getShader(ILjava/lang/String;)Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->build()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v10

    .line 121
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/drawing/Engine;->loadShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 122
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 123
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->shaderConfig:Linfo/flowersoft/theotown/resources/ShaderConfig;

    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 124
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 126
    new-instance v15, Linfo/flowersoft/theotown/ui/Dialog;

    sget v16, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_TEACHER1:I

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x859

    .line 127
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xcd7

    .line 128
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v18

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v19, 0x12c

    const/16 v20, 0xc8

    move-object/from16 v21, v0

    invoke-direct/range {v15 .. v21}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 134
    invoke-virtual {v15}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v0

    invoke-virtual {v15}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x2a

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 135
    invoke-virtual {v15}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v0

    invoke-virtual {v0, v14}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v15}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 137
    invoke-virtual {v15}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v2

    add-int/lit8 v2, v2, -0x2a

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setY(I)V

    .line 139
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x2a

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    move-object v2, v0

    .line 142
    new-instance v0, Linfo/flowersoft/theotown/stages/WelcomeStage$1;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    const/16 v4, 0x48

    move-object v3, v2

    const/4 v2, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    move-object v8, v5

    move v5, v4

    move-object/from16 v22, v15

    move-object v15, v8

    move-object/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/WelcomeStage$1;-><init>(Linfo/flowersoft/theotown/stages/WelcomeStage;IIIILio/blueflower/stapel2d/gui/Gadget;ILinfo/flowersoft/theotown/ui/Dialog;)V
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_20e} :catch_225

    .line 170
    :try_start_20e
    new-instance v0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_214} :catch_227

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v4

    move-object v1, v8

    move v8, v7

    move-object v7, v10

    move-object v10, v1

    move-object/from16 v1, p0

    :try_start_21d
    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/stages/WelcomeStage$2;-><init>(Linfo/flowersoft/theotown/stages/WelcomeStage;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/drawing/Shader;IILinfo/flowersoft/theotown/ui/Dialog;)V

    move-object v15, v10

    .line 201
    invoke-virtual {v15, v13}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_224} :catch_225

    goto :goto_237

    :catch_225
    move-exception v0

    goto :goto_22a

    :catch_227
    move-exception v0

    move-object/from16 v1, p0

    .line 203
    :goto_22a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_237

    .line 206
    :cond_22e
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v3, "Shader selection"

    const-string v4, "Not supported"

    invoke-interface {v0, v3, v4, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_237
    :goto_237
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->isFirstStart:Z

    if-eqz v0, :cond_25a

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    if-nez v0, :cond_25a

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_25a

    .line 212
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "start diamonds"

    .line 213
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "welcome present"

    invoke-virtual {v0, v2, v14, v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    .line 219
    :cond_25a
    sget-object v0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;->Companion:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$Companion;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog$Companion;->getConfig()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 220
    iput-boolean v14, v1, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningRewardPending:Z

    .line 222
    const-string v2, "enabled"

    invoke-virtual {v0, v2, v14}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2b1

    sget-boolean v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v2, :cond_2b1

    .line 224
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->canEarnDiamonds()Z

    move-result v2

    if-eqz v2, :cond_2b1

    .line 225
    const-string v2, "min days"

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 226
    const-string v3, "max days"

    const/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 228
    iput v14, v1, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningRewardDays:I

    .line 229
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getLastSaveTime()J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-lez v5, :cond_2b1

    .line 231
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0x5265c00

    .line 232
    div-long v3, v5, v3

    long-to-int v3, v3

    iput v3, v1, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningRewardDays:I

    cmp-long v4, v5, v11

    if-lez v4, :cond_2b1

    if-gt v2, v3, :cond_2b1

    if-gt v3, v0, :cond_2b1

    .line 236
    iput-boolean v13, v1, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningRewardPending:Z

    .line 241
    :cond_2b1
    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_2c2

    iget-boolean v0, v1, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningRewardPending:Z

    if-nez v0, :cond_2c2

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    :cond_2c2
    return-void
.end method

.method public onUpdate()V
    .registers 5

    .line 246
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 248
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 249
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningRewardPending:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningRewardPending:Z

    .line 251
    new-instance v0, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget v3, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningRewardDays:I

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningPlayerDialog:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;

    .line 252
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->welcomeFireworks:Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/firework/Firework;->clear()V

    const-wide/16 v0, 0x0

    .line 253
    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->lastFireworkTime:J

    .line 254
    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->nextFireworkTime:J

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->fireworkStartTime:J

    .line 256
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage;->returningPlayerDialog:Linfo/flowersoft/theotown/ui/ReturningPlayerDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    goto :goto_3c

    .line 258
    :cond_35
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 261
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/WelcomeStage;->drawReturningFireworks()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 294
    const-string v0, "WelcomeStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.WelcomeStage.AnonymousClass1 (info.flowersoft.theotown.stages.WelcomeStage$1)
.class public Linfo/flowersoft/theotown/stages/WelcomeStage$1;
.super Lio/blueflower/stapel2d/gui/Button;
.source "WelcomeStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/WelcomeStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/WelcomeStage;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$frame:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/WelcomeStage;IIIILio/blueflower/stapel2d/gui/Gadget;ILinfo/flowersoft/theotown/ui/Dialog;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$1;->this$0:Linfo/flowersoft/theotown/stages/WelcomeStage;

    iput p7, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$1;->val$frame:I

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 145
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Button;->draw(II)V

    .line 147
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 148
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    .line 149
    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    .line 151
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 152
    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, p2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$1;->this$0:Linfo/flowersoft/theotown/stages/WelcomeStage;

    iget-object p2, p2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x32

    invoke-interface {p2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v0

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v6, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v7, p1

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3f733333    # 0.95f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v3, v4

    move v4, v5

    .line 153
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 155
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    const/high16 v8, -0x40800000    # -1.0f

    iget v9, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$1;->val$frame:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    return-void
.end method

.method public onClick()V
    .registers 5

    .line 160
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 162
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Selected classic"

    const-string v2, ""

    const-string v3, "Shader selection"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 164
    sput v0, Linfo/flowersoft/theotown/resources/Settings;->shader:I

    const/4 v1, 0x0

    .line 165
    sput-object v1, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    .line 166
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.WelcomeStage.AnonymousClass2 (info.flowersoft.theotown.stages.WelcomeStage$2)
.class public Linfo/flowersoft/theotown/stages/WelcomeStage$2;
.super Lio/blueflower/stapel2d/gui/Button;
.source "WelcomeStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/WelcomeStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/WelcomeStage;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$frame:I

.field public final synthetic val$smoothShader:Lio/blueflower/stapel2d/drawing/Shader;

.field public final synthetic val$smoothShaderIndex:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/WelcomeStage;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/drawing/Shader;IILinfo/flowersoft/theotown/ui/Dialog;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;->this$0:Linfo/flowersoft/theotown/stages/WelcomeStage;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;->val$smoothShader:Lio/blueflower/stapel2d/drawing/Shader;

    iput p8, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;->val$frame:I

    iput p9, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;->val$smoothShaderIndex:I

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 173
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Button;->draw(II)V

    .line 175
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 176
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    .line 177
    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    .line 179
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 180
    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, p2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;->this$0:Linfo/flowersoft/theotown/stages/WelcomeStage;

    iget-object p2, p2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x9ec

    invoke-interface {p2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v0

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v6, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v7, p1

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3f733333    # 0.95f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v3, v4

    move v4, v5

    .line 181
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 183
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;->val$smoothShader:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 184
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    const v8, -0x40733333    # -1.1f

    iget v9, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;->val$frame:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 185
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    return-void
.end method

.method public onClick()V
    .registers 5

    .line 190
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 192
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Selected smooth"

    const-string v2, ""

    const-string v3, "Shader selection"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;->val$smoothShaderIndex:I

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->shader:I

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;->val$smoothShader:Lio/blueflower/stapel2d/drawing/Shader;

    sput-object v0, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    .line 196
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WelcomeStage$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.WelcomeStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.WelcomeStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/WelcomeStage$$ExternalSyntheticLambda0;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/WelcomeStage;->$r8$lambda$haq3_kmR4XSWFGiuPjwjGsMH2Fs()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.WelcomeStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.WelcomeStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/WelcomeStage$$ExternalSyntheticLambda1;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/WelcomeStage;->$r8$lambda$xGc8cqdXLGqUETJDJibh3rSGOFk()V

    return-void
.end method
