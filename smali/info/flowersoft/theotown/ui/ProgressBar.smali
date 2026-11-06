###### Class info.flowersoft.theotown.ui.ProgressBar (info.flowersoft.theotown.ui.ProgressBar)
.class public Linfo/flowersoft/theotown/ui/ProgressBar;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "ProgressBar.java"


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public progress:F


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 6

    .line 23
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, p0

    .line 25
    iget-object p2, p1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p2, p2, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/ui/ProgressBar;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public constructor <init>(IIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 11

    const/16 v4, 0xa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 19
    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/ProgressBar;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 12

    .line 46
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 48
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ProgressBar;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 49
    iget v1, p0, Linfo/flowersoft/theotown/ui/ProgressBar;->progress:F

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2c

    .line 50
    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v8, v1, Lio/blueflower/stapel2d/gui/Skin;->npProgressBarFilled:I

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    goto :goto_2f

    :cond_2c
    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 52
    :goto_2f
    iget-object p1, v3, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget p1, p1, Lio/blueflower/stapel2d/gui/Skin;->npProgressBar:I

    invoke-virtual {p0, v4, v5, p1}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 53
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ProgressBar;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getProgress()F
    .registers 2

    .line 29
    iget v0, p0, Linfo/flowersoft/theotown/ui/ProgressBar;->progress:F

    return v0
.end method

.method public setColor(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 2

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ProgressBar;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public setProgress(F)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/ui/ProgressBar;->progress:F

    return-void
.end method
