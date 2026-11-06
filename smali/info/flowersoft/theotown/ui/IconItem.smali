###### Class info.flowersoft.theotown.ui.IconItem (info.flowersoft.theotown.ui.IconItem)
.class public Linfo/flowersoft/theotown/ui/IconItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "IconItem.java"


# instance fields
.field public final bgColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final icon:I

.field public final onClick:Ljava/lang/Runnable;

.field public final rtl:Z

.field public final textColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final vertical:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Runnable;ZZ)V
    .registers 6

    .line 24
    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 25
    iput p1, p0, Linfo/flowersoft/theotown/ui/IconItem;->icon:I

    .line 26
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/IconItem;->onClick:Ljava/lang/Runnable;

    .line 27
    iput-boolean p4, p0, Linfo/flowersoft/theotown/ui/IconItem;->vertical:Z

    .line 28
    iput-boolean p5, p0, Linfo/flowersoft/theotown/ui/IconItem;->rtl:Z

    .line 29
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p2, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/IconItem;->textColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 30
    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/IconItem;->bgColor:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 42

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    .line 35
    iget-object v6, v5, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 37
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/IconItem;->bgColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 39
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v8, v1

    int-to-float v9, v2

    int-to-float v10, v3

    add-int/lit8 v13, v4, -0x1

    int-to-float v11, v13

    iget v12, v5, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    invoke-virtual/range {v6 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 40
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 42
    iget-boolean v7, v0, Linfo/flowersoft/theotown/ui/IconItem;->vertical:Z

    if-eqz v7, :cond_3f

    const/16 v7, 0xc8

    .line 43
    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 44
    iget-object v7, v5, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 45
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v8, v1

    int-to-float v9, v2

    int-to-float v10, v3

    int-to-float v11, v13

    sget v12, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SHOPITEM_BACKGROUND:I

    invoke-virtual/range {v6 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 46
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 49
    :cond_3f
    iget-object v14, v5, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 52
    iget-boolean v5, v0, Linfo/flowersoft/theotown/ui/IconItem;->vertical:Z

    const/16 v15, 0xff

    const/16 v7, 0x64

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v5, :cond_fe

    .line 53
    div-int/lit8 v5, v3, 0x2

    add-int v9, v1, v5

    .line 54
    div-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v2

    .line 56
    sget-object v11, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 57
    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v12, v5

    move-object v5, v6

    .line 58
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v13, v9, 0x1

    int-to-float v13, v13

    add-int/lit8 v7, v10, 0x1

    int-to-float v7, v7

    move/from16 v16, v12

    const/high16 v12, 0x3f000000    # 0.5f

    move/from16 v17, v8

    move v8, v7

    move v7, v13

    iget v13, v0, Linfo/flowersoft/theotown/ui/IconItem;->icon:I

    move/from16 v18, v9

    const/4 v9, 0x0

    move/from16 v19, v10

    const/4 v10, 0x0

    move-object/from16 v20, v11

    const/high16 v11, 0x3f000000    # 0.5f

    move/from16 v23, v16

    move/from16 v24, v18

    move/from16 v25, v19

    move-object/from16 v26, v20

    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 59
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 60
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 61
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move/from16 v7, v24

    int-to-float v7, v7

    move/from16 v8, v25

    int-to-float v8, v8

    iget v13, v0, Linfo/flowersoft/theotown/ui/IconItem;->icon:I

    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    add-int/lit8 v3, v3, -0x4

    int-to-float v3, v3

    .line 63
    iget-object v6, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    invoke-virtual {v14, v6}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v6

    div-float/2addr v3, v6

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move/from16 v12, v23

    int-to-float v6, v12

    .line 64
    iget-object v7, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    invoke-virtual {v14, v7}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v7

    mul-float/2addr v7, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int v11, v1, v6

    mul-int/lit8 v1, v4, 0x2

    .line 65
    div-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v2

    add-int/lit8 v12, v1, 0x5

    .line 66
    invoke-virtual {v5, v3, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move-object/from16 v2, v26

    .line 67
    invoke-virtual {v5, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v6, 0x64

    .line 68
    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 69
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    add-int/lit8 v2, v11, 0x1

    int-to-float v4, v2

    add-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v5

    move v5, v1

    move-object v1, v2

    move-object v2, v14

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v5, v1

    .line 70
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/IconItem;->textColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 71
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 72
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float v4, v11

    int-to-float v1, v12

    move-object/from16 v33, v5

    move v5, v1

    move-object/from16 v1, v33

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v5, v1

    .line 73
    invoke-virtual {v5, v10, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void

    :cond_fe
    move-object v5, v6

    move v6, v7

    move v10, v8

    .line 75
    iget-object v7, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    invoke-virtual {v14, v7}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v16

    .line 77
    iget-boolean v7, v0, Linfo/flowersoft/theotown/ui/IconItem;->rtl:Z

    if-eqz v7, :cond_1a1

    .line 78
    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 79
    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move/from16 v21, v6

    .line 80
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/2addr v1, v3

    div-int/lit8 v8, v4, 0x2

    sub-int v9, v1, v8

    add-int/lit8 v11, v9, 0x1

    int-to-float v11, v11

    add-int/2addr v8, v2

    add-int/lit8 v12, v8, 0x1

    int-to-float v12, v12

    move v13, v8

    move v8, v12

    const/high16 v12, 0x3f000000    # 0.5f

    move/from16 v17, v13

    iget v13, v0, Linfo/flowersoft/theotown/ui/IconItem;->icon:I

    move/from16 v18, v9

    const/4 v9, 0x0

    move/from16 v22, v10

    const/4 v10, 0x0

    move-object/from16 v19, v7

    move v7, v11

    const/high16 v11, 0x3f000000    # 0.5f

    move/from16 v29, v17

    move/from16 v28, v18

    move-object/from16 v27, v19

    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 81
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 82
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 83
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move/from16 v7, v28

    int-to-float v7, v7

    move/from16 v13, v29

    int-to-float v8, v13

    iget v13, v0, Linfo/flowersoft/theotown/ui/IconItem;->icon:I

    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    div-float v3, v3, v16

    const/high16 v12, 0x3f800000    # 1.0f

    .line 85
    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v5, v3, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move-object/from16 v3, v27

    .line 86
    invoke-virtual {v5, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v6, 0x64

    .line 87
    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move-object v6, v5

    .line 88
    iget-object v5, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    sub-int/2addr v1, v4

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    add-int/lit8 v7, v2, 0x1

    int-to-float v7, v7

    int-to-float v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v4, v6

    move v6, v3

    move-object v3, v4

    move-object v4, v14

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v5, v3

    .line 89
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/IconItem;->textColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 90
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 91
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float v1, v1

    move-object v6, v5

    int-to-float v5, v2

    const/high16 v8, 0x3f800000    # 1.0f

    move v7, v9

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v2, v4

    move v4, v1

    move-object v1, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v5, v1

    .line 92
    invoke-virtual {v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void

    :cond_1a1
    move v12, v10

    .line 94
    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 95
    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move/from16 v21, v6

    .line 96
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    div-int/lit8 v8, v4, 0x2

    add-int v9, v1, v8

    add-int/lit8 v10, v9, 0x1

    int-to-float v10, v10

    add-int/2addr v8, v2

    add-int/lit8 v11, v8, 0x1

    int-to-float v11, v11

    move/from16 v22, v12

    const/high16 v12, 0x3f000000    # 0.5f

    iget v13, v0, Linfo/flowersoft/theotown/ui/IconItem;->icon:I

    move/from16 v17, v9

    const/4 v9, 0x0

    move-object/from16 v18, v7

    move v7, v10

    const/4 v10, 0x0

    move/from16 v19, v8

    move v8, v11

    const/high16 v11, 0x3f000000    # 0.5f

    move/from16 v31, v17

    move-object/from16 v30, v18

    move/from16 v32, v19

    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 97
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 98
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 99
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move/from16 v7, v31

    int-to-float v7, v7

    move/from16 v8, v32

    int-to-float v8, v8

    iget v13, v0, Linfo/flowersoft/theotown/ui/IconItem;->icon:I

    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    div-float v3, v3, v16

    const/high16 v12, 0x3f800000    # 1.0f

    .line 101
    invoke-static {v3, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v5, v3, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move-object/from16 v3, v30

    .line 102
    invoke-virtual {v5, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v6, 0x64

    .line 103
    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move-object v6, v5

    .line 104
    iget-object v5, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    add-int/2addr v1, v4

    add-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    add-int/lit8 v7, v2, 0x1

    int-to-float v7, v7

    int-to-float v9, v4

    const/4 v8, 0x0

    move-object v4, v6

    move v6, v3

    move-object v3, v4

    move-object v4, v14

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v5, v3

    .line 105
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/IconItem;->textColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 106
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 107
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v2, v2

    move v7, v9

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    move-object/from16 v33, v4

    move v4, v1

    move-object v1, v5

    move v5, v2

    move-object/from16 v2, v33

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v5, v1

    .line 108
    invoke-virtual {v5, v12, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x24

    return p1
.end method

.method public onClick(II)V
    .registers 3

    .line 120
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 121
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/IconItem;->onClick:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
