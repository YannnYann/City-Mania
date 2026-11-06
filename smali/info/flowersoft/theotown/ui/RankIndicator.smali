###### Class info.flowersoft.theotown.ui.RankIndicator (info.flowersoft.theotown.ui.RankIndicator)
.class public Linfo/flowersoft/theotown/ui/RankIndicator;
.super Lio/blueflower/stapel2d/gui/Button;
.source "RankIndicator.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final draftLocalizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

.field public localizedRank:Linfo/flowersoft/theotown/draft/RankDraft;

.field public localizedRankTitle:Ljava/lang/String;

.field public final requirement:Linfo/flowersoft/theotown/components/DefaultRequirement;


# direct methods
.method public constructor <init>(IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;)V
    .registers 12

    .line 34
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x3c

    :goto_c
    move v4, v0

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :goto_10
    const/16 v5, 0x28

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 36
    iput-object p4, v1, Linfo/flowersoft/theotown/ui/RankIndicator;->city:Linfo/flowersoft/theotown/city/City;

    const/16 p1, 0xb

    .line 37
    invoke-virtual {p4, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultRequirement;

    iput-object p1, v1, Linfo/flowersoft/theotown/ui/RankIndicator;->requirement:Linfo/flowersoft/theotown/components/DefaultRequirement;

    .line 39
    new-instance p1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {p1, p4}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object p1, v1, Linfo/flowersoft/theotown/ui/RankIndicator;->draftLocalizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    return-void
.end method

.method public static drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFLio/blueflower/stapel2d/drawing/Engine;)V
    .registers 21

    move-object/from16 v1, p8

    .line 136
    invoke-virtual/range {p0 .. p1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v2

    move/from16 v3, p4

    int-to-float v6, v3

    cmpl-float v3, v2, v6

    if-lez v3, :cond_12

    div-float v2, v6, v2

    .line 139
    invoke-virtual {v1, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 142
    :cond_12
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v2, 0x96

    .line 143
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    add-int/lit8 v2, p2, 0x1

    int-to-float v4, v2

    int-to-float v5, p3

    move/from16 v2, p5

    int-to-float v7, v2

    move-object v2, p0

    move-object v3, p1

    move/from16 v8, p6

    move/from16 v9, p7

    .line 144
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v10, v5

    int-to-float v3, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v5, v1

    move-object/from16 v1, p8

    move v4, v3

    move-object v3, p1

    .line 145
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v11, v4

    add-int/lit8 p2, p2, -0x1

    int-to-float v4, p2

    move v5, v10

    .line 146
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    add-int/lit8 p2, p3, -0x1

    int-to-float v4, p2

    move-object v1, p0

    move-object v2, p1

    move/from16 v8, p7

    move-object/from16 v0, p8

    move v5, v6

    move v6, v7

    move v3, v11

    move/from16 v7, p6

    .line 147
    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v1, v0

    move v7, v6

    move v6, v5

    .line 149
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p2, 0xff

    .line 150
    invoke-virtual {v1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v6, v7

    move v4, v10

    move-object v1, p0

    move/from16 v7, p6

    .line 151
    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v1, v0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 153
    invoke-virtual {v1, p0, p0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 44
    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v6, v1, v3

    .line 45
    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v7, v2, v3

    .line 46
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v14, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 49
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/RankIndicator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getCurrentXp()I

    move-result v3

    .line 51
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/RankIndicator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v4

    .line 52
    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    iget-object v8, v0, Linfo/flowersoft/theotown/ui/RankIndicator;->city:Linfo/flowersoft/theotown/city/City;

    .line 53
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v8

    iget v8, v8, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    sget-object v10, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 52
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/RankDraft;

    .line 54
    iget-object v8, v4, Linfo/flowersoft/theotown/draft/RankDraft;->xp:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v18

    .line 55
    iget-object v8, v5, Linfo/flowersoft/theotown/draft/RankDraft;->xp:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v19

    if-eq v4, v5, :cond_4b

    :goto_49
    move v5, v9

    goto :goto_4d

    :cond_4b
    const/4 v9, 0x0

    goto :goto_49

    .line 58
    :goto_4d
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/RankIndicator;->localizedRank:Linfo/flowersoft/theotown/draft/RankDraft;

    if-eq v4, v8, :cond_5b

    .line 59
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/RankIndicator;->draftLocalizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-virtual {v8, v4}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Linfo/flowersoft/theotown/ui/RankIndicator;->localizedRankTitle:Ljava/lang/String;

    .line 60
    iput-object v4, v0, Linfo/flowersoft/theotown/ui/RankIndicator;->localizedRank:Linfo/flowersoft/theotown/draft/RankDraft;

    .line 63
    :cond_5b
    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v8, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    const/16 v9, 0x32

    .line 65
    invoke-virtual {v14, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 66
    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v14, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move-object v11, v8

    .line 67
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    iget v12, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    const/4 v13, 0x2

    div-int/2addr v12, v13

    add-int/2addr v12, v6

    int-to-float v12, v12

    iget v15, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    div-int/2addr v15, v13

    add-int/2addr v15, v7

    int-to-float v15, v15

    move-object/from16 v16, v10

    move v10, v15

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v17, v16

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v20, v11

    const/4 v11, 0x0

    move/from16 v21, v9

    move v9, v12

    const/high16 v12, 0x41600000    # 14.0f

    move/from16 v22, v13

    const/4 v13, 0x0

    move-object/from16 v23, v17

    move-object/from16 v17, v14

    const v14, 0x40c90fdb

    move/from16 v24, v21

    move/from16 v21, v3

    move/from16 v3, v24

    invoke-virtual/range {v8 .. v17}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object/from16 v14, v17

    const/16 v8, 0x96

    .line 73
    invoke-virtual {v14, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v22, 0x3f000000    # 0.5f

    if-eqz v5, :cond_144

    sub-int v5, v21, v18

    int-to-float v5, v5

    sub-int v8, v19, v18

    int-to-float v8, v8

    div-float/2addr v5, v8

    const/4 v8, 0x0

    .line 77
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 80
    iget v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v9, v9

    mul-float v12, v9, v22

    const/high16 v9, 0x40800000    # 4.0f

    sub-float v11, v12, v9

    move v9, v8

    .line 83
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    int-to-float v10, v6

    iget v13, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v13, v13

    mul-float v13, v13, v22

    add-float/2addr v13, v10

    int-to-float v15, v7

    iget v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v9, v9

    mul-float v9, v9, v22

    add-float/2addr v9, v15

    move/from16 v17, v15

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v19, v10

    move v10, v9

    move v9, v13

    const v13, 0x4027b3e1

    move/from16 v21, v17

    move-object/from16 v17, v14

    const v14, 0x40d9bdd9

    invoke-virtual/range {v8 .. v17}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object/from16 v14, v17

    .line 90
    invoke-virtual {v14, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 91
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v14, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 92
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v3, v3

    mul-float v3, v3, v22

    add-float v9, v19, v3

    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v3, v3

    mul-float v3, v3, v22

    add-float v10, v21, v3

    add-float v11, v11, v18

    sub-float v12, v12, v18

    const v13, 0x402ae714

    const v14, 0x40d8243f

    invoke-virtual/range {v8 .. v17}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object/from16 v14, v17

    const/16 v3, 0xc8

    .line 99
    invoke-virtual {v14, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 100
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorRank:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v14, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 101
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v3, v3

    mul-float v3, v3, v22

    add-float v9, v19, v3

    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v3, v3

    mul-float v3, v3, v22

    add-float v10, v21, v3

    const v3, 0x4082b0b5

    mul-float/2addr v5, v3

    add-float v3, v13, v5

    move v14, v3

    invoke-virtual/range {v8 .. v17}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object/from16 v14, v17

    .line 109
    :cond_144
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v14, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v3, 0xff

    .line 110
    invoke-virtual {v14, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 112
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/RankIndicator;->localizedRankTitle:Ljava/lang/String;

    iget v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v9, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v3, v4

    move-object v12, v14

    move-object/from16 v4, v20

    invoke-static/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/RankIndicator;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object/from16 v17, v12

    .line 113
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    iget v3, v3, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    .line 114
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    int-to-float v3, v6

    iget v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v4, v4

    mul-float v4, v4, v22

    add-float v10, v3, v4

    int-to-float v3, v7

    iget v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v4, v4

    mul-float v4, v4, v22

    add-float v11, v3, v4

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v12, v3, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v16, 0x3f000000    # 0.5f

    move-object/from16 v14, v17

    move-object/from16 v13, v23

    .line 113
    invoke-virtual/range {v8 .. v16}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    .line 120
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/RankIndicator;->requirement:Linfo/flowersoft/theotown/components/DefaultRequirement;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultRequirement;->hasNewRank()Z

    move-result v3

    if-eqz v3, :cond_1a5

    iget-object v3, v0, Linfo/flowersoft/theotown/ui/RankIndicator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v3

    if-nez v3, :cond_1a5

    .line 121
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    invoke-static {v14, v6, v7, v3, v4}, Linfo/flowersoft/theotown/tutorial/TutorialButtonFilter;->drawMarked(Lio/blueflower/stapel2d/drawing/Engine;IIII)V

    .line 124
    :cond_1a5
    sget v3, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_RANK:I

    invoke-static {v3}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isMarked(I)Z

    move-result v3

    if-eqz v3, :cond_1b5

    .line 125
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v2, v0, v4}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V

    :cond_1b5
    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 131
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_RANK:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
