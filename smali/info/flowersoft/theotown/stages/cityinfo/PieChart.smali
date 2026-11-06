###### Class info.flowersoft.theotown.stages.cityinfo.PieChart (info.flowersoft.theotown.stages.cityinfo.PieChart)
.class public Linfo/flowersoft/theotown/stages/cityinfo/PieChart;
.super Ljava/lang/Object;
.source "PieChart.java"


# instance fields
.field public final amounts:Lio/blueflower/stapel2d/util/IntList;

.field public final colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/drawing/Color;",
            ">;"
        }
    .end annotation
.end field

.field public final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final skin:Lio/blueflower/stapel2d/gui/Skin;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Skin;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->names:Ljava/util/List;

    .line 28
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->amounts:Lio/blueflower/stapel2d/util/IntList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->colors:Ljava/util/List;

    .line 32
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->title:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->skin:Lio/blueflower/stapel2d/gui/Skin;

    return-void
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Color;)V
    .registers 5

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->amounts:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 39
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->colors:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    int-to-float v2, v2

    move/from16 v3, p4

    int-to-float v4, v3

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v4, v11

    add-float/2addr v4, v2

    move/from16 v2, p3

    int-to-float v5, v2

    move/from16 v2, p5

    int-to-float v6, v2

    mul-float/2addr v6, v11

    add-float/2addr v6, v5

    const/high16 v7, 0x40a00000    # 5.0f

    add-float v10, v6, v7

    .line 45
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v11

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    const/high16 v6, 0x41200000    # 10.0f

    sub-float v12, v2, v6

    add-float v13, v12, v3

    mul-float v14, v12, v11

    .line 49
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->amounts:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->sum()I

    move-result v15

    .line 56
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 57
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->title:Ljava/lang/String;

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 60
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v2, 0x3c

    .line 61
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/4 v2, -0x1

    const/16 v16, 0x0

    move/from16 v3, v16

    move v5, v3

    move v6, v5

    :goto_59
    const/16 v7, 0x168

    const v17, 0x3c8efa35

    const/4 v8, 0x1

    if-ge v3, v7, :cond_ea

    mul-int v9, v15, v3

    .line 63
    div-int/2addr v9, v7

    move/from16 v18, v5

    move v5, v6

    :cond_67
    :goto_67
    if-lez v15, :cond_93

    if-lt v9, v5, :cond_93

    .line 64
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->amounts:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v6

    sub-int/2addr v6, v8

    if-ge v2, v6, :cond_93

    add-int/lit8 v2, v2, 0x1

    .line 66
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->amounts:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 67
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->colors:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 68
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->amounts:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    if-lez v6, :cond_67

    add-int/lit8 v18, v18, 0x1

    goto :goto_67

    :cond_93
    add-int/lit8 v6, v3, -0x5a

    int-to-float v6, v6

    mul-float v6, v6, v17

    add-int/lit8 v9, v3, 0x5

    add-int/lit8 v3, v3, -0x55

    int-to-float v3, v3

    mul-float v3, v3, v17

    .line 74
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    float-to-double v6, v6

    move/from16 p2, v11

    move/from16 p3, v12

    .line 77
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v8, v11

    mul-float v12, p3, v8

    add-float v8, v4, v12

    .line 78
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v12, p3, v6

    add-float/2addr v12, v10

    float-to-double v6, v3

    move-object/from16 p4, v1

    move v3, v2

    .line 79
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p3

    add-float/2addr v1, v4

    .line 80
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float v2, v2, p3

    add-float v7, v10, v2

    move v6, v1

    move v11, v3

    move v2, v4

    move v4, v8

    move v3, v10

    move-object/from16 v8, p1

    move-object/from16 v1, p4

    move v10, v5

    move v5, v12

    .line 74
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move/from16 v12, p3

    move v4, v2

    move-object v1, v8

    move v6, v10

    move v2, v11

    move/from16 v5, v18

    move/from16 v11, p2

    move v10, v3

    move v3, v9

    goto/16 :goto_59

    :cond_ea
    move/from16 v19, v10

    move/from16 p2, v11

    move/from16 p3, v12

    move v12, v4

    .line 85
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    move/from16 v2, v16

    :goto_fa
    if-ge v2, v7, :cond_178

    add-int/lit8 v3, v2, -0x5a

    int-to-float v3, v3

    mul-float v3, v3, v17

    add-int/lit8 v11, v2, 0x5

    add-int/lit8 v2, v2, -0x55

    int-to-float v2, v2

    mul-float v2, v2, v17

    .line 89
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    float-to-double v3, v3

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v6, v9

    mul-float v6, v6, p3

    add-float/2addr v6, v12

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, p3

    add-float v10, v19, v9

    float-to-double v7, v2

    move-object v9, v1

    .line 92
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p3

    add-float/2addr v1, v12

    move/from16 v18, v1

    .line 93
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p3

    add-float v1, v19, v1

    move/from16 v20, v1

    .line 94
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v13

    add-float/2addr v1, v12

    .line 95
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float/2addr v2, v13

    add-float v7, v19, v2

    move v8, v1

    .line 96
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v13

    add-float/2addr v1, v12

    .line 97
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v13

    add-float v2, v19, v2

    move/from16 p4, v8

    move v8, v1

    move-object v1, v9

    move v9, v2

    move v2, v6

    move/from16 v6, p4

    move v3, v10

    move/from16 v21, v11

    move/from16 p4, v12

    move/from16 v4, v18

    const/4 v12, 0x1

    const/16 v18, 0x168

    move-object/from16 v10, p1

    move v11, v5

    move/from16 v5, v20

    .line 89
    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawQuad(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object v1, v10

    move v5, v11

    move v8, v12

    move/from16 v7, v18

    move/from16 v2, v21

    move/from16 v12, p4

    goto :goto_fa

    :cond_178
    move v11, v5

    move/from16 p4, v12

    move v12, v8

    .line 102
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-le v11, v12, :cond_1dc

    move/from16 v10, v16

    move v11, v10

    .line 105
    :goto_186
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->amounts:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v10, v2, :cond_212

    .line 106
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->amounts:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v10}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v12

    if-lez v12, :cond_1d6

    int-to-float v2, v11

    int-to-float v3, v12

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    int-to-float v3, v15

    div-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    const/16 v3, -0x5a

    int-to-float v3, v3

    add-float/2addr v2, v3

    mul-float v2, v2, v17

    float-to-double v2, v2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v14

    add-float v4, p4, v4

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v14

    add-float v2, v19, v2

    .line 112
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->names:Ljava/util/List;

    .line 113
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    move v7, v4

    move v4, v2

    move-object v2, v3

    move v3, v7

    move-object/from16 v7, p1

    .line 112
    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawShadowedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    :cond_1d6
    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_186

    :cond_1dc
    move/from16 v1, v16

    .line 123
    :goto_1de
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->amounts:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_212

    .line 124
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->amounts:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    if-lez v2, :cond_20b

    .line 126
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/PieChart;->names:Ljava/util/List;

    .line 128
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v4, p4

    move/from16 v5, v19

    .line 126
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    return-void

    :cond_20b
    move/from16 v4, p4

    move/from16 v3, v19

    add-int/lit8 v1, v1, 0x1

    goto :goto_1de

    :cond_212
    return-void
.end method
