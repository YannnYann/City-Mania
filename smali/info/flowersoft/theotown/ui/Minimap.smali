###### Class info.flowersoft.theotown.ui.Minimap (info.flowersoft.theotown.ui.Minimap)
.class public Linfo/flowersoft/theotown/ui/Minimap;
.super Lio/blueflower/stapel2d/gui/SensitiveGadget;
.source "Minimap.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public done:Z

.field public drawCounter:I

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public final img:Lio/blueflower/stapel2d/drawing/Image;

.field public final minimapRenderer:Linfo/flowersoft/theotown/city/MinimapRenderer;

.field public final rect:[F

.field public final tempUvs:[F

.field public final texture:Lio/blueflower/stapel2d/drawing/Texture;

.field public final textureSource:Lio/blueflower/stapel2d/drawing/DynamicTextureSource;

.field public winter:Z

.field public workerWorking:Z


# direct methods
.method public static synthetic $r8$lambda$14AuBXsnvjlC7FxL1gzHqQqiALM(Linfo/flowersoft/theotown/ui/Minimap;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Minimap;->render()V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 13

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 52
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/SensitiveGadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 p2, 0x8

    .line 45
    new-array p2, p2, [F

    iput-object p2, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    const/4 p2, 0x4

    .line 47
    new-array p2, p2, [F

    iput-object p2, v0, Linfo/flowersoft/theotown/ui/Minimap;->tempUvs:[F

    .line 54
    iput-object p1, v0, Linfo/flowersoft/theotown/ui/Minimap;->city:Linfo/flowersoft/theotown/city/City;

    .line 56
    sget-boolean p2, Linfo/flowersoft/theotown/resources/Settings;->realMinimapResolution:Z

    if-eqz p2, :cond_1d

    const/16 p2, 0x200

    goto :goto_1f

    :cond_1d
    const/16 p2, 0x80

    .line 57
    :goto_1f
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 58
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p4

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 59
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 61
    new-instance p5, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;

    invoke-direct {p5, p4, p4}, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;-><init>(II)V

    iput-object p5, v0, Linfo/flowersoft/theotown/ui/Minimap;->textureSource:Lio/blueflower/stapel2d/drawing/DynamicTextureSource;

    .line 62
    new-instance p6, Lio/blueflower/stapel2d/drawing/Texture;

    invoke-direct {p6, p5}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    iput-object p6, v0, Linfo/flowersoft/theotown/ui/Minimap;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 64
    new-instance p5, Linfo/flowersoft/theotown/city/MinimapRenderer;

    invoke-direct {p5, p1, p3, p2}, Linfo/flowersoft/theotown/city/MinimapRenderer;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    iput-object p5, v0, Linfo/flowersoft/theotown/ui/Minimap;->minimapRenderer:Linfo/flowersoft/theotown/city/MinimapRenderer;

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/Minimap;->executor:Ljava/util/concurrent/ExecutorService;

    .line 67
    new-instance p1, Lio/blueflower/stapel2d/drawing/Image;

    invoke-direct {p1, p6}, Lio/blueflower/stapel2d/drawing/Image;-><init>(Lio/blueflower/stapel2d/drawing/Texture;)V

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/Minimap;->img:Lio/blueflower/stapel2d/drawing/Image;

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    int-to-float p2, p4

    neg-int p3, p4

    int-to-float p3, p3

    const/4 p4, 0x0

    .line 69
    invoke-virtual {p1, p4, p2, p2, p3}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 7

    .line 121
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v1, p2

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    invoke-virtual {p0, v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/Minimap;->draw(IIII)V

    .line 122
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public draw(IIII)V
    .registers 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 126
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v10, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 128
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Minimap;->prepareDrawing()V

    .line 130
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget-object v6, v0, Linfo/flowersoft/theotown/ui/Minimap;->img:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, v1

    int-to-float v7, v3

    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v3, v2

    int-to-float v8, v3

    move/from16 v3, p3

    int-to-float v9, v3

    move/from16 v3, p4

    int-to-float v3, v3

    const/4 v11, 0x0

    const/high16 v12, 0x40800000    # 4.0f

    move-object v5, v10

    move v10, v3

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/drawing/Drawing;->drawRounded(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFFFIF)V

    move-object v10, v5

    .line 132
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    iget-object v6, v0, Linfo/flowersoft/theotown/ui/Minimap;->tempUvs:[F

    invoke-virtual {v4, v5, v6}, Lio/blueflower/stapel2d/drawing/Image;->getUVCoords(I[F)[F

    move-result-object v19

    .line 133
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/Minimap;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v4

    .line 134
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v5

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v5

    .line 135
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v6

    invoke-virtual {v6}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v6

    .line 136
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/Minimap;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getRotatedWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v9, v7

    .line 137
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/Minimap;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getRotatedHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v3, v8

    .line 139
    iget-object v11, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v12}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v13

    mul-float/2addr v13, v7

    const/16 v20, 0x0

    aput v13, v11, v20

    .line 140
    iget-object v11, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    invoke-virtual {v4, v12, v12}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v13

    mul-float/2addr v13, v8

    sub-float v13, v3, v13

    const/16 v21, 0x1

    aput v13, v11, v21

    .line 141
    iget-object v11, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    invoke-virtual {v4, v5, v12}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v13

    mul-float/2addr v13, v7

    const/16 v22, 0x2

    aput v13, v11, v22

    .line 142
    iget-object v11, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    invoke-virtual {v4, v5, v12}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v13

    mul-float/2addr v13, v8

    sub-float v13, v3, v13

    const/16 v23, 0x3

    aput v13, v11, v23

    .line 143
    iget-object v11, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v13

    mul-float/2addr v13, v7

    const/16 v24, 0x4

    aput v13, v11, v24

    .line 144
    iget-object v11, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v5

    mul-float/2addr v5, v8

    sub-float v5, v3, v5

    const/16 v25, 0x5

    aput v5, v11, v25

    .line 145
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    invoke-virtual {v4, v12, v6}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v11

    mul-float/2addr v7, v11

    const/16 v26, 0x6

    aput v7, v5, v26

    .line 146
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    invoke-virtual {v4, v12, v6}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v4

    mul-float/2addr v8, v4

    sub-float v4, v3, v8

    const/16 v27, 0x7

    aput v4, v5, v27

    int-to-float v1, v1

    int-to-float v2, v2

    .line 148
    invoke-virtual {v10, v1, v2, v9, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    const/16 v3, 0x32

    .line 149
    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 152
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    iget-object v3, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    aget v4, v3, v20

    add-float v6, v1, v4

    aget v4, v3, v21

    add-float v7, v2, v4

    aget v4, v3, v24

    add-float v8, v1, v4

    aget v4, v3, v25

    add-float v9, v2, v4

    aget v4, v3, v22

    add-float/2addr v4, v1

    aget v3, v3, v23

    add-float v11, v2, v3

    aget v12, v19, v20

    aget v13, v19, v21

    aget v14, v19, v22

    aget v15, v19, v23

    const/16 v18, 0x1

    move/from16 v16, v14

    move/from16 v17, v13

    move-object/from16 v28, v10

    move v10, v4

    move-object/from16 v4, v28

    invoke-virtual/range {v4 .. v18}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    move-object v10, v4

    .line 155
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    iget-object v3, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    aget v4, v3, v20

    add-float v6, v1, v4

    aget v4, v3, v21

    add-float v7, v2, v4

    aget v4, v3, v26

    add-float v8, v1, v4

    aget v4, v3, v27

    add-float v9, v2, v4

    aget v4, v3, v24

    add-float/2addr v4, v1

    aget v3, v3, v25

    add-float v11, v2, v3

    aget v12, v19, v20

    aget v13, v19, v21

    aget v15, v19, v23

    aget v16, v19, v22

    move v14, v12

    move/from16 v17, v15

    move-object/from16 v28, v10

    move v10, v4

    move-object/from16 v4, v28

    invoke-virtual/range {v4 .. v18}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    move-object v10, v4

    .line 161
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget-object v3, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    aget v5, v3, v20

    add-float/2addr v5, v1

    aget v6, v3, v21

    add-float/2addr v6, v2

    aget v7, v3, v22

    add-float/2addr v7, v1

    aget v3, v3, v23

    add-float v8, v2, v3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 163
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget-object v3, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    aget v5, v3, v22

    add-float/2addr v5, v1

    aget v6, v3, v23

    add-float/2addr v6, v2

    aget v7, v3, v24

    add-float/2addr v7, v1

    aget v3, v3, v25

    add-float v8, v2, v3

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 165
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget-object v3, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    aget v5, v3, v26

    add-float/2addr v5, v1

    aget v6, v3, v27

    add-float/2addr v6, v2

    aget v7, v3, v20

    add-float/2addr v7, v1

    aget v3, v3, v21

    add-float v8, v2, v3

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    const/16 v3, 0x80

    .line 168
    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 169
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget-object v3, v0, Linfo/flowersoft/theotown/ui/Minimap;->rect:[F

    aget v5, v3, v24

    add-float/2addr v5, v1

    aget v6, v3, v25

    add-float/2addr v6, v2

    aget v7, v3, v26

    add-float/2addr v7, v1

    aget v1, v3, v27

    add-float v8, v2, v1

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    const/16 v1, 0xff

    .line 172
    invoke-virtual {v10, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 173
    invoke-virtual {v10}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    return-void
.end method

.method public flush()V
    .registers 2

    const/4 v0, 0x0

    .line 204
    iput v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->drawCounter:I

    return-void
.end method

.method public free()V
    .registers 3

    .line 209
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Minimap;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 210
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 211
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    return-void
.end method

.method public getCursor()Linfo/flowersoft/theotown/ui/CursorType;
    .registers 2

    .line 111
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Hand:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0
.end method

.method public getImage()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 115
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Minimap;->prepareDrawing()V

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->img:Lio/blueflower/stapel2d/drawing/Image;

    return-object v0
.end method

.method public onUpdate()V
    .registers 5

    .line 178
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 180
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-nez v0, :cond_8

    return-void

    .line 184
    :cond_8
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotatedWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v1

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 185
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Minimap;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRotatedHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 187
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Minimap;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v2

    .line 188
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Minimap;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v0

    .line 190
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Minimap;->city:Linfo/flowersoft/theotown/city/City;

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Linfo/flowersoft/theotown/city/City;->focus(FFF)V

    .line 191
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Minimap;->flush()V

    return-void
.end method

.method public final prepareDrawing()V
    .registers 9

    .line 73
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 75
    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/Minimap;->workerWorking:Z

    if-nez v1, :cond_64

    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/Minimap;->done:Z

    if-eqz v1, :cond_64

    .line 76
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Minimap;->textureSource:Lio/blueflower/stapel2d/drawing/DynamicTextureSource;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Minimap;->minimapRenderer:Linfo/flowersoft/theotown/city/MinimapRenderer;

    .line 77
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getBufferData()Ljava/nio/IntBuffer;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Minimap;->minimapRenderer:Linfo/flowersoft/theotown/city/MinimapRenderer;

    .line 78
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getWidth()I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/Minimap;->minimapRenderer:Linfo/flowersoft/theotown/city/MinimapRenderer;

    .line 79
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getHeight()I

    move-result v4

    .line 76
    invoke-virtual {v1, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->setData(Ljava/nio/IntBuffer;II)V

    .line 82
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Minimap;->img:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getUVStreamPos(I)I

    move-result v1

    .line 83
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/Minimap;->img:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Image;->getUVStream()[F

    move-result-object v3

    const/4 v4, 0x0

    .line 84
    aput v4, v3, v1

    add-int/lit8 v5, v1, 0x1

    .line 85
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/Minimap;->minimapRenderer:Linfo/flowersoft/theotown/city/MinimapRenderer;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Linfo/flowersoft/theotown/ui/Minimap;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v3, v5

    add-int/lit8 v5, v1, 0x2

    .line 86
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/Minimap;->minimapRenderer:Linfo/flowersoft/theotown/city/MinimapRenderer;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Linfo/flowersoft/theotown/ui/Minimap;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Texture;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v3, v5

    add-int/lit8 v1, v1, 0x3

    .line 87
    aput v4, v3, v1

    .line 89
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Minimap;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->loadTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 90
    iput-boolean v2, p0, Linfo/flowersoft/theotown/ui/Minimap;->done:Z

    .line 93
    :cond_64
    iget v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->drawCounter:I

    const/4 v1, 0x1

    if-gtz v0, :cond_87

    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->workerWorking:Z

    if-nez v0, :cond_87

    .line 94
    iput-boolean v1, p0, Linfo/flowersoft/theotown/ui/Minimap;->workerWorking:Z

    .line 96
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/WinterManager;->isWinter()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->winter:Z

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Linfo/flowersoft/theotown/ui/Minimap$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/ui/Minimap$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/Minimap;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/16 v0, 0x40

    .line 98
    iput v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->drawCounter:I

    .line 100
    :cond_87
    iget v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->drawCounter:I

    sub-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->drawCounter:I

    return-void
.end method

.method public final render()V
    .registers 3

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->minimapRenderer:Linfo/flowersoft/theotown/city/MinimapRenderer;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/Minimap;->winter:Z

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/MinimapRenderer;->render(Z)V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->workerWorking:Z

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Linfo/flowersoft/theotown/ui/Minimap;->done:Z

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 196
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    if-eqz p1, :cond_8

    .line 199
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Minimap;->flush()V

    :cond_8
    return-void
.end method

###### Class info.flowersoft.theotown.ui.Minimap$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.Minimap$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/Minimap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/Minimap;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/Minimap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Minimap$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/Minimap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Minimap$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/Minimap;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/Minimap;->$r8$lambda$14AuBXsnvjlC7FxL1gzHqQqiALM(Linfo/flowersoft/theotown/ui/Minimap;)V

    return-void
.end method
