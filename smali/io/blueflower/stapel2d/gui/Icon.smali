###### Class io.blueflower.stapel2d.gui.Icon (io.blueflower.stapel2d.gui.Icon)
.class public Lio/blueflower/stapel2d/gui/Icon;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "Icon.java"


# instance fields
.field public alignmentX:F

.field public alignmentY:F

.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public frame:I

.field public img:Lio/blueflower/stapel2d/drawing/Image;

.field public scale:F

.field public scaleDown:Z


# direct methods
.method public constructor <init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 13

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 30
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 23
    iput p2, v0, Lio/blueflower/stapel2d/gui/Icon;->scale:F

    .line 25
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p2

    iput-object p2, v0, Lio/blueflower/stapel2d/gui/Icon;->color:Lio/blueflower/stapel2d/drawing/Color;

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, v0, Lio/blueflower/stapel2d/gui/Icon;->scaleDown:Z

    .line 31
    iput p1, v0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 33
    iput p1, v0, Lio/blueflower/stapel2d/gui/Icon;->alignmentX:F

    .line 34
    iput p1, v0, Lio/blueflower/stapel2d/gui/Icon;->alignmentY:F

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 95
    iget v0, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_90

    .line 96
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Icon;->img:Lio/blueflower/stapel2d/drawing/Image;

    if-nez v1, :cond_d

    .line 97
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    .line 98
    :cond_d
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    .line 99
    iget v2, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v2

    .line 102
    iget-boolean v3, p0, Lio/blueflower/stapel2d/gui/Icon;->scaleDown:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_36

    .line 103
    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v3, v3

    iget v5, p0, Lio/blueflower/stapel2d/gui/Icon;->scale:F

    mul-float v6, v5, v0

    div-float/2addr v3, v6

    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v6

    mul-float/2addr v5, v2

    div-float/2addr v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v5, p0, Lio/blueflower/stapel2d/gui/Icon;->scale:F

    mul-float/2addr v3, v5

    goto :goto_37

    :cond_36
    move v3, v4

    .line 105
    :goto_37
    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v5, p1

    iget v6, p0, Lio/blueflower/stapel2d/gui/Icon;->alignmentX:F

    iget v7, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v7, v7

    mul-float/2addr v0, v3

    sub-float/2addr v7, v0

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v5, v0

    int-to-float v0, v5

    .line 106
    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v5, p2

    iget v6, p0, Lio/blueflower/stapel2d/gui/Icon;->alignmentY:F

    iget v7, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v7, v7

    mul-float/2addr v2, v3

    sub-float/2addr v7, v2

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v5, v2

    int-to-float v2, v5

    .line 108
    iget-object v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 109
    invoke-virtual {v5, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 110
    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Icon;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 111
    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Icon;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 112
    iget v6, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v6

    mul-float/2addr v6, v3

    add-float/2addr v0, v6

    iget v6, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v6

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {p0, v1, v0, v2, v3}, Lio/blueflower/stapel2d/gui/Icon;->drawIcon(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 113
    invoke-virtual {v5, v4, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v0, 0xff

    .line 114
    invoke-virtual {v5, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 115
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 118
    :cond_90
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public drawIcon(Lio/blueflower/stapel2d/drawing/Image;FFI)V
    .registers 6

    .line 122
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public getAlignmentX()F
    .registers 2

    .line 59
    iget v0, p0, Lio/blueflower/stapel2d/gui/Icon;->alignmentX:F

    return v0
.end method

.method public getAlignmentY()F
    .registers 2

    .line 63
    iget v0, p0, Lio/blueflower/stapel2d/gui/Icon;->alignmentY:F

    return v0
.end method

.method public getAlpha()I
    .registers 2

    .line 87
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Icon;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 79
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Icon;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 46
    iget v0, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    return v0
.end method

.method public getScale()F
    .registers 2

    .line 71
    iget v0, p0, Lio/blueflower/stapel2d/gui/Icon;->scale:F

    return v0
.end method

.method public isScaleDown()Z
    .registers 2

    .line 38
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Icon;->scaleDown:Z

    return v0
.end method

.method public setAlignment(FF)V
    .registers 3

    .line 54
    iput p1, p0, Lio/blueflower/stapel2d/gui/Icon;->alignmentX:F

    .line 55
    iput p2, p0, Lio/blueflower/stapel2d/gui/Icon;->alignmentY:F

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 91
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Icon;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    return-void
.end method

.method public setColor(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 3

    .line 83
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Icon;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 50
    iput p1, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    return-void
.end method

.method public setImg(Lio/blueflower/stapel2d/drawing/Image;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lio/blueflower/stapel2d/gui/Icon;->img:Lio/blueflower/stapel2d/drawing/Image;

    return-void
.end method

.method public setScale(F)V
    .registers 2

    .line 75
    iput p1, p0, Lio/blueflower/stapel2d/gui/Icon;->scale:F

    return-void
.end method

.method public setScaleDown(Z)V
    .registers 2

    .line 42
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/Icon;->scaleDown:Z

    return-void
.end method
