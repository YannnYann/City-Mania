###### Class info.flowersoft.theotown.ui.RCIIcon (info.flowersoft.theotown.ui.RCIIcon)
.class public Linfo/flowersoft/theotown/ui/RCIIcon;
.super Lio/blueflower/stapel2d/gui/Icon;
.source "RCIIcon.java"


# instance fields
.field public demand:Linfo/flowersoft/theotown/city/components/Demand;

.field public interest:[F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/components/Demand;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 21
    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p2, 0x3

    .line 16
    new-array p2, p2, [F

    iput-object p2, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->interest:[F

    .line 23
    iput-object p1, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    return-void
.end method

.method public static drawBar(Lio/blueflower/stapel2d/drawing/Engine;IIIILio/blueflower/stapel2d/drawing/Color;)V
    .registers 18

    move v7, p3

    move/from16 v1, p4

    move-object/from16 v8, p5

    if-gez v1, :cond_d

    neg-int v1, v1

    sub-int v2, p2, v1

    :goto_a
    move v9, v1

    move v10, v2

    goto :goto_10

    :cond_d
    add-int/lit8 v2, p2, 0x1

    goto :goto_a

    .line 84
    :goto_10
    sget-object v11, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 85
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    add-int/lit8 v3, v10, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v7, 0x2

    int-to-float v4, v4

    add-int/lit8 v5, v9, 0x2

    int-to-float v5, v5

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 88
    invoke-virtual {p0, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 89
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, p1

    int-to-float v3, v10

    int-to-float v4, v7

    int-to-float v5, v9

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move v9, v2

    .line 92
    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->TEMP:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v8}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v11, v2}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 93
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int v2, p1, v7

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 96
    invoke-virtual {v10, v8}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v4}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 97
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 v4, 0x3f800000    # 1.0f

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move v2, v9

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 27

    move-object/from16 v0, p0

    .line 28
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v1

    add-int v1, v1, p1

    const/4 v6, 0x1

    add-int/lit8 v7, v1, 0x1

    .line 29
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v1

    add-int v8, v1, p2

    add-int/lit8 v9, v8, 0x1

    .line 30
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    const/4 v10, 0x2

    add-int/lit8 v11, v1, -0x2

    .line 31
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v12

    add-int/lit8 v13, v12, -0x2

    .line 33
    div-int/lit8 v14, v11, 0x3

    add-int/lit8 v3, v14, -0x1

    mul-int/lit8 v1, v3, 0x3

    sub-int v1, v11, v1

    sub-int/2addr v1, v10

    .line 35
    div-int/2addr v1, v10

    add-int v15, v7, v1

    .line 37
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->interest:[F

    iget-object v2, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/Demand;->getResidential()F

    move-result v2

    const/16 v16, 0x0

    aput v2, v1, v16

    .line 38
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->interest:[F

    iget-object v2, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/Demand;->getCommercial()F

    move-result v2

    aput v2, v1, v6

    .line 39
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->interest:[F

    iget-object v2, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->demand:Linfo/flowersoft/theotown/city/components/Demand;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/Demand;->getIndustrial()F

    move-result v2

    aput v2, v1, v10

    move/from16 v1, v16

    :goto_4e
    const/4 v2, 0x3

    if-ge v1, v2, :cond_9a

    .line 42
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->interest:[F

    aget v4, v2, v1

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget-object v5, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->interest:[F

    aget v5, v5, v1

    .line 43
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v17, -0x43333333    # -0.025f

    mul-float v5, v5, v17

    move/from16 p1, v10

    move/from16 p2, v11

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    double-to-float v5, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v5, v10, v5

    mul-float/2addr v4, v5

    aput v4, v2, v1

    .line 44
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->interest:[F

    aget v4, v2, v1

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v5, v4

    add-int/lit8 v11, v12, -0x8

    int-to-float v11, v11

    mul-float/2addr v5, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v5, v11

    sub-float/2addr v5, v10

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v10, p1

    move/from16 v11, p2

    goto :goto_4e

    :cond_9a
    move/from16 p1, v10

    move/from16 p2, v11

    .line 49
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v10, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x64

    .line 52
    invoke-virtual {v10, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move/from16 v11, v16

    :goto_a9
    if-ge v11, v2, :cond_c0

    mul-int v1, v11, v14

    add-int/2addr v1, v15

    move v4, v2

    add-int/lit8 v2, v8, 0x4

    move v5, v4

    add-int/lit8 v4, v12, -0x8

    move/from16 v17, v5

    .line 54
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/RCIIcon;->drawRect(IIIILio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v17

    goto :goto_a9

    :cond_c0
    const/16 v1, 0xff

    .line 57
    invoke-virtual {v10, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    add-int/lit8 v18, v15, 0x1

    .line 58
    div-int/lit8 v13, v13, 0x2

    add-int v19, v9, v13

    add-int/lit8 v20, v14, -0x3

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->interest:[F

    aget v1, v1, v16

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-int v1, v1

    sget-object v22, Linfo/flowersoft/theotown/resources/Resources;->COLOR_RES1:Lio/blueflower/stapel2d/drawing/Color;

    move/from16 v21, v1

    move-object/from16 v17, v10

    invoke-static/range {v17 .. v22}, Linfo/flowersoft/theotown/ui/RCIIcon;->drawBar(Lio/blueflower/stapel2d/drawing/Engine;IIIILio/blueflower/stapel2d/drawing/Color;)V

    add-int/2addr v15, v14

    add-int/lit8 v18, v15, 0x1

    .line 62
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->interest:[F

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-int v1, v1

    sget-object v22, Linfo/flowersoft/theotown/resources/Resources;->COLOR_COM1:Lio/blueflower/stapel2d/drawing/Color;

    move/from16 v21, v1

    invoke-static/range {v17 .. v22}, Linfo/flowersoft/theotown/ui/RCIIcon;->drawBar(Lio/blueflower/stapel2d/drawing/Engine;IIIILio/blueflower/stapel2d/drawing/Color;)V

    add-int/2addr v15, v14

    add-int/lit8 v18, v15, 0x1

    .line 66
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RCIIcon;->interest:[F

    aget v1, v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-int v1, v1

    sget-object v22, Linfo/flowersoft/theotown/resources/Resources;->COLOR_IND1:Lio/blueflower/stapel2d/drawing/Color;

    move/from16 v21, v1

    invoke-static/range {v17 .. v22}, Linfo/flowersoft/theotown/ui/RCIIcon;->drawBar(Lio/blueflower/stapel2d/drawing/Engine;IIIILio/blueflower/stapel2d/drawing/Color;)V

    move-object/from16 v1, v17

    move/from16 v9, v19

    .line 69
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 70
    sget-object v18, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, v7

    int-to-float v3, v9

    move/from16 v4, p2

    int-to-float v4, v4

    const/high16 v22, 0x3f800000    # 1.0f

    sget v23, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-virtual/range {v17 .. v23}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 72
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public final drawRect(IIIILio/blueflower/stapel2d/drawing/Color;)V
    .registers 14

    .line 101
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 102
    invoke-virtual {v1, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 103
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, p1

    int-to-float v4, p2

    int-to-float v5, p3

    int-to-float v6, p4

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void
.end method
