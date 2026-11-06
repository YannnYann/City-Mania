###### Class info.flowersoft.theotown.city.PreviewCreator (info.flowersoft.theotown.city.PreviewCreator)
.class public final Linfo/flowersoft/theotown/city/PreviewCreator;
.super Ljava/lang/Object;
.source "PreviewCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;,
        Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;,
        Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;
    }
.end annotation


# static fields
.field public static final config:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-string v0, "preview creator"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/PreviewCreator;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 1

    .line 35
    sget-object v0, Linfo/flowersoft/theotown/city/PreviewCreator;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object v0
.end method

.method public static clipMovement(Lio/blueflower/stapel2d/drawing/Engine;Linfo/flowersoft/theotown/city/IsoConverter;)V
    .registers 9

    .line 43
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p0, v0

    .line 44
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v0

    .line 45
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v1

    .line 46
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v2

    .line 47
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v3

    .line 48
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v4

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    mul-float/2addr v3, p0

    float-to-double v5, v3

    .line 50
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v3, v5

    div-float/2addr v3, p0

    sub-float/2addr v3, v1

    div-float/2addr v3, v0

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v1

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    mul-float/2addr v4, p0

    float-to-double v4, v4

    .line 51
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr v4, p0

    sub-float/2addr v4, v2

    div-float/2addr v4, v0

    add-float/2addr v4, v1

    .line 53
    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    return-void
.end method

