###### Class info.flowersoft.theotown.stages.PluginTextureStage (info.flowersoft.theotown.stages.PluginTextureStage)
.class public Linfo/flowersoft/theotown/stages/PluginTextureStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "PluginTextureStage.java"


# instance fields
.field public areaIndex:I

.field public image:Lio/blueflower/stapel2d/drawing/Image;

.field public lastTPCount:I

.field public moveMomentumX:F

.field public moveMomentumY:F

.field public offsetX:F

.field public offsetY:F

.field public scale:F

.field public touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

.field public touchStartCityScale:F

.field public touchStartDistance:F


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 38
    iput p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetX:F

    .line 39
    iput p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetY:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    iput p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->scale:F

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F
    .registers 1

    .line 31
    iget p0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetX:F

    return p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F
    .registers 1

    .line 31
    iget p0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetY:F

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F
    .registers 1

    .line 31
    iget p0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->scale:F

    return p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/PluginTextureStage;)I
    .registers 1

    .line 31
    iget p0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->areaIndex:I

    return p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/stages/PluginTextureStage;I)I
    .registers 2

    .line 31
    iput p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->areaIndex:I

    return p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/PluginTextureStage;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 1

    .line 31
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->image:Lio/blueflower/stapel2d/drawing/Image;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/PluginTextureStage;FFF)V
    .registers 4

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->zoom(FFF)V

    return-void
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/PluginTextureStage;F)V
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->zoom(F)V

    return-void
.end method

