###### Class info.flowersoft.theotown.ui.ColorRect (info.flowersoft.theotown.ui.ColorRect)
.class public Linfo/flowersoft/theotown/ui/ColorRect;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "ColorRect.java"


# instance fields
.field public final borderless:Z

.field public final color:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 4

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/ui/ColorRect;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/gui/Gadget;Z)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/gui/Gadget;Z)V
    .registers 4

    .line 20
    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 21
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ColorRect;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 22
    iput-boolean p3, p0, Linfo/flowersoft/theotown/ui/ColorRect;->borderless:Z

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 27
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    .line 28
    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    .line 29
    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, p2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 30
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/ColorRect;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 32
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v0

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    .line 36
    iget-boolean p1, p0, Linfo/flowersoft/theotown/ui/ColorRect;->borderless:Z

    if-eqz p1, :cond_23

    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget p1, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    :goto_21
    move v7, p1

    goto :goto_28

    :cond_23
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget p1, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    goto :goto_21

    .line 32
    :goto_28
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 37
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method
