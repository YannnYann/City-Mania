###### Class info.flowersoft.theotown.ui.FilledRect (info.flowersoft.theotown.ui.FilledRect)
.class public Linfo/flowersoft/theotown/ui/FilledRect;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "FilledRect.java"


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 6

    .line 16
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, p0

    .line 18
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    iput-object p2, p1, Linfo/flowersoft/theotown/ui/FilledRect;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 31
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/FilledRect;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 32
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v3, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/2addr v0, p2

    int-to-float v4, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    int-to-float v6, v0

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 33
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 35
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 22
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FilledRect;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public setColor(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 2

    .line 26
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/FilledRect;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method
