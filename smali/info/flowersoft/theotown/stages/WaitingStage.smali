###### Class info.flowersoft.theotown.stages.WaitingStage (info.flowersoft.theotown.stages.WaitingStage)
.class public Linfo/flowersoft/theotown/stages/WaitingStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "WaitingStage.java"


# instance fields
.field public final HELPFUL_TARGET_TIME:J

.field public aborted:Ljava/lang/Runnable;

.field public currentSteppedTask:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
            "*>;"
        }
    .end annotation
.end field

.field public currentSteppedTaskTotal:I

.field public done:Z

.field public doneTasks:I

.field public finished:Ljava/lang/Runnable;

.field public infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isHelpfulTopic:Z

.field public postponedSteppedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/Getter<",
            "+",
            "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public progress:Linfo/flowersoft/theotown/util/ProgressProvider;

.field public started:Z

.field public stateProvider:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public steppedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public timeStartedMS:J

.field public totalTasks:I

.field public worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Thread;",
            "Ljava/lang/Runnable;",
            "Linfo/flowersoft/theotown/util/ProgressProvider;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 42
    sget-wide p1, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    const-wide/16 v0, 0x258

    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    div-long p1, v0, p1

    add-long/2addr p1, v0

    iput-wide p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->HELPFUL_TARGET_TIME:J

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->infos:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->steppedTasks:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->postponedSteppedTasks:Ljava/util/List;

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->doneTasks:I

    .line 60
    iput p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->totalTasks:I

    .line 84
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->text:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->worker:Ljava/lang/Thread;

    .line 86
    iput-object p5, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->finished:Ljava/lang/Runnable;

    if-eqz p4, :cond_37

    const/4 p1, 0x1

    .line 87
    iput p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->totalTasks:I

    .line 89
    :cond_37
    iput-object p6, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->progress:Linfo/flowersoft/theotown/util/ProgressProvider;

    .line 90
    iput-object p7, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->stateProvider:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/WaitingStage;)F
    .registers 1

    .line 36
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/WaitingStage;->getProgress()F

    move-result p0

    return p0
.end method


