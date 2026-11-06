###### Class info.flowersoft.theotown.ui.Indicator (info.flowersoft.theotown.ui.Indicator)
.class public abstract Linfo/flowersoft/theotown/ui/Indicator;
.super Lio/blueflower/stapel2d/gui/Button;
.source "Indicator.java"


# instance fields
.field public engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public font:Lio/blueflower/stapel2d/drawing/Font;

.field public px:I

.field public py:I


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 6

    .line 22
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 27
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iput-object v1, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 28
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/Indicator;->font:Lio/blueflower/stapel2d/drawing/Font;

    .line 29
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    iput p1, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    .line 30
    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    iput p2, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    .line 36
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 37
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result p2

    if-eqz p2, :cond_26

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 38
    :cond_26
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p2, p0, Linfo/flowersoft/theotown/ui/Indicator;->px:I

    int-to-float v3, p2

    iget p2, p0, Linfo/flowersoft/theotown/ui/Indicator;->py:I

    int-to-float v4, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p2

    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v7, p2, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 40
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/Indicator;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method
