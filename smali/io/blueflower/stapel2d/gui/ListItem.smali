###### Class io.blueflower.stapel2d.gui.ListItem (io.blueflower.stapel2d.gui.ListItem)
.class public Lio/blueflower/stapel2d/gui/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"


# instance fields
.field public text:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/ListItem;->visible:Z

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 8

    .line 23
    iget-object p1, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object p2, p7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 24
    iget-object p1, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object p2, p7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p5, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {p1, p2, p5, p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 25
    iget-object p1, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 18

    move-object/from16 v7, p7

    .line 29
    iget-object v8, v7, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 17

    .line 34
    iget-object v0, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_8

    move-object p2, p8

    goto :goto_a

    :cond_8
    move-object/from16 p2, p9

    :goto_a
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    if-eqz p1, :cond_14

    .line 35
    iget-object p2, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 36
    :cond_14
    iget-object v0, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p7, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    if-eqz p1, :cond_22

    iget p1, p7, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    :goto_20
    move v6, p1

    goto :goto_25

    :cond_22
    iget p1, p7, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    goto :goto_20

    :goto_25
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 37
    iget-object p1, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V
    .registers 24

    .line 57
    iget-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move/from16 v1, p4

    int-to-float v3, v1

    move/from16 v1, p5

    int-to-float v8, v1

    move/from16 v1, p6

    int-to-float v5, v1

    move/from16 v1, p7

    int-to-float v6, v1

    move-object v1, p2

    move-object/from16 v2, p3

    move/from16 v7, p8

    move v4, v8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v8, v4

    if-eqz p10, :cond_2f

    .line 58
    iget-object v4, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const p1, 0x3e4ccccd    # 0.2f

    add-float v7, v3, p1

    move/from16 v11, p8

    move/from16 v12, p9

    move v9, v5

    move v10, v6

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    :cond_2f
    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x14

    return p1
.end method

.method public isVisible()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/ListItem;->visible:Z

    return v0
.end method

.method public onClick(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/ListItem;->visible:Z

    return-void
.end method
