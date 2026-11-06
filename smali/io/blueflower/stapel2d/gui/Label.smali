###### Class io.blueflower.stapel2d.gui.Label (io.blueflower.stapel2d.gui.Label)
.class public Lio/blueflower/stapel2d/gui/Label;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "Label.java"


# instance fields
.field public alignmentX:F

.field public alignmentY:F

.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public font:Lio/blueflower/stapel2d/drawing/Font;

.field public scaleToFitWidth:Z

.field public scaleX:F

.field public scaleY:F

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 13

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 29
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 23
    iput p2, v0, Lio/blueflower/stapel2d/gui/Label;->scaleX:F

    .line 24
    iput p2, v0, Lio/blueflower/stapel2d/gui/Label;->scaleY:F

    .line 30
    iput-object p1, v0, Lio/blueflower/stapel2d/gui/Label;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 32
    iput p1, v0, Lio/blueflower/stapel2d/gui/Label;->alignmentX:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 33
    iput p1, v0, Lio/blueflower/stapel2d/gui/Label;->alignmentY:F

    .line 35
    iget-object p1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p2, p1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iput-object p2, v0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    .line 36
    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    iput-object p1, v0, Lio/blueflower/stapel2d/gui/Label;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method


# virtual methods
.method public adjustSizeToText()V
    .registers 4

    .line 130
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Label;->getTextWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Label;->getTextHeight()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    return-void
.end method

.method public draw(II)V
    .registers 13

    .line 93
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 96
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr v0, p1

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/2addr v0, p2

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr v0, v5

    int-to-float v5, v0

    .line 97
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    sub-int/2addr v0, v6

    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    sub-int/2addr v0, v6

    int-to-float v6, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    iget v7, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    sub-int/2addr v0, v7

    iget v7, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingBottom:I

    sub-int/2addr v0, v7

    int-to-float v7, v0

    .line 98
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Label;->getAlignmentX()F

    move-result v8

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Label;->getAlignmentY()F

    move-result v9

    move-object v0, p0

    .line 96
    invoke-virtual/range {v0 .. v9}, Lio/blueflower/stapel2d/gui/Label;->drawText(Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Ljava/lang/String;FFFFFF)V

    .line 101
    :cond_40
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public drawText(Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Ljava/lang/String;FFFFFF)V
    .registers 14

    .line 106
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 107
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 108
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result p2

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 109
    iget p2, p0, Lio/blueflower/stapel2d/gui/Label;->scaleX:F

    .line 110
    iget v1, p0, Lio/blueflower/stapel2d/gui/Label;->scaleY:F

    .line 111
    iget-boolean v2, p0, Lio/blueflower/stapel2d/gui/Label;->scaleToFitWidth:Z

    if-eqz v2, :cond_27

    .line 112
    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v2, p2

    cmpl-float v3, v2, p6

    if-lez v3, :cond_27

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_27

    div-float v2, p6, v2

    mul-float/2addr p2, v2

    .line 115
    :cond_27
    invoke-virtual {v0, p2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move-object p2, p1

    move-object p1, v0

    .line 117
    invoke-virtual/range {p1 .. p9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 119
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p2, 0xff

    .line 120
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 121
    invoke-virtual {p1, p2, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public getAlignmentX()F
    .registers 2

    .line 69
    iget v0, p0, Lio/blueflower/stapel2d/gui/Label;->alignmentX:F

    return v0
.end method

.method public getAlignmentY()F
    .registers 2

    .line 73
    iget v0, p0, Lio/blueflower/stapel2d/gui/Label;->alignmentY:F

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 77
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getFont()Lio/blueflower/stapel2d/drawing/Font;
    .registers 2

    .line 48
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()F
    .registers 3

    .line 138
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getTextWidth()F
    .registers 3

    .line 134
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public isScaleToFitWidth()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Label;->scaleToFitWidth:Z

    return v0
.end method

.method public setAlignment(FF)V
    .registers 3

    .line 64
    iput p1, p0, Lio/blueflower/stapel2d/gui/Label;->alignmentX:F

    .line 65
    iput p2, p0, Lio/blueflower/stapel2d/gui/Label;->alignmentY:F

    return-void
.end method

.method public setColor(III)V
    .registers 6

    .line 85
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->color:Lio/blueflower/stapel2d/drawing/Color;

    const/16 v1, 0xff

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public setColor(IIII)V
    .registers 6

    .line 89
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public setColor(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 3

    .line 81
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Label;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public setFont(Lio/blueflower/stapel2d/drawing/Font;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    return-void
.end method

.method public setScale(FF)V
    .registers 3

    .line 125
    iput p1, p0, Lio/blueflower/stapel2d/gui/Label;->scaleX:F

    .line 126
    iput p2, p0, Lio/blueflower/stapel2d/gui/Label;->scaleY:F

    return-void
.end method

.method public setScaleToFitWidth(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/Label;->scaleToFitWidth:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lio/blueflower/stapel2d/gui/Label;->text:Ljava/lang/String;

    return-void
.end method
