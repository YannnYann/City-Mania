###### Class io.blueflower.stapel2d.gamestack.Stapel2DGameContext (io.blueflower.stapel2d.gamestack.Stapel2DGameContext)
.class public Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
.super Ljava/lang/Object;
.source "Stapel2DGameContext.java"


# instance fields
.field public deltaTime:F

.field public final engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public height:I

.field public final key:Lio/blueflower/stapel2d/key/KeyMapper;

.field public lastRender:J

.field public requestRestart:Z

.field public final touch:Lio/blueflower/stapel2d/touch/TouchMapper;

.field public final translationManager:Lio/blueflower/stapel2d/gamestack/TranslationManager;

.field public width:I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/TranslationManager;)V
    .registers 13

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lio/blueflower/stapel2d/touch/TouchMapper;

    invoke-direct {v0}, Lio/blueflower/stapel2d/touch/TouchMapper;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->touch:Lio/blueflower/stapel2d/touch/TouchMapper;

    .line 76
    new-instance v0, Lio/blueflower/stapel2d/key/KeyMapper;

    invoke-direct {v0}, Lio/blueflower/stapel2d/key/KeyMapper;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->key:Lio/blueflower/stapel2d/key/KeyMapper;

    .line 77
    iput-object p1, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->translationManager:Lio/blueflower/stapel2d/gamestack/TranslationManager;

    .line 79
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    .line 80
    div-long v2, v0, v2

    const-wide/32 v4, 0x1000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const/4 p1, 0x1

    const/4 v4, 0x2

    move v5, p1

    :goto_29
    mul-int/lit8 v6, v5, 0x2

    mul-int/lit8 v7, v4, 0x2

    const/16 v8, 0x3fff

    .line 87
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 85
    invoke-static {v6, v9, p1}, Lio/blueflower/stapel2d/drawing/Engine;->getMemoryConsumption(IIZ)J

    move-result-wide v9

    cmp-long v9, v9, v2

    if-gtz v9, :cond_41

    .line 90
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v6

    goto :goto_29

    .line 93
    :cond_41
    new-instance v2, Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {v2, v5, v4, p1}, Lio/blueflower/stapel2d/drawing/Engine;-><init>(IIZ)V

    iput-object v2, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 95
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getMemoryConsumption()J

    move-result-wide v6

    long-to-float v2, v6

    const/high16 v4, 0x49800000    # 1048576.0f

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    long-to-float v0, v0

    div-float/2addr v0, v4

    .line 98
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 96
    const-string v1, "Initialized stapel2d engine, buffers need %f MB, heap size is %f MB"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-interface {p1, v3, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Max quad count is %d"

    invoke-static {v2, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x3a83126f    # 0.001f

    .line 102
    iput p1, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->deltaTime:F

    return-void
.end method


# virtual methods
.method public beginFrame()V
    .registers 6

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 254
    iget-wide v2, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->lastRender:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iput v2, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->deltaTime:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    const v4, 0x3a83126f    # 0.001f

    if-gtz v3, :cond_1b

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1d

    .line 256
    :cond_1b
    iput v4, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->deltaTime:F

    .line 258
    :cond_1d
    iput-wide v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->lastRender:J

    return-void
.end method

.method public endFrame()V
    .registers 2

    .line 262
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->flip()V

    .line 263
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->endOfFrame()V

    return-void
.end method

.method public getDeltaTime()F
    .registers 2

    .line 272
    iget v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->deltaTime:F

    return v0
.end method

.method public getEngine()Lio/blueflower/stapel2d/drawing/Engine;
    .registers 2

    .line 285
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    return-object v0
.end method

.method public getFPS()F
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 281
    iget v1, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->deltaTime:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 230
    iget v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->height:I

    return v0
.end method

.method public getKey()Lio/blueflower/stapel2d/key/KeyMapper;
    .registers 2

    .line 120
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->key:Lio/blueflower/stapel2d/key/KeyMapper;

    return-object v0
.end method

.method public getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;
    .registers 2

    .line 111
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->touch:Lio/blueflower/stapel2d/touch/TouchMapper;

    return-object v0
.end method

.method public getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;
    .registers 2

    .line 191
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->translationManager:Lio/blueflower/stapel2d/gamestack/TranslationManager;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 221
    iget v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->width:I

    return v0
.end method

.method public isRequestRestart()Z
    .registers 2

    .line 187
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart:Z

    return v0
.end method

.method public onSizeChange(II)V
    .registers 4

    .line 244
    iget-object v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->resize(II)V

    .line 245
    iput p1, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->width:I

    .line 246
    iput p2, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->height:I

    return-void
.end method

.method public openStream(Lcom/badlogic/gdx/files/FileHandle;)Ljava/io/InputStream;
    .registers 2

    .line 212
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public requestRestart()V
    .registers 2

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart:Z

    return-void
.end method
