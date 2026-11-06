###### Class info.flowersoft.theotown.ui.MapPreview (info.flowersoft.theotown.ui.MapPreview)
.class public Linfo/flowersoft/theotown/ui/MapPreview;
.super Lio/blueflower/stapel2d/gui/SensitiveGadget;
.source "MapPreview.java"


# static fields
.field public static renderThread:Ljava/lang/Thread;


# instance fields
.field public final border:I

.field public doneMinimapRendering:Z

.field public doneUpload:Z

.field public minimap:Lio/blueflower/stapel2d/drawing/Image;

.field public minimapTexture:Lio/blueflower/stapel2d/drawing/Texture;

.field public final modifiable:Z

.field public final progress:Linfo/flowersoft/theotown/util/ProgressVariable;

.field public regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

.field public final status:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Z)V
    .registers 8

    .line 47
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/SensitiveGadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, p0

    const/4 p2, 0x1

    .line 39
    iput p2, p1, Linfo/flowersoft/theotown/ui/MapPreview;->border:I

    .line 40
    new-instance p2, Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Linfo/flowersoft/theotown/util/ProgressVariable;-><init>(F)V

    iput-object p2, p1, Linfo/flowersoft/theotown/ui/MapPreview;->progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    .line 41
    new-instance p2, Lio/blueflower/stapel2d/util/ValueProperty;

    const-string p3, ""

    invoke-direct {p2, p3}, Lio/blueflower/stapel2d/util/ValueProperty;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Linfo/flowersoft/theotown/ui/MapPreview;->status:Lio/blueflower/stapel2d/util/Setter;

    .line 49
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p2

    check-cast p2, Lio/blueflower/stapel2d/gui/Master;

    .line 50
    new-instance p3, Linfo/flowersoft/theotown/ui/MapPreview$1;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/ui/MapPreview$1;-><init>(Linfo/flowersoft/theotown/ui/MapPreview;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 58
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    const/4 p2, 0x0

    .line 59
    invoke-virtual {p3, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 61
    iput-object p6, p1, Linfo/flowersoft/theotown/ui/MapPreview;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 62
    iput-boolean p7, p1, Linfo/flowersoft/theotown/ui/MapPreview;->modifiable:Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/MapPreview;)Linfo/flowersoft/theotown/util/RegionLayout;
    .registers 1

    .line 32
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    return-object p0
.end method

.method public static synthetic access$100()Ljava/lang/Thread;
    .registers 1

    .line 32
    sget-object v0, Linfo/flowersoft/theotown/ui/MapPreview;->renderThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/ui/MapPreview;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/MapPreview;->doneUpload:Z

    return p1
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/ui/MapPreview;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/MapPreview;->doneMinimapRendering:Z

    return p1
.end method


# virtual methods
.method public draw(II)V
    .registers 20

    move-object/from16 v0, p0

    .line 131
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 133
    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 134
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v1, v1, p1

    int-to-float v4, v1

    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v1, v1, p2

    int-to-float v5, v1

    .line 135
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    int-to-float v7, v1

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    .line 134
    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 137
    iget-boolean v1, v0, Linfo/flowersoft/theotown/ui/MapPreview;->doneMinimapRendering:Z

    const/16 v12, 0xff

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-eqz v1, :cond_fe

    .line 138
    iget-boolean v1, v0, Linfo/flowersoft/theotown/ui/MapPreview;->doneUpload:Z

    if-nez v1, :cond_3a

    .line 139
    iput-boolean v3, v0, Linfo/flowersoft/theotown/ui/MapPreview;->doneUpload:Z

    .line 140
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/MapPreview;->minimapTexture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->loadTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 142
    :cond_3a
    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v1, v1, p1

    add-int/2addr v1, v3

    .line 143
    iget v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v4, v4, p2

    add-int/2addr v4, v3

    .line 144
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    .line 145
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    .line 147
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 148
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/MapPreview;->minimap:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v1, v1

    int-to-float v4, v4

    int-to-float v3, v3

    int-to-float v7, v5

    const/4 v8, 0x0

    move-object v5, v6

    move v6, v3

    move-object v3, v5

    move v5, v4

    move v4, v1

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move v9, v5

    move v10, v6

    move v11, v7

    .line 150
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    if-eqz v3, :cond_1b0

    const/4 v3, 0x0

    move v14, v3

    .line 151
    :goto_6d
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/RegionLayout;->countPlaces()I

    move-result v3

    if-ge v14, v3, :cond_1b0

    .line 152
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    invoke-virtual {v3, v14}, Linfo/flowersoft/theotown/util/RegionLayout;->getRelativeX(I)F

    move-result v3

    .line 153
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    invoke-virtual {v4, v14}, Linfo/flowersoft/theotown/util/RegionLayout;->getRelativeY(I)F

    move-result v4

    .line 154
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    invoke-virtual {v5, v14}, Linfo/flowersoft/theotown/util/RegionLayout;->getRelativeSize(I)F

    move-result v5

    mul-float/2addr v3, v10

    add-float/2addr v3, v1

    mul-float/2addr v4, v11

    add-float/2addr v4, v9

    mul-float v6, v5, v10

    mul-float v7, v5, v11

    .line 160
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    invoke-virtual {v5, v14}, Linfo/flowersoft/theotown/util/RegionLayout;->getEnabled(I)Z

    move-result v5

    if-nez v5, :cond_ab

    .line 161
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move v5, v4

    move v4, v3

    .line 162
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 164
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_ad

    :cond_ab
    move v5, v4

    move v4, v3

    .line 167
    :goto_ad
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 168
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->NP_REGION_BORDER:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 171
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v3

    if-eqz v3, :cond_fa

    iget-boolean v3, v0, Linfo/flowersoft/theotown/ui/MapPreview;->modifiable:Z

    if-eqz v3, :cond_fa

    .line 172
    iget v3, v0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->mouseHoverX:F

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v8

    mul-float/2addr v3, v8

    .line 173
    iget v8, v0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->mouseHoverY:F

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v15

    mul-float/2addr v8, v15

    cmpg-float v15, v4, v3

    if-gtz v15, :cond_fa

    cmpg-float v15, v5, v8

    if-gtz v15, :cond_fa

    add-float v15, v4, v6

    cmpg-float v3, v3, v15

    if-gtz v3, :cond_fa

    add-float v3, v5, v7

    cmpg-float v3, v8, v3

    if-gtz v3, :cond_fa

    const/16 v3, 0x64

    .line 175
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 176
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-float/2addr v4, v13

    add-float/2addr v5, v13

    const/high16 v8, 0x40800000    # 4.0f

    sub-float/2addr v6, v8

    sub-float/2addr v7, v8

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 178
    invoke-virtual {v2, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_fa
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6d

    .line 184
    :cond_fe
    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v1, v1, p1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 185
    iget v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v4, v4, p2

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v14, v4, v5

    .line 187
    iget-object v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move v4, v3

    .line 188
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v5, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v5, v5, p1

    add-int/2addr v5, v4

    int-to-float v5, v5

    iget v6, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v6, v6, p2

    add-int/2addr v6, v4

    int-to-float v4, v6

    .line 189
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    int-to-float v7, v7

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    .line 188
    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 193
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move-object v11, v2

    .line 194
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    int-to-float v3, v1

    int-to-float v4, v14

    .line 196
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x5

    int-to-float v5, v5

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    iget-object v7, v0, Linfo/flowersoft/theotown/ui/MapPreview;->progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    .line 197
    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/ProgressVariable;->getProgress()F

    move-result v7

    const v8, 0x40c90fdb

    mul-float/2addr v7, v8

    move v8, v7

    const v7, -0x4036f025

    add-float/2addr v8, v7

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 194
    invoke-virtual/range {v2 .. v11}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object v2, v11

    .line 200
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 203
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    const-wide/16 v5, 0x320

    rem-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x44480000    # 800.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, v13

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    .line 202
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x42ff0000    # 127.5f

    mul-float/2addr v3, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 204
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v1, v1, -0xd

    int-to-float v1, v1

    add-int/lit8 v14, v14, -0xd

    int-to-float v4, v14

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_WIZARD:I

    invoke-virtual {v2, v3, v1, v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 205
    invoke-virtual {v2, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 208
    :cond_1b0
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public flush()V
    .registers 3

    .line 213
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->flush()V

    .line 214
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview;->minimapTexture:Lio/blueflower/stapel2d/drawing/Texture;

    if-eqz v0, :cond_11

    .line 215
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview;->minimapTexture:Lio/blueflower/stapel2d/drawing/Texture;

    :cond_11
    return-void
.end method

.method public getProgress()Linfo/flowersoft/theotown/util/ProgressVariable;
    .registers 2

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview;->progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    return-object v0
.end method

.method public getStatus()Lio/blueflower/stapel2d/util/Setter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview;->status:Lio/blueflower/stapel2d/util/Setter;

    return-object v0
.end method

.method public issueMinimapRendering(Lio/blueflower/stapel2d/util/Getter;IILinfo/flowersoft/theotown/util/RegionLayout;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Linfo/flowersoft/theotown/city/City;",
            ">;II",
            "Linfo/flowersoft/theotown/util/RegionLayout;",
            ")V"
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/MapPreview;->stopRendering()V

    .line 222
    iget-object p3, p0, Linfo/flowersoft/theotown/ui/MapPreview;->progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    .line 223
    iput-object p4, p0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    .line 225
    iget-object p3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p3, p3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 p4, 0x0

    .line 226
    iput-boolean p4, p0, Linfo/flowersoft/theotown/ui/MapPreview;->doneMinimapRendering:Z

    .line 228
    invoke-static {p2}, Lio/blueflower/stapel2d/drawing/Texture;->findSize(I)I

    move-result p4

    .line 230
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/MapPreview;->minimapTexture:Lio/blueflower/stapel2d/drawing/Texture;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Texture;->getWidth()I

    move-result v1

    if-ne v1, p4, :cond_28

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/MapPreview;->minimapTexture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v1

    if-eq v1, p4, :cond_30

    .line 231
    :cond_28
    iget-object p4, p0, Linfo/flowersoft/theotown/ui/MapPreview;->minimapTexture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    const/4 p3, 0x0

    .line 232
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/MapPreview;->minimapTexture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 235
    :cond_30
    new-instance v6, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;

    invoke-direct {v6, p2, p2}, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;-><init>(II)V

    .line 237
    iget-object p3, p0, Linfo/flowersoft/theotown/ui/MapPreview;->minimapTexture:Lio/blueflower/stapel2d/drawing/Texture;

    if-nez p3, :cond_4a

    .line 238
    new-instance p3, Lio/blueflower/stapel2d/drawing/Texture;

    invoke-direct {p3, v6}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/MapPreview;->minimapTexture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 239
    sget-boolean p4, Linfo/flowersoft/theotown/resources/Settings;->useLowColorDepth:Z

    if-eqz p4, :cond_4d

    const/16 p4, 0x10

    invoke-virtual {p3, p4}, Lio/blueflower/stapel2d/drawing/Texture;->setColorDepth(I)V

    goto :goto_4d

    .line 241
    :cond_4a
    invoke-virtual {p3, v6}, Lio/blueflower/stapel2d/drawing/Texture;->setSource(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    .line 244
    :cond_4d
    :goto_4d
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object p3

    invoke-virtual {p3}, Linfo/flowersoft/theotown/resources/WinterManager;->isWinter()Z

    move-result v5

    .line 245
    new-instance v1, Linfo/flowersoft/theotown/ui/MapPreview$6;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/MapPreview$6;-><init>(Linfo/flowersoft/theotown/ui/MapPreview;Lio/blueflower/stapel2d/util/Getter;IZLio/blueflower/stapel2d/drawing/DynamicTextureSource;)V

    sput-object v1, Linfo/flowersoft/theotown/ui/MapPreview;->renderThread:Ljava/lang/Thread;

    .line 262
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 264
    new-instance p1, Lio/blueflower/stapel2d/drawing/Image;

    iget-object p2, v2, Linfo/flowersoft/theotown/ui/MapPreview;->minimapTexture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-direct {p1, p2}, Lio/blueflower/stapel2d/drawing/Image;-><init>(Lio/blueflower/stapel2d/drawing/Texture;)V

    iput-object p1, v2, Linfo/flowersoft/theotown/ui/MapPreview;->minimap:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float p2, v4

    neg-int p3, v4

    int-to-float p3, p3

    .line 265
    invoke-virtual {p1, v0, p2, p2, p3}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    return-void
.end method

.method public onClick()V
    .registers 9

    .line 67
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onClick()V

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    if-eqz v0, :cond_ce

    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/MapPreview;->modifiable:Z

    if-eqz v0, :cond_ce

    .line 70
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Master;->getVirtualWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 71
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v1

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Master;->getVirtualHeightRatio()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 72
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 73
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 74
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    .line 75
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    sub-int/2addr v6, v5

    .line 77
    iget-object v7, p0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    sub-int v2, v0, v2

    int-to-float v2, v2

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-int v3, v1, v3

    int-to-float v3, v3

    int-to-float v4, v6

    div-float/2addr v3, v4

    invoke-virtual {v7, v2, v3}, Linfo/flowersoft/theotown/util/RegionLayout;->getCellIndex(FF)I

    move-result v2

    if-ltz v2, :cond_ce

    .line 80
    new-instance v3, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 81
    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/ui/PopupBuilder;->setSource(II)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 82
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    invoke-virtual {v0, v2, v5}, Linfo/flowersoft/theotown/util/RegionLayout;->canDivide(II)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 83
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_SPLIT:I

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/MapPreview;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x23d

    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Linfo/flowersoft/theotown/ui/MapPreview$2;

    invoke-direct {v4, p0, v2}, Linfo/flowersoft/theotown/ui/MapPreview$2;-><init>(Linfo/flowersoft/theotown/ui/MapPreview;I)V

    invoke-virtual {v3, v0, v1, v4}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 91
    :cond_84
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/RegionLayout;->canMerge(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 92
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_MERGE:I

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/MapPreview;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x7c6

    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Linfo/flowersoft/theotown/ui/MapPreview$3;

    invoke-direct {v4, p0, v2}, Linfo/flowersoft/theotown/ui/MapPreview$3;-><init>(Linfo/flowersoft/theotown/ui/MapPreview;I)V

    invoke-virtual {v3, v0, v1, v4}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 100
    :cond_9e
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview;->regionLayout:Linfo/flowersoft/theotown/util/RegionLayout;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/RegionLayout;->getEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 101
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_HIDE:I

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/MapPreview;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xcce

    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Linfo/flowersoft/theotown/ui/MapPreview$4;

    invoke-direct {v4, p0, v2}, Linfo/flowersoft/theotown/ui/MapPreview$4;-><init>(Linfo/flowersoft/theotown/ui/MapPreview;I)V

    invoke-virtual {v3, v0, v1, v4}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    goto :goto_cb

    .line 108
    :cond_b9
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_SHOW:I

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/MapPreview;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x105

    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Linfo/flowersoft/theotown/ui/MapPreview$5;

    invoke-direct {v4, p0, v2}, Linfo/flowersoft/theotown/ui/MapPreview$5;-><init>(Linfo/flowersoft/theotown/ui/MapPreview;I)V

    invoke-virtual {v3, v0, v1, v4}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 116
    :goto_cb
    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    :cond_ce
    return-void
.end method

.method public stopRendering()V
    .registers 2

    .line 269
    sget-object v0, Linfo/flowersoft/theotown/ui/MapPreview;->renderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_14

    .line 270
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 272
    :try_start_7
    sget-object v0, Linfo/flowersoft/theotown/ui/MapPreview;->renderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    const/4 v0, 0x0

    .line 276
    sput-object v0, Linfo/flowersoft/theotown/ui/MapPreview;->renderThread:Ljava/lang/Thread;

    :cond_14
    return-void
.end method

###### Class info.flowersoft.theotown.ui.MapPreview.AnonymousClass1 (info.flowersoft.theotown.ui.MapPreview$1)
.class Linfo/flowersoft/theotown/ui/MapPreview$1;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "MapPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/MapPreview;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/MapPreview;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/MapPreview;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/MapPreview$1;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 53
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 55
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->clear(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.MapPreview.AnonymousClass2 (info.flowersoft.theotown.ui.MapPreview$2)
.class Linfo/flowersoft/theotown/ui/MapPreview$2;
.super Ljava/lang/Object;
.source "MapPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/MapPreview;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/MapPreview;

.field public final synthetic val$targetCell:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/MapPreview;I)V
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

    .line 83
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/MapPreview$2;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    iput p2, p0, Linfo/flowersoft/theotown/ui/MapPreview$2;->val$targetCell:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview$2;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/MapPreview;->access$000(Linfo/flowersoft/theotown/ui/MapPreview;)Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/ui/MapPreview$2;->val$targetCell:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/RegionLayout;->divide(II)I

    return-void
.end method

###### Class info.flowersoft.theotown.ui.MapPreview.AnonymousClass3 (info.flowersoft.theotown.ui.MapPreview$3)
.class Linfo/flowersoft/theotown/ui/MapPreview$3;
.super Ljava/lang/Object;
.source "MapPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/MapPreview;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/MapPreview;

.field public final synthetic val$targetCell:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/MapPreview;I)V
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

    .line 92
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/MapPreview$3;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    iput p2, p0, Linfo/flowersoft/theotown/ui/MapPreview$3;->val$targetCell:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview$3;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/MapPreview;->access$000(Linfo/flowersoft/theotown/ui/MapPreview;)Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/ui/MapPreview$3;->val$targetCell:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/RegionLayout;->merge(I)I

    return-void
.end method

###### Class info.flowersoft.theotown.ui.MapPreview.AnonymousClass4 (info.flowersoft.theotown.ui.MapPreview$4)
.class Linfo/flowersoft/theotown/ui/MapPreview$4;
.super Ljava/lang/Object;
.source "MapPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/MapPreview;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/MapPreview;

.field public final synthetic val$targetCell:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/MapPreview;I)V
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

    .line 101
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/MapPreview$4;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    iput p2, p0, Linfo/flowersoft/theotown/ui/MapPreview$4;->val$targetCell:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview$4;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/MapPreview;->access$000(Linfo/flowersoft/theotown/ui/MapPreview;)Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/ui/MapPreview$4;->val$targetCell:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/RegionLayout;->setEnabled(IZ)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.MapPreview.AnonymousClass5 (info.flowersoft.theotown.ui.MapPreview$5)
.class Linfo/flowersoft/theotown/ui/MapPreview$5;
.super Ljava/lang/Object;
.source "MapPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/MapPreview;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/MapPreview;

.field public final synthetic val$targetCell:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/MapPreview;I)V
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

    .line 108
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/MapPreview$5;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    iput p2, p0, Linfo/flowersoft/theotown/ui/MapPreview$5;->val$targetCell:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview$5;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/MapPreview;->access$000(Linfo/flowersoft/theotown/ui/MapPreview;)Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/ui/MapPreview$5;->val$targetCell:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/RegionLayout;->setEnabled(IZ)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.MapPreview.AnonymousClass6 (info.flowersoft.theotown.ui.MapPreview$6)
.class Linfo/flowersoft/theotown/ui/MapPreview$6;
.super Ljava/lang/Thread;
.source "MapPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/MapPreview;->issueMinimapRendering(Lio/blueflower/stapel2d/util/Getter;IILinfo/flowersoft/theotown/util/RegionLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/MapPreview;

.field public final synthetic val$cityGetter:Lio/blueflower/stapel2d/util/Getter;

.field public final synthetic val$sizeWH:I

.field public final synthetic val$textureSource:Lio/blueflower/stapel2d/drawing/DynamicTextureSource;

.field public final synthetic val$winter:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/MapPreview;Lio/blueflower/stapel2d/util/Getter;IZLio/blueflower/stapel2d/drawing/DynamicTextureSource;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 245
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/MapPreview$6;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/MapPreview$6;->val$cityGetter:Lio/blueflower/stapel2d/util/Getter;

    iput p3, p0, Linfo/flowersoft/theotown/ui/MapPreview$6;->val$sizeWH:I

    iput-boolean p4, p0, Linfo/flowersoft/theotown/ui/MapPreview$6;->val$winter:Z

    iput-object p5, p0, Linfo/flowersoft/theotown/ui/MapPreview$6;->val$textureSource:Lio/blueflower/stapel2d/drawing/DynamicTextureSource;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 248
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview$6;->val$cityGetter:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/City;

    .line 249
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3f

    if-eqz v0, :cond_3f

    .line 250
    new-instance v1, Linfo/flowersoft/theotown/tools/DefaultTool;

    invoke-direct {v1}, Linfo/flowersoft/theotown/tools/DefaultTool;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 252
    new-instance v1, Linfo/flowersoft/theotown/city/MinimapRenderer;

    iget v2, p0, Linfo/flowersoft/theotown/ui/MapPreview$6;->val$sizeWH:I

    invoke-direct {v1, v0, v2, v2}, Linfo/flowersoft/theotown/city/MinimapRenderer;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    .line 253
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/MapPreview$6;->val$winter:Z

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/MinimapRenderer;->render(Z)V

    .line 254
    invoke-static {}, Linfo/flowersoft/theotown/ui/MapPreview;->access$100()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_3f

    .line 255
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview$6;->val$textureSource:Lio/blueflower/stapel2d/drawing/DynamicTextureSource;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getData()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->setData([I)V

    .line 256
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview$6;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/MapPreview;->access$202(Linfo/flowersoft/theotown/ui/MapPreview;Z)Z

    .line 257
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MapPreview$6;->this$0:Linfo/flowersoft/theotown/ui/MapPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/MapPreview;->access$302(Linfo/flowersoft/theotown/ui/MapPreview;Z)Z

    :cond_3f
    return-void
.end method