.method private handleTouchInput()V
    .registers 13

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v0

    .line 198
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v1

    .line 200
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->getTouchPoints()Ljava/util/List;

    move-result-object v2

    .line 201
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v3, v7, :cond_5a

    .line 202
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 204
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v4

    mul-float/2addr v4, v0

    .line 205
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v8

    mul-float/2addr v8, v1

    .line 206
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v9

    mul-float/2addr v9, v0

    .line 207
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v10

    mul-float/2addr v10, v1

    .line 208
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v11

    mul-float/2addr v11, v0

    .line 209
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v0

    mul-float/2addr v0, v1

    sub-float/2addr v11, v4

    sub-float/2addr v0, v8

    .line 213
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getButton()I

    move-result v1

    if-ne v1, v7, :cond_54

    const v1, -0x41333333    # -0.4f

    mul-float v9, v11, v1

    mul-float v10, v0, v1

    .line 216
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Move:Linfo/flowersoft/theotown/ui/CursorType;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->setPreferredCursor(Linfo/flowersoft/theotown/ui/CursorType;)V

    .line 219
    :cond_54
    iput v9, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    .line 220
    iput v10, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    goto/16 :goto_f9

    .line 221
    :cond_5a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_ef

    .line 222
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 223
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 225
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v7

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    mul-float/2addr v7, v0

    .line 226
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v9

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v10

    add-float/2addr v9, v10

    mul-float/2addr v9, v8

    mul-float/2addr v9, v1

    .line 227
    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v8

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v10

    sub-float/2addr v8, v10

    mul-float/2addr v8, v0

    .line 228
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

    .line 229
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v8, v10

    .line 232
    iget v10, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->lastTPCount:I

    if-ge v10, v6, :cond_ac

    .line 233
    iput v8, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->touchStartDistance:F

    .line 234
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->scale:F

    iput v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->touchStartCityScale:F

    goto :goto_f9

    .line 236
    :cond_ac
    iget v10, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->touchStartDistance:F

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_ea

    .line 237
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v10

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    mul-float/2addr v10, v0

    float-to-int v0, v10

    .line 238
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v3

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v11

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 240
    iget v3, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->touchStartCityScale:F

    mul-float/2addr v3, v8

    iget v4, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->touchStartDistance:F

    div-float/2addr v3, v4

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMinScale()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMaxScale()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 241
    iget v4, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->scale:F

    div-float/2addr v3, v4

    int-to-float v0, v0

    int-to-float v1, v1

    .line 242
    invoke-virtual {p0, v3, v0, v1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->zoom(FFF)V

    .line 245
    :cond_ea
    iput v7, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    .line 246
    iput v9, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    goto :goto_f9

    .line 248
    :cond_ef
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_f9

    .line 249
    iput v5, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    iput v5, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    .line 252
    :cond_f9
    :goto_f9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->lastTPCount:I

    .line 254
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_14b

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->scrollEdges:Z

    if-eqz v0, :cond_14b

    .line 256
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchMapper;->getActivePoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 257
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v0

    .line 258
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v1

    const/high16 v2, -0x3ee00000    # -10.0f

    const/high16 v3, 0x41200000    # 10.0f

    if-ge v0, v6, :cond_130

    .line 261
    iput v3, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    goto :goto_13b

    .line 262
    :cond_130
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v4

    sub-int/2addr v4, v6

    if-lt v0, v4, :cond_13b

    .line 263
    iput v2, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    :cond_13b
    :goto_13b
    if-ge v1, v6, :cond_140

    .line 266
    iput v3, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    goto :goto_14b

    .line 267
    :cond_140
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    sub-int/2addr v0, v6

    if-lt v1, v0, :cond_14b

    .line 268
    iput v2, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    .line 273
    :cond_14b
    :goto_14b
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_18e

    .line 274
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetX:F

    iget v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    add-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetX:F

    .line 275
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetY:F

    iget v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    add-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetY:F

    .line 276
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->limitOffset()V

    .line 277
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getDeltaTime()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624de0000000L    # 0.0010000000474974513

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 278
    iget v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    mul-float/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    .line 279
    iget v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    mul-float/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    .line 281
    :cond_18e
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a9

    .line 282
    iput v5, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    iput v5, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    .line 285
    :cond_1a9
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->smoothScrolling:Z

    if-nez v0, :cond_1b1

    .line 286
    iput v5, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumY:F

    iput v5, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->moveMomentumX:F

    :cond_1b1
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 15

    .line 53
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 55
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->areaIndex:I

    invoke-static {v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTextureId(I)I

    move-result v11

    .line 56
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->areaIndex:I

    invoke-static {v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTargetX(I)I

    move-result v9

    .line 57
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->areaIndex:I

    invoke-static {v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTargetY(I)I

    move-result v10

    .line 58
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->areaIndex:I

    invoke-static {v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTargetWidth(I)I

    move-result v7

    .line 59
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->areaIndex:I

    invoke-static {v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTargetHeight(I)I

    move-result v8

    .line 60
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->areaIndex:I

    invoke-static {v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getFillRatio(I)F

    move-result v12

    .line 62
    new-instance v0, Lio/blueflower/stapel2d/drawing/Image;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v2, v11}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v2

    const/4 v13, 0x1

    invoke-direct {v0, v2, v13}, Lio/blueflower/stapel2d/drawing/Image;-><init>(Lio/blueflower/stapel2d/drawing/Texture;I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->image:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v4, v7

    int-to-float v5, v8

    .line 63
    invoke-virtual {v0, v2, v3, v4, v5}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 65
    new-instance v0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;-><init>(Linfo/flowersoft/theotown/stages/PluginTextureStage;IIIILio/blueflower/stapel2d/gui/Gadget;IIIIIF)V

    .line 119
    new-instance v0, Linfo/flowersoft/theotown/stages/PluginTextureStage$2;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/PluginTextureStage$2;-><init>(Linfo/flowersoft/theotown/stages/PluginTextureStage;IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->touchPane:Linfo/flowersoft/theotown/ui/TouchPane;

    .line 166
    new-instance v0, Linfo/flowersoft/theotown/stages/PluginTextureStage$3;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    add-int/lit8 v4, v3, -0x1e

    const/16 v7, 0x1e

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v3, ""

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/PluginTextureStage$3;-><init>(Linfo/flowersoft/theotown/stages/PluginTextureStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 174
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->countTextureAreas()I

    move-result v0

    if-le v0, v13, :cond_b3

    .line 175
    new-instance v0, Linfo/flowersoft/theotown/stages/PluginTextureStage$4;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    add-int/lit8 v4, v3, -0x3c

    const/16 v7, 0x1e

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v3, ""

    const/4 v5, 0x0

    const/16 v6, 0x1e

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/PluginTextureStage$4;-><init>(Linfo/flowersoft/theotown/stages/PluginTextureStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 184
    new-instance v0, Linfo/flowersoft/theotown/stages/PluginTextureStage$5;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PREVIOUS:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    add-int/lit8 v4, v3, -0x5a

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v3, ""

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/PluginTextureStage$5;-><init>(Linfo/flowersoft/theotown/stages/PluginTextureStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    :cond_b3
    return-void
.end method

.method public final limitOffset()V
    .registers 7

    .line 291
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->areaIndex:I

    invoke-static {v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTargetWidth(I)I

    move-result v0

    .line 292
    iget v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->areaIndex:I

    invoke-static {v1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTargetHeight(I)I

    move-result v1

    .line 293
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 294
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 295
    iget v3, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetX:F

    neg-int v0, v0

    int-to-float v0, v0

    iget v5, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->scale:F

    mul-float/2addr v0, v5

    add-float/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetX:F

    .line 296
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetY:F

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->scale:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetY:F

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 318
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 319
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->handleTouchInput()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 324
    const-string v0, "PluginTextureStage"

    return-object v0
.end method

.method public final zoom(F)V
    .registers 5

    .line 300
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, p1, v0, v2}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->zoom(FFF)V

    return-void
.end method

.method public final zoom(FFF)V
    .registers 7

    .line 306
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->scale:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x3e000000    # 0.125f

    .line 307
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 308
    iget v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetX:F

    sub-float/2addr v0, p2

    iget v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->scale:F

    div-float/2addr v0, v1

    .line 309
    iget v2, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetY:F

    sub-float/2addr v2, p3

    div-float/2addr v2, v1

    .line 310
    iput p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->scale:F

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    .line 311
    iput v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetX:F

    mul-float/2addr v2, p1

    add-float/2addr v2, p3

    .line 312
    iput v2, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage;->offsetY:F

    .line 313
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->limitOffset()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginTextureStage.AnonymousClass1 (info.flowersoft.theotown.stages.PluginTextureStage$1)
.class public Linfo/flowersoft/theotown/stages/PluginTextureStage$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "PluginTextureStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/PluginTextureStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

.field public final synthetic val$fillRatio:F

.field public final synthetic val$targetHeight:I

.field public final synthetic val$targetWidth:I

.field public final synthetic val$targetX:I

.field public final synthetic val$targetY:I

.field public final synthetic val$textureId:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/PluginTextureStage;IIIILio/blueflower/stapel2d/gui/Gadget;IIIIIF)V
    .registers 13
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
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    iput p7, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetWidth:I

    iput p8, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetHeight:I

    iput p9, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetX:I

    iput p10, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetY:I

    iput p11, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$textureId:I

    iput p12, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$fillRatio:F

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 12

    .line 68
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 70
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p1, 0x3c

    .line 71
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 72
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$000(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v2

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$100(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v3

    iget p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetWidth:I

    int-to-float p1, p1

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    .line 73
    invoke-static {p2}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$200(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result p2

    mul-float v4, p1, p2

    iget p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetHeight:I

    int-to-float p1, p1

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {p2}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$200(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result p2

    mul-float v5, p1, p2

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    .line 72
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/16 p1, 0xb4

    .line 75
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 76
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getAddedBitmaps()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_48
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;

    .line 78
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$200(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v1

    iget v2, p2, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->x:I

    iget v3, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$000(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v4, v1, v2

    .line 79
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$200(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v1

    iget v2, p2, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->y:I

    iget v3, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$100(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v5, v1, v2

    .line 80
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$200(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v1

    iget v2, p2, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->w:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 81
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$200(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v1

    iget v2, p2, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->h:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 83
    iget p2, p2, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->areaId:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$300(Linfo/flowersoft/theotown/stages/PluginTextureStage;)I

    move-result v1

    if-ne p2, v1, :cond_c4

    .line 84
    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v8, p2, Lio/blueflower/stapel2d/gui/Skin;->npRect:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    move-object p2, v3

    goto :goto_48

    :cond_c4
    move-object p2, p0

    goto :goto_48

    :cond_c6
    move-object p2, p0

    .line 88
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p1, 0xff

    .line 89
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 90
    iget-object p1, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$400(Linfo/flowersoft/theotown/stages/PluginTextureStage;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v1

    iget-object p1, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$000(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v2

    iget-object p1, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$100(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v3

    iget p1, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetWidth:I

    int-to-float p1, p1

    iget-object v4, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$200(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v4

    mul-float/2addr v4, p1

    iget p1, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetHeight:I

    int-to-float p1, p1

    iget-object v5, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v5}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$200(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v5

    mul-float/2addr v5, p1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 92
    invoke-virtual {v0, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 93
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getAddedBitmaps()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10c
    :goto_10c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;

    .line 95
    iget-object v3, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$200(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v3

    iget v4, v2, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->x:I

    iget v5, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$000(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 96
    iget-object v4, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$200(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v4

    iget v5, v2, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->y:I

    iget v6, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$targetY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v5}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$100(Linfo/flowersoft/theotown/stages/PluginTextureStage;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    .line 98
    iget v2, v2, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->areaId:I

    iget-object v5, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v5}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$300(Linfo/flowersoft/theotown/stages/PluginTextureStage;)I

    move-result v5

    if-ne v2, v5, :cond_10c

    .line 99
    iget-object v2, p2, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    new-instance v5, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    goto :goto_10c

    :cond_17d
    const/high16 p1, 0x3f800000    # 1.0f

    .line 102
    invoke-virtual {v0, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 104
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    .line 105
    invoke-static {v2}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$400(Linfo/flowersoft/theotown/stages/PluginTextureStage;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$400(Linfo/flowersoft/theotown/stages/PluginTextureStage;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$textureId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], mts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Linfo/flowersoft/theotown/resources/Constants;->MAX_TEXTURE_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fill ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->val$fillRatio:F

    .line 107
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%, pt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    .line 108
    invoke-static {v2}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$300(Linfo/flowersoft/theotown/stages/PluginTextureStage;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->countTextureAreas()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Linfo/flowersoft/theotown/stages/PluginTextureStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    .line 109
    invoke-static {v2}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$300(Linfo/flowersoft/theotown/stages/PluginTextureStage;)I

    move-result v2

    invoke-static {v2}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTextureId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, p1, v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 115
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginTextureStage.AnonymousClass2 (info.flowersoft.theotown.stages.PluginTextureStage$2)
.class public Linfo/flowersoft/theotown/stages/PluginTextureStage$2;
.super Linfo/flowersoft/theotown/ui/TouchPane;
.source "PluginTextureStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/PluginTextureStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/PluginTextureStage;IIIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 119
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/TouchPane;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public clickAt(IILio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final getZoomStep()F
    .registers 2

    .line 127
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    if-lez v0, :cond_7

    .line 128
    sget v0, Linfo/flowersoft/theotown/resources/Constants;->SMOOTH_ZOOM_STEP:F

    return v0

    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public twoFingerClick()V
    .registers 1

    .line 0
    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 9

    .line 135
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getScrollChange()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_79

    .line 138
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->clearScrollChange()V

    .line 140
    sget v3, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    if-nez v3, :cond_19

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v1, v3

    .line 142
    :cond_19
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/PluginTextureStage$2;->getZoomStep()F

    move-result v3

    float-to-double v3, v3

    .line 143
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 145
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_69

    .line 146
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v4

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    iget-object v6, v6, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 147
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result p1

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    iget-object v6, v6, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v6

    mul-float/2addr p1, v6

    float-to-int p1, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_60

    .line 149
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    int-to-float v2, v4

    int-to-float p1, p1

    invoke-static {v1, v3, v2, p1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$500(Linfo/flowersoft/theotown/stages/PluginTextureStage;FFF)V

    return-object v0

    .line 151
    :cond_60
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    div-float/2addr v5, v3

    int-to-float v2, v4

    int-to-float p1, p1

    invoke-static {v1, v5, v2, p1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$500(Linfo/flowersoft/theotown/stages/PluginTextureStage;FFF)V

    return-object v0

    :cond_69
    cmpg-float p1, v1, v2

    if-gez p1, :cond_73

    .line 155
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$600(Linfo/flowersoft/theotown/stages/PluginTextureStage;F)V

    return-object v0

    .line 157
    :cond_73
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    div-float/2addr v5, v3

    invoke-static {p1, v5}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$600(Linfo/flowersoft/theotown/stages/PluginTextureStage;F)V

    :cond_79
    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.PluginTextureStage.AnonymousClass3 (info.flowersoft.theotown.stages.PluginTextureStage$3)
.class public Linfo/flowersoft/theotown/stages/PluginTextureStage$3;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginTextureStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/PluginTextureStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/PluginTextureStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 166
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$3;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 169
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$3;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginTextureStage.AnonymousClass4 (info.flowersoft.theotown.stages.PluginTextureStage$4)
.class public Linfo/flowersoft/theotown/stages/PluginTextureStage$4;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginTextureStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/PluginTextureStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/PluginTextureStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 175
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$4;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 178
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 179
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$4;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$300(Linfo/flowersoft/theotown/stages/PluginTextureStage;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->countTextureAreas()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$302(Linfo/flowersoft/theotown/stages/PluginTextureStage;I)I

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$4;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$4;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->enter()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginTextureStage.AnonymousClass5 (info.flowersoft.theotown.stages.PluginTextureStage$5)
.class public Linfo/flowersoft/theotown/stages/PluginTextureStage$5;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginTextureStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/PluginTextureStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/PluginTextureStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 184
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$5;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 187
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$5;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$300(Linfo/flowersoft/theotown/stages/PluginTextureStage;)I

    move-result v1

    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->countTextureAreas()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->countTextureAreas()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->access$302(Linfo/flowersoft/theotown/stages/PluginTextureStage;I)I

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$5;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginTextureStage$5;->this$0:Linfo/flowersoft/theotown/stages/PluginTextureStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/PluginTextureStage;->enter()V

    return-void
.end method
