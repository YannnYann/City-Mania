###### Class info.flowersoft.theotown.city.SmoothCityZoomDrawer (info.flowersoft.theotown.city.SmoothCityZoomDrawer)
.class public Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;
.super Ljava/lang/Object;
.source "SmoothCityZoomDrawer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final LOG2:D


# instance fields
.field public final engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public frameBuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

.field public smoothness:I

.field public transformedCityDrawer:Linfo/flowersoft/theotown/city/TransformedCityDrawer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->LOG2:D

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    return-void
.end method


# virtual methods
.method public final clipMovement(Linfo/flowersoft/theotown/city/IsoConverter;)V
    .registers 3

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/city/PreviewCreator;->clipMovement(Lio/blueflower/stapel2d/drawing/Engine;Linfo/flowersoft/theotown/city/IsoConverter;)V

    return-void
.end method

.method public dispose()V
    .registers 2

    .line 183
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->releaseFrameBuffer()V

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->transformedCityDrawer:Linfo/flowersoft/theotown/city/TransformedCityDrawer;

    if-eqz v0, :cond_d

    .line 185
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->dispose()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->transformedCityDrawer:Linfo/flowersoft/theotown/city/TransformedCityDrawer;

    :cond_d
    return-void
.end method

.method public draw(Linfo/flowersoft/theotown/city/City;Z)V
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    .line 36
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v3

    float-to-double v4, v3

    .line 37
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    sget-wide v8, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->LOG2:D

    div-double/2addr v6, v8

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    int-to-double v8, v8

    sub-double v10, v6, v8

    .line 39
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    .line 40
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v10

    .line 41
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v11

    .line 42
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v12

    .line 44
    sget v13, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    if-nez v13, :cond_4c

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 45
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->setScale(F)V

    .line 46
    invoke-virtual {v1, v10}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->clipMovement(Linfo/flowersoft/theotown/city/IsoConverter;)V

    .line 48
    iget-object v3, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v8, 0xff

    const/16 v9, 0x50

    invoke-virtual {v3, v9, v9, v9, v8}, Lio/blueflower/stapel2d/drawing/Engine;->clear(IIII)V

    .line 49
    iget-object v3, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2, v3, v0}, Linfo/flowersoft/theotown/city/City;->draw(Lio/blueflower/stapel2d/drawing/Engine;Z)V

    :goto_48
    move v15, v11

    move v2, v12

    goto/16 :goto_1e5

    :cond_4c
    const/16 v8, 0xff

    const/16 v9, 0x50

    const/4 v14, 0x3

    if-ne v13, v14, :cond_61

    .line 52
    invoke-virtual {v1, v10}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->clipMovement(Linfo/flowersoft/theotown/city/IsoConverter;)V

    .line 54
    iget-object v3, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3, v9, v9, v9, v8}, Lio/blueflower/stapel2d/drawing/Engine;->clear(IIII)V

    .line 55
    iget-object v3, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2, v3, v0}, Linfo/flowersoft/theotown/city/City;->draw(Lio/blueflower/stapel2d/drawing/Engine;Z)V

    goto :goto_48

    .line 58
    :cond_61
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v8

    .line 59
    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v20

    .line 60
    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v21

    .line 61
    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v9

    .line 62
    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v13

    .line 64
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-double v6, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 65
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v6, v6

    div-double v4, v6, v4

    float-to-double v14, v9

    mul-double/2addr v14, v4

    double-to-float v14, v14

    move v15, v11

    move/from16 v16, v12

    float-to-double v11, v13

    mul-double/2addr v11, v4

    double-to-float v11, v11

    double-to-float v6, v6

    .line 70
    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/city/City;->setScale(F)V

    .line 71
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->setTargetScale(F)V

    .line 74
    invoke-virtual {v1, v10}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->clipMovement(Linfo/flowersoft/theotown/city/IsoConverter;)V

    const/4 v6, 0x0

    .line 76
    invoke-virtual {v8, v6}, Lio/blueflower/stapel2d/util/ScreenRect;->setX(F)V

    .line 77
    invoke-virtual {v8, v6}, Lio/blueflower/stapel2d/util/ScreenRect;->setY(F)V

    .line 78
    invoke-virtual {v8, v14}, Lio/blueflower/stapel2d/util/ScreenRect;->setWidth(F)V

    .line 79
    invoke-virtual {v8, v11}, Lio/blueflower/stapel2d/util/ScreenRect;->setHeight(F)V

    .line 81
    iget-object v6, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getFramebuffer()Lio/blueflower/stapel2d/drawing/FrameBuffer;

    move-result-object v6

    .line 82
    iget-object v7, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v7

    .line 85
    :try_start_b1
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->ensureInitiated()V

    .line 86
    iget-object v12, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v14, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->frameBuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v12, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    .line 88
    iget-object v12, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v11, 0x50

    const/16 v14, 0xff

    invoke-virtual {v12, v11, v11, v11, v14}, Lio/blueflower/stapel2d/drawing/Engine;->clear(IIII)V

    .line 89
    iget-object v11, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2, v11, v0}, Linfo/flowersoft/theotown/city/City;->draw(Lio/blueflower/stapel2d/drawing/Engine;Z)V

    .line 91
    iget-object v0, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    .line 93
    iget-object v0, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getDefaultShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v11

    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 94
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->UNCHANGED:Linfo/flowersoft/theotown/resources/ShaderConfig;

    iget-object v11, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v11}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v11

    invoke-virtual {v0, v11}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 96
    iget-object v0, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 97
    iget-object v0, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setBlending(I)V

    .line 101
    iget-object v0, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->frameBuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->getTexture()Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v19

    .line 103
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->prepareTransformedCityDrawer()V

    .line 105
    iget-object v0, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->transformedCityDrawer:Linfo/flowersoft/theotown/city/TransformedCityDrawer;

    if-eqz v0, :cond_15f

    .line 106
    iget-object v11, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 111
    invoke-virtual {v11}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v26, v12, v14

    double-to-float v4, v4

    mul-float v5, v4, v9

    iget-object v12, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 112
    invoke-virtual {v12}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v12

    div-float/2addr v5, v12

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/drawing/Texture;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v27, v5, v12

    iget-object v5, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 113
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v13

    iget-object v12, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v12

    div-float/2addr v4, v12

    sub-float/2addr v5, v4

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v4
    :try_end_12d
    .catchall {:try_start_b1 .. :try_end_12d} :catchall_15c

    int-to-float v4, v4

    div-float v28, v5, v4

    const/16 v25, 0x0

    move-object/from16 v18, v0

    move/from16 v23, v9

    move/from16 v24, v13

    move/from16 v22, v21

    move/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v11

    .line 106
    :try_start_140
    invoke-virtual/range {v18 .. v28}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->draw(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFF)V
    :try_end_143
    .catchall {:try_start_140 .. :try_end_143} :catchall_14e

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v11, v24

    move/from16 v4, v20

    move/from16 v5, v21

    goto :goto_1a7

    :catchall_14e
    move-exception v0

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v9, v23

    move/from16 v11, v24

    :goto_157
    move/from16 v4, v20

    move/from16 v5, v21

    goto :goto_1b2

    :catchall_15c
    move-exception v0

    move v11, v13

    goto :goto_157

    :cond_15f
    move v11, v13

    .line 116
    :try_start_160
    iget-object v0, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    add-float v22, v20, v9

    add-float v23, v21, v11

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v25, v12, v13

    double-to-float v4, v4

    mul-float v5, v4, v9

    iget-object v12, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 117
    invoke-virtual {v12}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v12

    div-float/2addr v5, v12

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/drawing/Texture;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v26, v5, v12

    iget-object v5, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 118
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v11

    iget-object v12, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v12

    div-float/2addr v4, v12

    sub-float/2addr v5, v4

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v27, v5, v4

    const/16 v28, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v0

    .line 116
    invoke-virtual/range {v18 .. v28}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V
    :try_end_1a3
    .catchall {:try_start_160 .. :try_end_1a3} :catchall_1b0

    move/from16 v4, v20

    move/from16 v5, v21

    .line 122
    :goto_1a7
    :try_start_1a7
    iget-object v0, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setBlending(I)V
    :try_end_1ad
    .catchall {:try_start_1a7 .. :try_end_1ad} :catchall_1ae

    goto :goto_1bc

    :catchall_1ae
    move-exception v0

    goto :goto_1b2

    :catchall_1b0
    move-exception v0

    goto :goto_157

    .line 125
    :goto_1b2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v17, 0x0

    .line 126
    sput v17, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    .line 127
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->releaseFrameBuffer()V

    .line 130
    :goto_1bc
    iget-object v0, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    .line 132
    iget-object v0, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 133
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->shaderConfig:Linfo/flowersoft/theotown/resources/ShaderConfig;

    iget-object v6, v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v6

    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 136
    invoke-virtual {v8, v4}, Lio/blueflower/stapel2d/util/ScreenRect;->setX(F)V

    .line 137
    invoke-virtual {v8, v5}, Lio/blueflower/stapel2d/util/ScreenRect;->setY(F)V

    .line 138
    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/util/ScreenRect;->setWidth(F)V

    .line 139
    invoke-virtual {v8, v11}, Lio/blueflower/stapel2d/util/ScreenRect;->setHeight(F)V

    .line 141
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->setScale(F)V

    .line 143
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->resetTargetScale()V

    move/from16 v2, v16

    .line 146
    :goto_1e5
    invoke-virtual {v10, v15, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    return-void
.end method

.method public final ensureInitiated()V
    .registers 4

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->frameBuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    if-eqz v0, :cond_d

    sget v0, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    iget v1, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->smoothness:I

    if-eq v0, v1, :cond_d

    .line 156
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->releaseFrameBuffer()V

    .line 158
    :cond_d
    iget-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->frameBuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    if-nez v0, :cond_3f

    .line 159
    iget-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->createForScreen(II)Lio/blueflower/stapel2d/drawing/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->frameBuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    .line 161
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/FrameBuffer;->getTexture()Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v0

    .line 162
    sget v1, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_36

    const/4 v2, 0x2

    if-eq v1, v2, :cond_30

    goto :goto_3b

    :cond_30
    const/16 v1, 0x2601

    .line 167
    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    goto :goto_3b

    :cond_36
    const/16 v1, 0x2600

    .line 164
    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 171
    :goto_3b
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    iput v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->smoothness:I

    :cond_3f
    return-void
.end method

.method public final prepareTransformedCityDrawer()V
    .registers 3

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->transformedCityDrawer:Linfo/flowersoft/theotown/city/TransformedCityDrawer;

    if-eqz v0, :cond_5

    return-void

    .line 151
    :cond_5
    new-instance v0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;-><init>(Lio/blueflower/stapel2d/drawing/Engine;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->transformedCityDrawer:Linfo/flowersoft/theotown/city/TransformedCityDrawer;

    return-void
.end method

.method public final releaseFrameBuffer()V
    .registers 3

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->frameBuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    if-eqz v0, :cond_c

    .line 177
    iget-object v1, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->releaseFramebuffer(Lio/blueflower/stapel2d/drawing/FrameBuffer;)V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->frameBuffer:Lio/blueflower/stapel2d/drawing/FrameBuffer;

    :cond_c
    return-void
.end method

.method public transformFromScreen(Linfo/flowersoft/theotown/city/City;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 197
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->usesTransformedCityDrawer()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p2

    .line 198
    :cond_7
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object p1

    .line 199
    iget-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->transformedCityDrawer:Linfo/flowersoft/theotown/city/TransformedCityDrawer;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->transformFromScreen(Lio/blueflower/stapel2d/util/ScreenRect;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public transformToScreen(Linfo/flowersoft/theotown/city/City;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 4

    .line 191
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->usesTransformedCityDrawer()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p2

    .line 192
    :cond_7
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object p1

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->transformedCityDrawer:Linfo/flowersoft/theotown/city/TransformedCityDrawer;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->transformToScreen(Lio/blueflower/stapel2d/util/ScreenRect;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public final usesTransformedCityDrawer()Z
    .registers 4

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->transformedCityDrawer:Linfo/flowersoft/theotown/city/TransformedCityDrawer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 204
    :cond_6
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->smoothZoom:I

    if-eqz v0, :cond_f

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    return v1
.end method