# virtual methods
.method public allowTracking()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public append(Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
            "*>;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->steppedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->totalTasks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->totalTasks:I

    return-void
.end method

.method public append(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "+",
            "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
            "*>;>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 100
    :cond_3
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->postponedSteppedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->totalTasks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->totalTasks:I

    return-void
.end method

.method public final draw()V
    .registers 41

    move-object/from16 v0, p0

    .line 264
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    const/4 v3, 0x0

    .line 265
    :goto_7
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/WaitingStage;->infos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 266
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/WaitingStage;->infos:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v8

    mul-float/2addr v7, v8

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v1, v5, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 269
    :cond_34
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOGO_THEOTOWN:I

    .line 270
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 271
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 272
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    .line 273
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v7

    div-int/2addr v7, v6

    .line 274
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v8

    iget-wide v10, v0, Linfo/flowersoft/theotown/stages/WaitingStage;->timeStartedMS:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    .line 278
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Image;->getUVStream()[F

    move-result-object v9

    .line 279
    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v10, v1}, Lio/blueflower/stapel2d/drawing/Image;->getUVStreamPos(I)I

    move-result v10

    .line 280
    aget v11, v9, v10

    add-int/lit8 v12, v10, 0x1

    .line 281
    aget v12, v9, v12

    add-int/lit8 v13, v10, 0x2

    .line 282
    aget v13, v9, v13

    const/4 v14, 0x3

    add-int/2addr v10, v14

    .line 283
    aget v9, v9, v10

    int-to-float v5, v5

    const/high16 v10, 0x3f000000    # 0.5f

    int-to-float v3, v3

    mul-float/2addr v3, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v3, v10

    sub-float v15, v5, v3

    int-to-float v7, v7

    int-to-float v4, v4

    mul-float/2addr v4, v10

    sub-float v4, v7, v4

    add-float/2addr v5, v3

    const/4 v3, 0x0

    :goto_8c
    const/16 v2, 0x9

    if-ge v3, v2, :cond_1c0

    move/from16 v16, v14

    const/4 v14, 0x0

    :goto_93
    const/16 v6, 0x24

    if-ge v14, v6, :cond_1b1

    mul-int/lit8 v17, v3, 0x24

    add-int v17, v14, v17

    move/from16 v18, v10

    int-to-float v10, v14

    int-to-float v6, v6

    div-float/2addr v10, v6

    move/from16 v19, v6

    int-to-float v6, v3

    move/from16 v20, v3

    int-to-float v3, v2

    div-float/2addr v6, v3

    add-int/lit8 v2, v14, 0x1

    move/from16 v21, v3

    int-to-float v3, v2

    div-float v3, v3, v19

    move/from16 v22, v2

    add-int/lit8 v2, v20, 0x1

    int-to-float v2, v2

    div-float v2, v2, v21

    move/from16 v23, v2

    .line 301
    rem-int/lit16 v2, v8, 0x1770

    int-to-float v2, v2

    const v24, 0x45bb8000    # 6000.0f

    div-float v2, v2, v24

    const/high16 v24, 0x41800000    # 16.0f

    mul-float v2, v2, v24

    sub-float v24, v6, v18

    const/high16 v25, 0x40c00000    # 6.0f

    mul-float v24, v24, v25

    add-float v24, v2, v24

    move/from16 v26, v2

    .line 304
    invoke-static {v14}, Linfo/flowersoft/theotown/util/Hashing;->hash(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float v2, v2, v25

    const/high16 v25, 0x437f0000    # 255.0f

    div-float v2, v2, v25

    add-float v24, v24, v2

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float v2, v24, v2

    move/from16 v24, v3

    .line 305
    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->smooth2:Lcom/badlogic/gdx/math/Interpolation;

    move/from16 v27, v6

    const/4 v6, 0x0

    move/from16 v28, v8

    move/from16 v8, v18

    invoke-static {v2, v6, v8}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v2

    sub-float v2, v8, v2

    const/high16 v3, 0x41700000    # 15.0f

    sub-float v3, v26, v3

    add-int/lit8 v8, v20, -0x1

    const/4 v6, 0x4

    move/from16 v29, v2

    const/4 v2, 0x1

    if-ge v8, v6, :cond_103

    move v6, v2

    goto :goto_104

    :cond_103
    const/4 v6, 0x0

    :goto_104
    int-to-float v6, v6

    add-float/2addr v3, v6

    .line 309
    invoke-static/range {v17 .. v17}, Linfo/flowersoft/theotown/util/Hashing;->hash(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v6, v8

    div-float v6, v6, v25

    add-float/2addr v3, v6

    .line 310
    invoke-static {v14}, Linfo/flowersoft/theotown/util/Hashing;->hash(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float v6, v6, v25

    add-float/2addr v3, v6

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 311
    invoke-static {v3, v6, v8}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v3

    .line 312
    sget-object v6, Lcom/badlogic/gdx/math/Interpolation;->smooth:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v3

    .line 313
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-float v3, v3, v25

    sub-float v3, v25, v3

    float-to-int v3, v3

    invoke-virtual {v6, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 315
    invoke-static/range {v17 .. v17}, Linfo/flowersoft/theotown/util/Hashing;->hash(I)I

    move-result v3

    rem-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_16e

    if-eq v3, v2, :cond_160

    const/4 v2, 0x2

    if-eq v3, v2, :cond_153

    move/from16 v6, v16

    if-eq v3, v6, :cond_14d

    :goto_145
    move v2, v10

    move/from16 v3, v23

    :goto_148
    move/from16 v10, v24

    move/from16 v14, v27

    goto :goto_175

    :cond_14d
    div-float v3, v29, v21

    sub-float v3, v23, v3

    move v2, v10

    goto :goto_148

    :cond_153
    move/from16 v6, v16

    div-float v3, v29, v19

    sub-float v3, v24, v3

    move v2, v10

    move/from16 v14, v27

    move v10, v3

    move/from16 v3, v23

    goto :goto_175

    :cond_160
    move/from16 v6, v16

    const/4 v2, 0x2

    div-float v3, v29, v21

    add-float v3, v27, v3

    move v14, v3

    move v2, v10

    move/from16 v3, v23

    move/from16 v10, v24

    goto :goto_175

    :cond_16e
    move/from16 v6, v16

    const/4 v2, 0x2

    div-float v3, v29, v19

    add-float/2addr v10, v3

    goto :goto_145

    .line 330
    :goto_175
    invoke-static {v15, v5, v2}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v31

    .line 331
    invoke-static {v4, v7, v14}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v32

    .line 332
    invoke-static {v15, v5, v10}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v33

    .line 333
    invoke-static {v4, v7, v3}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v34

    .line 334
    invoke-static {v11, v13, v2}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v35

    .line 335
    invoke-static {v12, v9, v14}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v36

    .line 336
    invoke-static {v11, v13, v10}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v37

    .line 337
    invoke-static {v12, v9, v3}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v38

    .line 339
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 340
    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v30

    const/16 v39, 0x1

    move-object/from16 v29, v2

    .line 339
    invoke-virtual/range {v29 .. v39}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V

    move/from16 v16, v6

    move v10, v8

    move/from16 v3, v20

    move/from16 v14, v22

    move/from16 v8, v28

    const/16 v2, 0x9

    goto/16 :goto_93

    :cond_1b1
    move/from16 v20, v3

    move/from16 v28, v8

    move v8, v10

    move/from16 v6, v16

    add-int/lit8 v3, v20, 0x1

    move v14, v6

    move/from16 v8, v28

    const/4 v6, 0x2

    goto/16 :goto_8c

    :cond_1c0
    return-void
.end method

.method public drop()V
    .registers 2

    .line 393
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    .line 395
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->done:Z

    if-nez v0, :cond_22

    .line 396
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_1b

    .line 398
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 399
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->worker:Ljava/lang/Thread;
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    :cond_1b
    :goto_1b
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->aborted:Ljava/lang/Runnable;

    if-eqz v0, :cond_22

    .line 406
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_22
    return-void
.end method

.method public enter()V
    .registers 19

    move-object/from16 v1, p0

    .line 111
    invoke-super {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 113
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    .line 114
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    .line 116
    new-instance v0, Linfo/flowersoft/theotown/stages/WaitingStage$1;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/WaitingStage$1;-><init>(Linfo/flowersoft/theotown/stages/WaitingStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move v8, v4

    .line 122
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v9, v2, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    move-object v6, v0

    .line 123
    new-instance v0, Linfo/flowersoft/theotown/stages/WaitingStage$2;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/WaitingStage;->text:Ljava/lang/String;

    int-to-float v3, v8

    invoke-virtual {v9, v2}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v10, v5, 0x2

    add-int/lit8 v4, v10, 0x10

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/WaitingStage$2;-><init>(Linfo/flowersoft/theotown/stages/WaitingStage;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v1, v0

    move-object v0, v7

    .line 138
    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 139
    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v7}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 142
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Label;->getTextWidth()F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object v6, v0

    .line 143
    new-instance v0, Linfo/flowersoft/theotown/stages/WaitingStage$3;

    div-int/lit8 v1, v8, 0x2

    div-int/lit8 v2, v4, 0x2

    sub-int v2, v1, v2

    add-int/lit8 v3, v10, 0x1a

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/WaitingStage$3;-><init>(Linfo/flowersoft/theotown/stages/WaitingStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 168
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/ui/ProgressBar;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 172
    invoke-static {}, Linfo/flowersoft/theotown/resources/TopicManager;->getInstance()Linfo/flowersoft/theotown/resources/TopicManager;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TopicManager;->pickRandomTopic()V

    .line 175
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TopicManager;->isHelpful()Z

    move-result v2

    iput-boolean v2, v1, Linfo/flowersoft/theotown/stages/WaitingStage;->isHelpfulTopic:Z

    .line 179
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TopicManager;->getTopicDraft()Linfo/flowersoft/theotown/draft/TopicDraft;

    move-result-object v2

    if-eqz v2, :cond_95

    .line 180
    new-instance v2, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TopicManager;->getTopicDraft()Linfo/flowersoft/theotown/draft/TopicDraft;

    move-result-object v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v2

    :goto_93
    move-object v12, v2

    goto :goto_a0

    .line 182
    :cond_95
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TopicManager;->getTopicId()I

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_93

    .line 185
    :goto_a0
    new-instance v11, Linfo/flowersoft/theotown/ui/ShadowedLabel;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 186
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    neg-int v13, v2

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, v10

    add-int/lit8 v14, v2, 0x34

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v15

    const/16 v16, 0x0

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v17}, Linfo/flowersoft/theotown/ui/ShadowedLabel;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/high16 v2, 0x3f000000    # 0.5f

    .line 187
    invoke-virtual {v11, v2, v2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 188
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TopicManager;->getTopicColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-virtual {v11, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "version"

    .line 193
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {}, Linfo/flowersoft/theotown/resources/ConfigManager;->getInstance()Linfo/flowersoft/theotown/resources/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/ConfigManager;->isUpToDate()Z

    move-result v2

    if-eqz v2, :cond_116

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_116
    move-object v9, v0

    .line 195
    new-instance v8, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v11

    const/4 v13, 0x0

    iget-object v14, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 196
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    const/4 v0, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 197
    invoke-virtual {v8, v0, v9}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 198
    invoke-virtual {v8, v7}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 200
    new-instance v0, Linfo/flowersoft/theotown/stages/WaitingStage$4;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/WaitingStage$4;-><init>(Linfo/flowersoft/theotown/stages/WaitingStage;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 211
    invoke-virtual {v0, v9, v9}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    const/16 v2, 0x50

    const/16 v3, 0xff

    .line 212
    invoke-virtual {v0, v3, v3, v3, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(IIII)V

    .line 213
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 215
    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 216
    iget-boolean v0, v1, Linfo/flowersoft/theotown/stages/WaitingStage;->started:Z

    if-nez v0, :cond_174

    .line 217
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/WaitingStage;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_171

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_171
    const/4 v0, 0x1

    .line 218
    iput-boolean v0, v1, Linfo/flowersoft/theotown/stages/WaitingStage;->started:Z

    .line 221
    :cond_174
    new-instance v0, Linfo/flowersoft/theotown/stages/WaitingStage$5;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    const/16 v5, 0x1e

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/WaitingStage$5;-><init>(Linfo/flowersoft/theotown/stages/WaitingStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 232
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iput-wide v2, v1, Linfo/flowersoft/theotown/stages/WaitingStage;->timeStartedMS:J

    .line 233
    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/WaitingStage;->work()V

    return-void
.end method

.method public final getProgress()F
    .registers 8

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->worker:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->progress:Linfo/flowersoft/theotown/util/ProgressProvider;

    invoke-interface {v0}, Linfo/flowersoft/theotown/util/ProgressProvider;->getProgress()F

    move-result v0

    goto :goto_1e

    .line 240
    :cond_c
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTask:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    if-eqz v0, :cond_1d

    .line 241
    iget v2, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTaskTotal:I

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->remainingSteps()I

    move-result v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTaskTotal:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 243
    :goto_1e
    iget v2, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->doneTasks:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->totalTasks:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 245
    iget-boolean v2, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->isHelpfulTopic:Z

    if-eqz v2, :cond_46

    .line 246
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iget-wide v4, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->timeStartedMS:J

    sub-long/2addr v2, v4

    .line 247
    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->smooth2:Lcom/badlogic/gdx/math/Interpolation;

    long-to-float v2, v2

    iget-wide v5, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->HELPFUL_TARGET_TIME:J

    long-to-float v3, v5

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 248
    invoke-static {v2, v1, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 247
    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_46
    return v0
.end method

.method public onUpdate()V
    .registers 2

    .line 256
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/WaitingStage;->work()V

    .line 257
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 258
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/WaitingStage;->draw()V

    .line 260
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Wait:Linfo/flowersoft/theotown/ui/CursorType;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->setPreferredCursor(Linfo/flowersoft/theotown/ui/CursorType;)V

    return-void
.end method

.method public final reachedTargetTime()Z
    .registers 7

    .line 385
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->isHelpfulTopic:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 387
    :cond_6
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iget-wide v4, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->timeStartedMS:J

    sub-long/2addr v2, v4

    .line 388
    iget-wide v4, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->HELPFUL_TARGET_TIME:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_14

    return v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public setAborted(Ljava/lang/Runnable;)Linfo/flowersoft/theotown/stages/WaitingStage;
    .registers 2

    .line 105
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->aborted:Ljava/lang/Runnable;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 418
    const-string v0, "WaitingStage"

    return-object v0
.end method

.method public final work()V
    .registers 5

    .line 351
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->worker:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-nez v0, :cond_3e

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTask:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    if-nez v0, :cond_3e

    .line 352
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->steppedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 353
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->steppedTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTask:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    goto :goto_34

    .line 354
    :cond_1c
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->postponedSteppedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 355
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->postponedSteppedTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTask:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    .line 357
    :cond_34
    :goto_34
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTask:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->remainingSteps()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTaskTotal:I

    .line 360
    :cond_3e
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTask:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_59

    .line 361
    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->remainingSteps()I

    move-result v0

    if-lez v0, :cond_50

    .line 362
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTask:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->run()V

    goto :goto_59

    .line 364
    :cond_50
    iput-object v2, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTask:Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    .line 365
    iput v1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->currentSteppedTaskTotal:I

    .line 366
    iget v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->doneTasks:I

    add-int/2addr v0, v3

    iput v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->doneTasks:I

    .line 370
    :cond_59
    :goto_59
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 371
    iput-object v2, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->worker:Ljava/lang/Thread;

    .line 372
    iget v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->doneTasks:I

    add-int/2addr v0, v3

    iput v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->doneTasks:I

    .line 375
    :cond_6a
    iget v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->doneTasks:I

    iget v1, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->totalTasks:I

    if-lt v0, v1, :cond_86

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/WaitingStage;->reachedTargetTime()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 376
    iput-boolean v3, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->done:Z

    .line 377
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 378
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage;->finished:Ljava/lang/Runnable;

    if-eqz v0, :cond_86

    .line 379
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_86
    return-void
.end method

###### Class info.flowersoft.theotown.stages.WaitingStage.AnonymousClass1 (info.flowersoft.theotown.stages.WaitingStage$1)
.class public Linfo/flowersoft/theotown/stages/WaitingStage$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "WaitingStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/WaitingStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/WaitingStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/WaitingStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 116
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage$1;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.WaitingStage.AnonymousClass2 (info.flowersoft.theotown.stages.WaitingStage$2)
.class public Linfo/flowersoft/theotown/stages/WaitingStage$2;
.super Linfo/flowersoft/theotown/ui/ShadowedLabel;
.source "WaitingStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/WaitingStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/WaitingStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/WaitingStage;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 123
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage$2;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/ShadowedLabel;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public drawText(Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Ljava/lang/String;FFFFFF)V
    .registers 16

    .line 126
    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    .line 127
    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v1

    sub-float v2, p6, v0

    mul-float/2addr v2, p8

    add-float/2addr v2, p4

    float-to-int v2, v2

    sub-float v3, p7, v1

    mul-float/2addr v3, p9

    add-float/2addr v3, p5

    float-to-int v3, v3

    const/16 v4, 0x50

    .line 130
    invoke-virtual {p2, v4}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    .line 131
    invoke-super/range {p0 .. p9}, Linfo/flowersoft/theotown/ui/ShadowedLabel;->drawText(Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Ljava/lang/String;FFFFFF)V

    const/16 v4, 0xff

    .line 132
    invoke-virtual {p2, v4}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    .line 133
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/WaitingStage$2;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v5, v4, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/WaitingStage;->access$000(Linfo/flowersoft/theotown/stages/WaitingStage;)F

    move-result v4

    mul-float/2addr v4, v0

    invoke-virtual {v5, v2, v3, v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    .line 134
    invoke-super/range {p0 .. p9}, Linfo/flowersoft/theotown/ui/ShadowedLabel;->drawText(Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Ljava/lang/String;FFFFFF)V

    .line 135
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage$2;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.WaitingStage.AnonymousClass3 (info.flowersoft.theotown.stages.WaitingStage$3)
.class public Linfo/flowersoft/theotown/stages/WaitingStage$3;
.super Linfo/flowersoft/theotown/ui/ProgressBar;
.source "WaitingStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/WaitingStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/WaitingStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/WaitingStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 143
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage$3;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/ProgressBar;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage$3;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ProgressBar;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage$3;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage$3;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    int-to-float v4, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v0

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage$3;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage$3;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    int-to-float v4, p1

    iget p1, p0, Linfo/flowersoft/theotown/ui/ProgressBar;->progress:F

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float p2, p2

    mul-float v5, p1, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 160
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage$3;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public onUpdate()V
    .registers 2

    .line 165
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 166
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage$3;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/WaitingStage;->access$000(Linfo/flowersoft/theotown/stages/WaitingStage;)F

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/ProgressBar;->setProgress(F)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.WaitingStage.AnonymousClass4 (info.flowersoft.theotown.stages.WaitingStage$4)
.class public Linfo/flowersoft/theotown/stages/WaitingStage$4;
.super Lio/blueflower/stapel2d/gui/Label;
.source "WaitingStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/WaitingStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/WaitingStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/WaitingStage;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 200
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage$4;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .line 203
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage$4;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/WaitingStage;->stateProvider:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v0, :cond_13

    .line 205
    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_13
    const-string v0, ""

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.WaitingStage.AnonymousClass5 (info.flowersoft.theotown.stages.WaitingStage$5)
.class public Linfo/flowersoft/theotown/stages/WaitingStage$5;
.super Lio/blueflower/stapel2d/gui/Button;
.source "WaitingStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/WaitingStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/WaitingStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/WaitingStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 221
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/WaitingStage$5;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

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

    .line 224
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 225
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/WaitingStage$5;->this$0:Linfo/flowersoft/theotown/stages/WaitingStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/BaseStage;->onBack()V

    return-void
.end method
