###### Class info.flowersoft.theotown.ui.DebugLayer (info.flowersoft.theotown.ui.DebugLayer)
.class public Linfo/flowersoft/theotown/ui/DebugLayer;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "DebugLayer.java"


# instance fields
.field public infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/DebugInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DebugLayer;->infos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addInfo(Linfo/flowersoft/theotown/ui/DebugInfo;)V
    .registers 3

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DebugLayer;->infos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public draw(II)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    int-to-float v2, v1

    .line 38
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 39
    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 45
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/DebugLayer;->infos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v5, v2

    :goto_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v6, :cond_96

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/ui/DebugInfo;

    .line 46
    invoke-virtual {v6}, Linfo/flowersoft/theotown/ui/DebugInfo;->getText()Ljava/lang/String;

    move-result-object v7

    .line 48
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 49
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :goto_30
    move-object v13, v8

    goto :goto_34

    :cond_32
    const/4 v8, 0x0

    goto :goto_30

    .line 51
    :goto_34
    invoke-virtual {v6}, Linfo/flowersoft/theotown/ui/DebugInfo;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v14

    const/4 v6, 0x0

    move v15, v5

    :goto_3a
    move v5, v6

    if-nez v13, :cond_3f

    const/4 v6, 0x1

    goto :goto_40

    .line 53
    :cond_3f
    array-length v6, v13

    :goto_40
    if-ge v5, v6, :cond_8f

    if-eqz v13, :cond_47

    .line 54
    aget-object v6, v13, v5

    goto :goto_48

    :cond_47
    move-object v6, v7

    .line 56
    :goto_48
    invoke-virtual {v3, v6}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v7

    mul-float v8, v12, v7

    .line 57
    invoke-virtual {v3, v6}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v7

    mul-float v9, v12, v7

    .line 58
    iget v7, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v7, v7

    sub-float/2addr v7, v8

    .line 60
    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 61
    invoke-virtual {v4, v12, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v10, 0xa0

    .line 62
    invoke-virtual {v4, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v10, v5

    .line 63
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move/from16 v12, p1

    int-to-float v0, v12

    add-float/2addr v7, v0

    move-object v0, v6

    move v6, v7

    add-float v7, v15, v2

    move/from16 v16, v10

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 64
    invoke-virtual {v4, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 65
    invoke-virtual {v4, v5, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v8, 0xff

    .line 66
    invoke-virtual {v4, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 67
    invoke-virtual {v4, v3, v0, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    add-float/2addr v15, v9

    add-int/lit8 v6, v16, 0x1

    move-object v7, v0

    move v12, v5

    move-object/from16 v0, p0

    goto :goto_3a

    :cond_8f
    move/from16 v12, p1

    move-object/from16 v0, p0

    move v5, v15

    goto/16 :goto_12

    :cond_96
    move v5, v12

    move/from16 v12, p1

    .line 73
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 74
    invoke-virtual {v4, v5, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 76
    invoke-super/range {p0 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->draw(II)V

    return-void
.end method
