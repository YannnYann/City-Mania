###### Class info.flowersoft.theotown.ui.FillingListItem (info.flowersoft.theotown.ui.FillingListItem)
.class public Linfo/flowersoft/theotown/ui/FillingListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "FillingListItem.java"


# instance fields
.field public final icon:I

.field public final parent:Lio/blueflower/stapel2d/gui/Gadget;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 4

    .line 16
    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 17
    iput p1, p0, Linfo/flowersoft/theotown/ui/FillingListItem;->icon:I

    .line 18
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/FillingListItem;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 25

    .line 23
    invoke-super/range {p0 .. p7}, Lio/blueflower/stapel2d/gui/ListItem;->draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 24
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 26
    iget-object v8, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 27
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v10, v3

    int-to-float v11, v4

    int-to-float v12, v5

    int-to-float v13, v6

    const v15, 0x3ee66666    # 0.45f

    iget v1, v0, Linfo/flowersoft/theotown/ui/FillingListItem;->icon:I

    const/high16 v14, 0x3f000000    # 0.5f

    move/from16 v16, v1

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 28
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 29
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    move-object v1, v8

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3f0ccccd    # 0.55f

    move v4, v10

    move v5, v11

    move v6, v12

    move v7, v13

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v8, v1

    .line 30
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 35
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/FillingListItem;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p1

    return p1
.end method