.method public static evaluateSteppedTask(Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_11

    .line 410
    :goto_2
    invoke-interface {p0}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->remainingSteps()I

    move-result v0

    if-lez v0, :cond_c

    invoke-interface {p0}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->run()V

    goto :goto_2

    .line 411
    :cond_c
    invoke-interface {p0}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generate(Linfo/flowersoft/theotown/city/City;FZZZ)Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            "FZZZ)",
            "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;"
        }
    .end annotation

    .line 250
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/BuildingList;->getMaxBuildHeight()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit16 v6, v0, 0xb4

    .line 251
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v7

    .line 252
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v10

    .line 253
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v11

    .line 254
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v12

    .line 255
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v13

    .line 256
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v8

    .line 257
    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v0

    float-to-int v14, v0

    .line 258
    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v0

    float-to-int v15, v0

    .line 261
    new-instance v1, Linfo/flowersoft/theotown/city/PreviewCreator$2;

    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p0

    move/from16 v4, p2

    move/from16 v3, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v15}, Linfo/flowersoft/theotown/city/PreviewCreator$2;-><init>(Ljava/lang/String;ZZLinfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/city/IsoConverter;Lio/blueflower/stapel2d/util/ScreenRect;ZFFFFII)V

    move/from16 v0, p1

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/city/PreviewCreator;->generate(Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;F)Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;F)Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;",
            "F)",
            "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 115
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v3

    .line 116
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v5

    const/4 v0, 0x0

    if-lez v3, :cond_e9

    if-gtz v5, :cond_13

    goto/16 :goto_e9

    :cond_13
    const/4 v1, 0x1

    const/4 v2, 0x0

    move/from16 v4, p1

    move-object v10, v0

    move-object v15, v10

    move v7, v1

    move v8, v2

    move v9, v8

    move v11, v9

    move v12, v11

    .line 128
    :goto_1e
    const-string v13, "x"

    if-eqz v7, :cond_83

    .line 130
    invoke-interface/range {p0 .. p0}, Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 131
    invoke-interface/range {p0 .. p0}, Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 132
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 133
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 134
    invoke-static {}, Ljava/lang/System;->gc()V

    mul-int v7, v11, v12

    .line 137
    :try_start_43
    new-array v10, v7, [I

    .line 138
    new-instance v7, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v14, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v7, v2, v9, v14}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    :try_end_4c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_43 .. :try_end_4c} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_4f

    move-object v15, v7

    move v7, v8

    goto :goto_1e

    :catch_4f
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    .line 143
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 144
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Reduce scale because of OMM to "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " ("

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "PreviewCreator"

    invoke-interface {v7, v13, v10}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    move v7, v1

    goto :goto_1e

    :cond_83
    if-eqz v10, :cond_e9

    if-nez v15, :cond_88

    goto :goto_e9

    .line 155
    :cond_88
    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 156
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v8, v11

    .line 157
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    move v0, v12

    .line 162
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v12

    .line 163
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v1

    .line 165
    sget-object v7, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    move/from16 p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    const-string v1, "Create preview of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sized view frames"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preview"

    invoke-interface {v7, v1, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    move-object/from16 v7, p0

    .line 169
    invoke-interface {v7, v4, v2, v9}, Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;->begin(FII)V

    .line 171
    new-instance v1, Linfo/flowersoft/theotown/city/PreviewCreator$1;

    move v4, v9

    move/from16 v13, v16

    move/from16 v9, p1

    invoke-direct/range {v1 .. v15}, Linfo/flowersoft/theotown/city/PreviewCreator$1;-><init>(IIIILio/blueflower/stapel2d/drawing/Engine;Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;II[ILjava/nio/IntBuffer;IILjava/nio/ByteBuffer;Lcom/badlogic/gdx/graphics/Pixmap;)V

    return-object v1

    :cond_e9
    :goto_e9
    return-object v0
.end method

.method public static generateMiniPreview(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 24

    .line 57
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/WinterManager;->isWinter()Z

    move-result v1

    .line 58
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    .line 60
    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    const/4 v0, 0x1

    .line 61
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    .line 63
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 64
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v5

    .line 67
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getInstance()Linfo/flowersoft/theotown/resources/ShaderRepository;

    move-result-object v6

    const/4 v7, 0x0

    .line 68
    invoke-virtual {v6, v2, v7}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getShader(ILjava/lang/String;)Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    move-result-object v6

    .line 69
    invoke-virtual {v6}, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->build()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v6

    .line 70
    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Engine;->loadShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 71
    sget-object v7, Linfo/flowersoft/theotown/resources/ShaderConfig;->DEFAULT:Linfo/flowersoft/theotown/resources/ShaderConfig;

    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 72
    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v7

    .line 75
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v8

    .line 77
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v9

    .line 78
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v10

    .line 79
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v11

    .line 80
    invoke-virtual {v7, v2}, Linfo/flowersoft/theotown/city/City;->setRotation(I)V

    const/16 v12, 0xd

    .line 82
    invoke-virtual {v7, v12}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/city/components/Tool;

    .line 83
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v13

    invoke-virtual {v7, v13}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 86
    :try_start_5b
    sget-boolean v13, Linfo/flowersoft/theotown/resources/Settings;->highResolutionCityPreview:Z

    if-eqz v13, :cond_62

    const/16 v13, 0x1000

    goto :goto_64

    :cond_62
    const/16 v13, 0x400

    :goto_64
    int-to-float v13, v13

    .line 87
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v14

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x20

    int-to-float v14, v14

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    div-float/2addr v13, v14

    const/high16 v14, 0x3e000000    # 0.125f

    .line 88
    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 89
    invoke-static {v7, v13, v2, v0, v2}, Linfo/flowersoft/theotown/city/PreviewCreator;->generate(Linfo/flowersoft/theotown/city/City;FZZZ)Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/city/PreviewCreator;->evaluateSteppedTask(Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v14, :cond_c7

    .line 91
    new-instance v13, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget-object v15, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v13, v0, v2, v15}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 92
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v13, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 93
    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v17

    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v18

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v21

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v22

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 94
    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move-object/from16 v0, p0

    .line 95
    invoke-virtual {v0, v13}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setPreview(Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_c2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5b .. :try_end_c2} :catch_c3

    goto :goto_c7

    :catch_c3
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    :cond_c7
    :goto_c7
    invoke-virtual {v7, v9}, Linfo/flowersoft/theotown/city/City;->setRotation(I)V

    .line 102
    invoke-virtual {v8, v10, v11}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 104
    invoke-virtual {v7, v12}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 106
    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 107
    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Engine;->releaseShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 108
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    .line 110
    sput-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    return-void
.end method

###### Class info.flowersoft.theotown.city.PreviewCreator.AnonymousClass1 (info.flowersoft.theotown.city.PreviewCreator$1)
.class Linfo/flowersoft/theotown/city/PreviewCreator$1;
.super Ljava/lang/Object;
.source "PreviewCreator.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/PreviewCreator;->generate(Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;F)Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
        "Lcom/badlogic/gdx/graphics/Pixmap;",
        ">;"
    }
.end annotation


# instance fields
.field public maskB:I

.field public maskG:I

.field public maskR:I

.field public processedSteps:I

.field public totalSteps:I

.field public final synthetic val$bmp:Lcom/badlogic/gdx/graphics/Pixmap;

.field public final synthetic val$bufHeight:I

.field public final synthetic val$bufWidth:I

.field public final synthetic val$buffer:Ljava/nio/ByteBuffer;

.field public final synthetic val$drawable:Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public final synthetic val$height:I

.field public final synthetic val$pixelBuffer:Ljava/nio/IntBuffer;

.field public final synthetic val$pixels:[I

.field public final synthetic val$viewHeight:I

.field public final synthetic val$viewWidth:I

.field public final synthetic val$virtualHeight:I

.field public final synthetic val$virtualWidth:I

.field public final synthetic val$width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/drawing/Engine;Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;II[ILjava/nio/IntBuffer;IILjava/nio/ByteBuffer;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput p1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$width:I

    iput p2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewWidth:I

    iput p3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$height:I

    iput p4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewHeight:I

    iput-object p5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    iput-object p6, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$drawable:Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;

    iput p7, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$bufWidth:I

    iput p8, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$bufHeight:I

    iput-object p9, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$pixels:[I

    iput-object p10, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$pixelBuffer:Ljava/nio/IntBuffer;

    iput p11, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$virtualWidth:I

    iput p12, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$virtualHeight:I

    iput-object p13, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$buffer:Ljava/nio/ByteBuffer;

    iput-object p14, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    .line 172
    iput p5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->x:I

    .line 173
    iput p5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->y:I

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 174
    div-int/2addr p1, p2

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, -0x1

    div-int/2addr p3, p4

    mul-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->totalSteps:I

    .line 176
    invoke-static {}, Linfo/flowersoft/theotown/city/PreviewCreator;->access$000()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    const-string p2, "mask r2"

    const/16 p3, 0xff

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->maskR:I

    .line 177
    invoke-static {}, Linfo/flowersoft/theotown/city/PreviewCreator;->access$000()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    const-string p2, "mask g2"

    invoke-virtual {p1, p2, p5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->maskG:I

    .line 178
    invoke-static {}, Linfo/flowersoft/theotown/city/PreviewCreator;->access$000()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    const-string p2, "mask b2"

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->maskB:I

    return-void
.end method


# virtual methods
.method public getResult()Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 2

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$bmp:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2

    .line 171
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/PreviewCreator$1;->getResult()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    return-object v0
.end method

.method public remainingSteps()I
    .registers 3

    .line 182
    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->totalSteps:I

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->processedSteps:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public run()V
    .registers 11

    .line 187
    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->processedSteps:I

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->totalSteps:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "Preview"

    if-ge v0, v1, :cond_138

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewWidth:I

    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewHeight:I

    invoke-virtual {v0, v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$drawable:Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;->hideBackground()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 190
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->maskR:I

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    iget v4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->maskG:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->maskB:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v4, v5, v3}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 191
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 194
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Draw ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->x:I

    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewWidth:I

    div-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->y:I

    iget v5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewHeight:I

    div-int/2addr v4, v5

    iget v5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$width:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v3

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$width:I

    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewWidth:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v3

    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$height:I

    iget v4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewHeight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v4

    mul-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$drawable:Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->x:I

    neg-int v5, v0

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->y:I

    neg-int v6, v1

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewWidth:I

    iget v7, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$width:I

    sub-int/2addr v7, v0

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewHeight:I

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$height:I

    iget v8, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->y:I

    sub-int/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-interface/range {v3 .. v8}, Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;->draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V

    .line 198
    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$bufWidth:I

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$width:I

    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->x:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 199
    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$bufHeight:I

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$height:I

    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->y:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 200
    iget-object v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$pixels:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->getPixels([IIIII)[I

    .line 201
    const-string v0, "Get Pixels"

    invoke-static {v2, v0}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$drawable:Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;->hideBackground()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e9

    .line 204
    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->maskB:I

    shl-int/lit8 v0, v0, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v0, v3

    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->maskG:I

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->maskR:I

    or-int/2addr v0, v3

    move v3, v1

    .line 205
    :goto_db
    iget-object v4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$pixels:[I

    array-length v5, v4

    if-ge v3, v5, :cond_e9

    .line 206
    aget v5, v4, v3

    if-ne v5, v0, :cond_e6

    aput v1, v4, v3

    :cond_e6
    add-int/lit8 v3, v3, 0x1

    goto :goto_db

    :cond_e9
    move v0, v1

    :goto_ea
    if-ge v0, v8, :cond_115

    .line 210
    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->y:I

    add-int v4, v3, v0

    iget v5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$height:I

    if-ge v4, v5, :cond_115

    add-int/2addr v3, v0

    .line 211
    iget v4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$width:I

    mul-int/2addr v3, v4

    add-int/lit8 v5, v8, -0x1

    sub-int/2addr v5, v0

    mul-int/2addr v5, v7

    .line 213
    iget v6, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->x:I

    sub-int/2addr v4, v6

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 215
    iget-object v6, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$pixelBuffer:Ljava/nio/IntBuffer;

    iget v9, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->x:I

    add-int/2addr v9, v3

    invoke-virtual {v6, v9}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 216
    iget-object v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$pixelBuffer:Ljava/nio/IntBuffer;

    iget-object v6, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$pixels:[I

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_ea

    .line 218
    :cond_115
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$virtualWidth:I

    iget v4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$virtualHeight:I

    invoke-virtual {v0, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    .line 220
    const-string v0, "Copy pixels"

    invoke-static {v2, v0}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->x:I

    iget v2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewWidth:I

    add-int/2addr v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->x:I

    .line 223
    iget v2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$width:I

    if-lt v0, v2, :cond_15c

    .line 224
    iput v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->x:I

    .line 225
    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->y:I

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$viewHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->y:I

    goto :goto_15c

    .line 228
    :cond_138
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$drawable:Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;->hideBackground()Z

    move-result v0

    if-nez v0, :cond_14f

    .line 229
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$pixelBuffer:Ljava/nio/IntBuffer;

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$width:I

    add-int/lit8 v1, v1, -0x1

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->VERSION_COLOR:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->toARGB()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 232
    :cond_14f
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$drawable:Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;->end()V

    .line 234
    invoke-static {v2}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 239
    :cond_15c
    :goto_15c
    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->processedSteps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$1;->processedSteps:I

    return-void
.end method

###### Class info.flowersoft.theotown.city.PreviewCreator.AnonymousClass2 (info.flowersoft.theotown.city.PreviewCreator$2)
.class Linfo/flowersoft/theotown/city/PreviewCreator$2;
.super Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;
.source "PreviewCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/PreviewCreator;->generate(Linfo/flowersoft/theotown/city/City;FZZZ)Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$daytimeShading:Z

.field public final synthetic val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

.field public final synthetic val$maxBuildingHeight:I

.field public final synthetic val$noBackground:Z

.field public final synthetic val$overlay:Z

.field public final synthetic val$scaleX:F

.field public final synthetic val$scaleY:F

.field public final synthetic val$shiftX:F

.field public final synthetic val$shiftY:F

.field public final synthetic val$vh:I

.field public final synthetic val$view:Lio/blueflower/stapel2d/util/ScreenRect;

.field public final synthetic val$vw:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLinfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/city/IsoConverter;Lio/blueflower/stapel2d/util/ScreenRect;ZFFFFII)V
    .registers 15

    .line 261
    iput-boolean p2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$noBackground:Z

    iput-boolean p3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$overlay:Z

    iput-object p4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    iput p5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$maxBuildingHeight:I

    iput-object p6, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    iput-object p7, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$view:Lio/blueflower/stapel2d/util/ScreenRect;

    iput-boolean p8, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$daytimeShading:Z

    iput p9, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$shiftX:F

    iput p10, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$shiftY:F

    iput p11, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$scaleX:F

    iput p12, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$scaleY:F

    iput p13, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$vw:I

    iput p14, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$vh:I

    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public begin(FII)V
    .registers 4

    .line 284
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->begin(FII)V

    .line 286
    iget-object p2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p2, p1, p1}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsScale(FF)V

    .line 288
    iget-object p1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getLod()Linfo/flowersoft/theotown/city/components/LODController;

    move-result-object p1

    const/4 p2, 0x1

    .line 289
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/components/LODController;->setDuringScreenshot(Z)V

    .line 290
    iget-boolean p3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$noBackground:Z

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/components/LODController;->setNoBackground(Z)V

    .line 291
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/components/LODController;->setNoBuffering(Z)V

    return-void
.end method

.method public draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V
    .registers 14

    .line 296
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$view:Lio/blueflower/stapel2d/util/ScreenRect;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->setWidth(F)V

    .line 297
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$view:Lio/blueflower/stapel2d/util/ScreenRect;

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->setHeight(F)V

    .line 298
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->setView(Lio/blueflower/stapel2d/util/ScreenRect;)V

    .line 300
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotatedWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 301
    div-int/lit8 v1, p4, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->scale:F

    div-float/2addr v1, v2

    .line 302
    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->absHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v0, v4, v0

    mul-float/2addr v0, v4

    iget v4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->absWidth:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    int-to-float v0, p3

    add-float/2addr v3, v0

    div-int/lit8 v0, p5, 0x2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v2

    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$maxBuildingHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    const/high16 v0, 0x42000000    # 32.0f

    sub-float/2addr v3, v0

    .line 303
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/city/PreviewCreator;->clipMovement(Lio/blueflower/stapel2d/drawing/Engine;Linfo/flowersoft/theotown/city/IsoConverter;)V

    .line 306
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-boolean v2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$daytimeShading:Z

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/City;->draw(Lio/blueflower/stapel2d/drawing/Engine;Z)V

    .line 308
    sget v0, Linfo/flowersoft/theotown/resources/Constants;->VERDÄCHTIG:I

    if-eqz v0, :cond_a4

    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->scale:F

    const/high16 v1, 0x3e000000    # 0.125f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a4

    .line 310
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 311
    const-string v1, "hack0rz "

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 312
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 314
    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 315
    invoke-virtual {p1, v4, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move v4, p3

    :goto_8c
    if-ge v4, p5, :cond_9a

    move v5, p2

    :goto_8f
    if-ge v5, p4, :cond_98

    int-to-float v6, v5

    int-to-float v7, v4

    .line 319
    invoke-virtual {p1, v0, v1, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    add-int/2addr v5, v2

    goto :goto_8f

    :cond_98
    add-int/2addr v4, v3

    goto :goto_8c

    .line 324
    :cond_9a
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 325
    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->scale:F

    invoke-virtual {p1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 328
    :cond_a4
    invoke-super/range {p0 .. p5}, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V

    return-void
.end method

.method public end()V
    .registers 4

    .line 333
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getLod()Linfo/flowersoft/theotown/city/components/LODController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/LODController;->setDuringScreenshot(Z)V

    .line 334
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getLod()Linfo/flowersoft/theotown/city/components/LODController;

    move-result-object v0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/LODController;->setNoBackground(Z)V

    .line 335
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getLod()Linfo/flowersoft/theotown/city/components/LODController;

    move-result-object v0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/LODController;->setNoBuffering(Z)V

    .line 337
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$shiftX:F

    iget v2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$shiftY:F

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 338
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$iso:Linfo/flowersoft/theotown/city/IsoConverter;

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$scaleX:F

    iget v2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$scaleY:F

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsScale(FF)V

    .line 340
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$view:Lio/blueflower/stapel2d/util/ScreenRect;

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$vw:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->setWidth(F)V

    .line 341
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$view:Lio/blueflower/stapel2d/util/ScreenRect;

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$vh:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->setHeight(F)V

    .line 342
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->setView(Lio/blueflower/stapel2d/util/ScreenRect;)V

    return-void
.end method

.method public getHeight()I
    .registers 3

    .line 279
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$maxBuildingHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 274
    iget-object v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hideBackground()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$noBackground:Z

    return v0
.end method

.method public useOverlay()Z
    .registers 2

    .line 269
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$2;->val$overlay:Z

    return v0
.end method

###### Class info.flowersoft.theotown.city.PreviewCreator.Drawable (info.flowersoft.theotown.city.PreviewCreator$Drawable)
.class public interface abstract Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;
.super Ljava/lang/Object;
.source "PreviewCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/PreviewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Drawable"
.end annotation


# virtual methods
.method public abstract begin(FII)V
.end method

.method public abstract draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V
.end method

.method public abstract end()V
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract hideBackground()Z
.end method

###### Class info.flowersoft.theotown.city.PreviewCreator.LabeledDrawable (info.flowersoft.theotown.city.PreviewCreator$LabeledDrawable)
.class public abstract Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;
.super Ljava/lang/Object;
.source "PreviewCreator.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/PreviewCreator$Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/PreviewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LabeledDrawable"
.end annotation


# instance fields
.field public absHeight:I

.field public absWidth:I

.field public final logoHeight:F

.field public final logoImg:I

.field public final logoWidth:F

.field public name:Ljava/lang/String;

.field public scale:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOGO_THEOTOWN:I

    iput v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->logoImg:I

    .line 368
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->logoWidth:F

    .line 369
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->logoHeight:F

    .line 372
    iput-object p1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public begin(FII)V
    .registers 4

    .line 377
    iput p1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->scale:F

    .line 378
    iput p2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->absWidth:I

    .line 379
    iput p3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->absHeight:I

    return-void
.end method

.method public draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V
    .registers 15

    .line 384
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->useOverlay()Z

    move-result p4

    if-nez p4, :cond_7

    return-void

    .line 388
    :cond_7
    sget-object p4, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, p4, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 389
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result p4

    .line 390
    iget p5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->absWidth:I

    int-to-float p5, p5

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p5, v0

    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->logoWidth:F

    div-float/2addr p5, v0

    .line 392
    invoke-virtual {p1, p5, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 393
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v0, 0xff

    .line 394
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 395
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v1, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->absWidth:I

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->logoWidth:F

    mul-float/2addr v2, p5

    sub-float/2addr v1, v2

    iget v2, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->absHeight:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    iget v3, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->logoHeight:F

    mul-float/2addr v3, p5

    const p5, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, p5

    sub-float/2addr v2, v3

    iget p5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->logoImg:I

    invoke-virtual {p1, v0, v1, v2, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 396
    iget-object p5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->name:Ljava/lang/String;

    invoke-virtual {v4, p5}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result p5

    .line 397
    iget v0, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->absWidth:I

    int-to-float v1, v0

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    div-float/2addr v1, p5

    const p5, 0x3d4ccccd    # 0.05f

    int-to-float v0, v0

    mul-float/2addr v0, p5

    div-float/2addr v0, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 398
    invoke-virtual {p1, p4, p4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 399
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->name:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float p2, p2

    iget p4, p0, Linfo/flowersoft/theotown/city/PreviewCreator$LabeledDrawable;->absHeight:I

    int-to-float p5, p4

    const v2, 0x3bc49ba6    # 0.006f

    mul-float/2addr p5, v2

    add-float v2, p2, p5

    add-int/2addr p3, p4

    int-to-float v3, p3

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v6, p1

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 400
    invoke-virtual {v6, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public useOverlay()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.city.PreviewCreator.SteppedTask (info.flowersoft.theotown.city.PreviewCreator$SteppedTask)
.class public interface abstract Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;
.super Ljava/lang/Object;
.source "PreviewCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/PreviewCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SteppedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract remainingSteps()I
.end method

.method public abstract run()V
.end method
