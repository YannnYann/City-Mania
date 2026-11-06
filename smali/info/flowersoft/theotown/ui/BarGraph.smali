###### Class info.flowersoft.theotown.ui.BarGraph (info.flowersoft.theotown.ui.BarGraph)
.class public Linfo/flowersoft/theotown/ui/BarGraph;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "BarGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/BarGraph$Bar;,
        Linfo/flowersoft/theotown/ui/BarGraph$Headline;
    }
.end annotation


# instance fields
.field public final bars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/BarGraph$Bar;",
            ">;"
        }
    .end annotation
.end field

.field public final headlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/BarGraph$Headline;",
            ">;"
        }
    .end annotation
.end field

.field public maxValue:F

.field public minValue:F


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 6

    .line 28
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, p0

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Linfo/flowersoft/theotown/ui/BarGraph;->bars:Ljava/util/List;

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Linfo/flowersoft/theotown/ui/BarGraph;->headlines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addBar([ILjava/lang/String;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;)V
    .registers 14

    .line 173
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BarGraph;->bars:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/ui/BarGraph$Bar;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;-><init>([ILjava/lang/String;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/ui/BarGraph$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeadline(Ljava/lang/String;IILio/blueflower/stapel2d/drawing/Color;)V
    .registers 7

    .line 177
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BarGraph;->headlines:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/ui/BarGraph$Headline;

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    invoke-direct {v1, p1, p2, p3, p4}, Linfo/flowersoft/theotown/ui/BarGraph$Headline;-><init>(Ljava/lang/String;IILio/blueflower/stapel2d/drawing/Color;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .registers 2

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BarGraph;->bars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BarGraph;->headlines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public draw(II)V
    .registers 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 38
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v3, v3, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    invoke-virtual {v0, v1, v2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 39
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 42
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v13, v3, 0xa

    .line 43
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v5

    add-int v14, v2, v5

    add-int/lit8 v15, v14, 0x2

    .line 44
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v16

    add-int/lit8 v17, v16, -0xc

    .line 45
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    add-int/lit8 v11, v5, -0x4

    const/16 v18, 0x0

    move/from16 v12, v18

    .line 62
    :goto_30
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/BarGraph;->bars:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v12, v5, :cond_197

    .line 63
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/BarGraph;->bars:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/ui/BarGraph$Bar;

    .line 65
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/BarGraph;->bars:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    div-int v7, v17, v7

    mul-int/2addr v7, v12

    .line 67
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/BarGraph;->bars:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v12, v8, :cond_5c

    iget-object v8, v0, Linfo/flowersoft/theotown/ui/BarGraph;->bars:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    div-int v8, v17, v8

    goto :goto_5e

    :cond_5c
    sub-int v8, v17, v7

    :goto_5e
    add-int v9, v13, v7

    .line 69
    invoke-static {v5, v9}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$002(Linfo/flowersoft/theotown/ui/BarGraph$Bar;I)I

    .line 70
    invoke-static {v5, v15}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$102(Linfo/flowersoft/theotown/ui/BarGraph$Bar;I)I

    .line 71
    invoke-static {v5, v8}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$202(Linfo/flowersoft/theotown/ui/BarGraph$Bar;I)I

    .line 72
    invoke-static {v5, v11}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$302(Linfo/flowersoft/theotown/ui/BarGraph$Bar;I)I

    add-int/lit8 v19, v7, 0x2

    add-int/lit8 v20, v8, -0x4

    .line 80
    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->getBgColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 81
    iget-object v7, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v7, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v9, v9

    move-object v10, v5

    move-object v5, v7

    int-to-float v7, v15

    move v6, v8

    int-to-float v8, v6

    move/from16 v22, v6

    move v6, v9

    int-to-float v9, v11

    move-object/from16 v23, v10

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move/from16 v24, v11

    const/16 v11, 0xff

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 84
    iget v5, v0, Linfo/flowersoft/theotown/ui/BarGraph;->maxValue:F

    invoke-virtual/range {v23 .. v23}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->getValue()F

    move-result v6

    const/4 v10, 0x0

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v0, Linfo/flowersoft/theotown/ui/BarGraph;->maxValue:F

    iget v8, v0, Linfo/flowersoft/theotown/ui/BarGraph;->minValue:F

    sub-float/2addr v6, v8

    div-float/2addr v5, v6

    mul-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 85
    iget v5, v0, Linfo/flowersoft/theotown/ui/BarGraph;->maxValue:F

    invoke-virtual/range {v23 .. v23}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->getValue()F

    move-result v6

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v0, Linfo/flowersoft/theotown/ui/BarGraph;->maxValue:F

    iget v7, v0, Linfo/flowersoft/theotown/ui/BarGraph;->minValue:F

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    mul-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v25

    add-int v5, v13, v19

    add-int v6, v15, v21

    sub-int v8, v25, v21

    .line 86
    invoke-virtual/range {v23 .. v23}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v9

    move/from16 v7, v20

    invoke-static/range {v4 .. v9}, Linfo/flowersoft/theotown/ui/RCIIcon;->drawBar(Lio/blueflower/stapel2d/drawing/Engine;IIIILio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v6, v6, -0x2

    .line 90
    invoke-virtual/range {v23 .. v23}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->getValue()F

    move-result v8

    cmpg-float v8, v8, v10

    if-gez v8, :cond_df

    add-int v6, v15, v25

    add-int/lit8 v6, v6, 0x1c

    .line 93
    :cond_df
    invoke-virtual {v4, v11, v11, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 94
    invoke-virtual/range {v23 .. v23}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->getIcons()[I

    move-result-object v11

    move/from16 v8, v18

    .line 95
    :goto_e8
    array-length v9, v11

    if-ge v8, v9, :cond_11d

    move v9, v10

    .line 96
    aget v10, v11, v8

    move/from16 v19, v5

    .line 97
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v20, v22, -0x1e

    div-int/lit8 v20, v20, 0x2

    add-int v9, v19, v20

    int-to-float v9, v9

    move/from16 v20, v7

    int-to-float v7, v6

    move/from16 v27, v8

    const/high16 v8, 0x41d00000    # 26.0f

    move/from16 v28, v6

    move v6, v9

    const/high16 v9, 0x41d00000    # 26.0f

    move-object/from16 v29, v11

    move/from16 v1, v19

    move/from16 v11, v20

    const/16 v26, 0x0

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    add-int/lit8 v8, v27, 0x1

    move v5, v1

    move v7, v11

    move/from16 v10, v26

    move/from16 v6, v28

    move-object/from16 v11, v29

    move/from16 v1, p1

    goto :goto_e8

    :cond_11d
    move v1, v5

    move v11, v7

    move/from16 v26, v10

    .line 106
    invoke-virtual/range {v23 .. v23}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->getName()[Ljava/lang/String;

    move-result-object v5

    .line 107
    iget-object v6, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v6, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 108
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 110
    invoke-virtual/range {v23 .. v23}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->getValue()F

    move-result v7

    cmpg-float v7, v7, v26

    if-gez v7, :cond_144

    .line 111
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    mul-int v7, v7, v19

    sub-int v25, v21, v7

    const v7, 0x3f8ccccd    # 1.1f

    goto :goto_147

    :cond_144
    const v7, -0x42333333    # -0.1f

    .line 117
    :goto_147
    iget-object v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v8, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move/from16 v8, v18

    .line 118
    :goto_150
    array-length v9, v5

    if-ge v8, v9, :cond_18c

    move-object v9, v5

    move-object v5, v6

    .line 119
    aget-object v6, v9, v8

    move v10, v12

    move v12, v7

    int-to-float v7, v1

    add-int v20, v15, v25

    mul-int v21, v8, v19

    move/from16 v22, v1

    add-int v1, v20, v21

    int-to-float v1, v1

    move-object/from16 v20, v9

    int-to-float v9, v11

    move/from16 v21, v10

    const/4 v10, 0x0

    move/from16 v23, v11

    const/high16 v11, 0x3f000000    # 0.5f

    move/from16 v30, v8

    move v8, v1

    move/from16 v1, v24

    move/from16 v24, v30

    move/from16 v30, v23

    move-object/from16 v23, v20

    move/from16 v20, v30

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    add-int/lit8 v8, v24, 0x1

    move/from16 v24, v1

    move-object v6, v5

    move v7, v12

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v1, v22

    move-object/from16 v5, v23

    goto :goto_150

    :cond_18c
    move/from16 v21, v12

    move/from16 v1, v24

    add-int/lit8 v12, v21, 0x1

    move v11, v1

    move/from16 v1, p1

    goto/16 :goto_30

    :cond_197
    move v1, v11

    const/16 v11, 0xff

    move/from16 v5, v18

    .line 124
    :goto_19c
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/BarGraph;->headlines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_222

    .line 125
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/BarGraph;->headlines:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/ui/BarGraph$Headline;

    .line 126
    invoke-static {v6}, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->access$400(Linfo/flowersoft/theotown/ui/BarGraph$Headline;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 127
    invoke-static {v6}, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->access$400(Linfo/flowersoft/theotown/ui/BarGraph$Headline;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result v7

    invoke-virtual {v4, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 128
    iget-object v7, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v7, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 129
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/BarGraph;->bars:Ljava/util/List;

    invoke-static {v6}, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->access$500(Linfo/flowersoft/theotown/ui/BarGraph$Headline;)I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/ui/BarGraph$Bar;

    .line 130
    iget-object v9, v0, Linfo/flowersoft/theotown/ui/BarGraph;->bars:Ljava/util/List;

    invoke-static {v6}, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->access$600(Linfo/flowersoft/theotown/ui/BarGraph$Headline;)I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/ui/BarGraph$Bar;

    .line 133
    invoke-static {v6}, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->access$700(Linfo/flowersoft/theotown/ui/BarGraph$Headline;)Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-static {v8}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$000(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I

    move-result v10

    int-to-float v10, v10

    .line 135
    invoke-static {v8}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$100(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I

    move-result v12

    int-to-float v12, v12

    .line 136
    invoke-static {v9}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$000(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I

    move-result v17

    invoke-static {v8}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$000(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I

    move-result v18

    sub-int v17, v17, v18

    invoke-static {v9}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$200(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I

    move-result v18

    add-int v11, v17, v18

    int-to-float v11, v11

    .line 137
    invoke-static {v9}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$100(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I

    move-result v17

    invoke-static {v8}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$100(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I

    move-result v8

    sub-int v17, v17, v8

    invoke-static {v9}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->access$300(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I

    move-result v8

    add-int v8, v17, v8

    int-to-float v8, v8

    move v9, v11

    const/high16 v11, 0x3f000000    # 0.5f

    move/from16 v18, v5

    move-object v5, v7

    move v7, v10

    move v10, v8

    move v8, v12

    const v12, 0x3c23d70a    # 0.01f

    const/16 v2, 0xff

    .line 131
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    add-int/lit8 v5, v18, 0x1

    move v11, v2

    move/from16 v2, p2

    goto/16 :goto_19c

    :cond_222
    move v2, v11

    .line 142
    iget-object v5, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 143
    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    int-to-float v5, v15

    .line 144
    iget v6, v0, Linfo/flowersoft/theotown/ui/BarGraph;->maxValue:F

    iget v7, v0, Linfo/flowersoft/theotown/ui/BarGraph;->minValue:F

    sub-float v7, v6, v7

    div-float/2addr v6, v7

    int-to-float v1, v1

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v6, v1

    .line 145
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v1, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    add-int/lit8 v3, v16, -0x4

    int-to-float v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move v7, v6

    move v6, v1

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move v6, v7

    int-to-float v1, v13

    const/high16 v3, 0x3f000000    # 0.5f

    const/16 v5, 0x8

    int-to-float v5, v5

    mul-float/2addr v3, v5

    sub-float v5, v1, v3

    add-int/lit8 v14, v14, 0xa

    int-to-float v8, v14

    const/16 v1, 0x50

    .line 152
    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move-object v10, v4

    .line 153
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    move v7, v5

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move v6, v8

    move-object v4, v10

    .line 157
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    sub-float v7, v5, v3

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v3

    add-float/2addr v8, v6

    move-object v4, v1

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object v4, v10

    .line 161
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    add-float v7, v5, v3

    move-object v4, v1

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object v4, v10

    .line 166
    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 167
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 169
    invoke-virtual/range {p0 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public setView(FF)V
    .registers 3

    .line 32
    iput p1, p0, Linfo/flowersoft/theotown/ui/BarGraph;->minValue:F

    .line 33
    iput p2, p0, Linfo/flowersoft/theotown/ui/BarGraph;->maxValue:F

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BarGraph.AnonymousClass1 (info.flowersoft.theotown.ui.BarGraph$1)
.class public synthetic Linfo/flowersoft/theotown/ui/BarGraph$1;
.super Ljava/lang/Object;
.source "BarGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/BarGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.ui.BarGraph.Bar (info.flowersoft.theotown.ui.BarGraph$Bar)
.class final Linfo/flowersoft/theotown/ui/BarGraph$Bar;
.super Ljava/lang/Object;
.source "BarGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/BarGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bar"
.end annotation


# instance fields
.field public final bgColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final color:Lio/blueflower/stapel2d/drawing/Color;

.field public drawHeight:I

.field public drawWidth:I

.field public drawX:I

.field public drawY:I

.field public final icons:[I

.field public final name:[Ljava/lang/String;

.field public final value:F


# direct methods
.method public constructor <init>([ILjava/lang/String;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 6

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->icons:[I

    .line 198
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->name:[Ljava/lang/String;

    .line 199
    iput p3, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->value:F

    .line 200
    iput-object p4, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 201
    iput-object p5, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->bgColor:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public synthetic constructor <init>([ILjava/lang/String;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/ui/BarGraph$1;)V
    .registers 7

    .line 185
    invoke-direct/range {p0 .. p5}, Linfo/flowersoft/theotown/ui/BarGraph$Bar;-><init>([ILjava/lang/String;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I
    .registers 1

    .line 185
    iget p0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->drawX:I

    return p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/ui/BarGraph$Bar;I)I
    .registers 2

    .line 185
    iput p1, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->drawX:I

    return p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I
    .registers 1

    .line 185
    iget p0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->drawY:I

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/ui/BarGraph$Bar;I)I
    .registers 2

    .line 185
    iput p1, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->drawY:I

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I
    .registers 1

    .line 185
    iget p0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->drawWidth:I

    return p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/ui/BarGraph$Bar;I)I
    .registers 2

    .line 185
    iput p1, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->drawWidth:I

    return p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/ui/BarGraph$Bar;)I
    .registers 1

    .line 185
    iget p0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->drawHeight:I

    return p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/ui/BarGraph$Bar;I)I
    .registers 2

    .line 185
    iput p1, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->drawHeight:I

    return p1
.end method


# virtual methods
.method public getBgColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 221
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->bgColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 217
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getIcons()[I
    .registers 2

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->icons:[I

    return-object v0
.end method

.method public getName()[Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->name:[Ljava/lang/String;

    return-object v0
.end method

.method public getValue()F
    .registers 2

    .line 213
    iget v0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Bar;->value:F

    return v0
.end method

###### Class info.flowersoft.theotown.ui.BarGraph.Headline (info.flowersoft.theotown.ui.BarGraph$Headline)
.class final Linfo/flowersoft/theotown/ui/BarGraph$Headline;
.super Ljava/lang/Object;
.source "BarGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/BarGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Headline"
.end annotation


# instance fields
.field public final color:Lio/blueflower/stapel2d/drawing/Color;

.field public final endBar:I

.field public final name:Ljava/lang/String;

.field public final startBar:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILio/blueflower/stapel2d/drawing/Color;)V
    .registers 5

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->name:Ljava/lang/String;

    .line 233
    iput p2, p0, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->startBar:I

    .line 234
    iput p3, p0, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->endBar:I

    .line 235
    iput-object p4, p0, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/ui/BarGraph$Headline;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 1

    .line 225
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/ui/BarGraph$Headline;)I
    .registers 1

    .line 225
    iget p0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->startBar:I

    return p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/ui/BarGraph$Headline;)I
    .registers 1

    .line 225
    iget p0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->endBar:I

    return p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/ui/BarGraph$Headline;)Ljava/lang/String;
    .registers 1

    .line 225
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/BarGraph$Headline;->name:Ljava/lang/String;

    return-object p0
.end method
