###### Class info.flowersoft.theotown.ui.IconButton (info.flowersoft.theotown.ui.IconButton)
.class public Linfo/flowersoft/theotown/ui/IconButton;
.super Lio/blueflower/stapel2d/gui/Button;
.source "IconButton.java"


# instance fields
.field public borderless:Z

.field public iconWidth:I

.field public maxWidth:I

.field public rightIcon:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 17
    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Z)V
    .registers 15

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    .line 21
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 p3, 0x3e8

    .line 12
    iput p3, v0, Linfo/flowersoft/theotown/ui/IconButton;->maxWidth:I

    const/4 p3, 0x0

    .line 14
    iput p3, v0, Linfo/flowersoft/theotown/ui/IconButton;->iconWidth:I

    .line 23
    iget-object p4, v0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p4, p1}, Lio/blueflower/stapel2d/gui/Icon;->setFrame(I)V

    .line 24
    iget-object p1, v0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/gui/Gadget;->setFillParent(Z)V

    .line 25
    iget-object p1, v0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    .line 26
    iget-object p1, v0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    const/4 p2, 0x0

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, p4}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 27
    iget-object p1, v0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/gui/Gadget;->setFillParent(Z)V

    .line 28
    iget-object p1, v0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    iget-object p2, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p2, p2, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 30
    iput-boolean p8, v0, Linfo/flowersoft/theotown/ui/IconButton;->rightIcon:Z

    .line 32
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/IconButton;->calculateMinWidth()V

    .line 33
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method


# virtual methods
.method public calculateMinWidth()V
    .registers 7

    .line 126
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Icon;->getFrame()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    goto :goto_11

    :cond_10
    move v0, v1

    .line 127
    :goto_11
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Label;->getFont()Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v2

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0xa

    goto :goto_34

    :cond_33
    move v2, v1

    :goto_34
    add-int/2addr v2, v0

    .line 131
    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 133
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    if-eqz v3, :cond_64

    .line 134
    iget v4, p0, Linfo/flowersoft/theotown/ui/IconButton;->maxWidth:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-le v2, v4, :cond_61

    sub-int/2addr v4, v0

    .line 135
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 136
    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    sub-int/2addr v2, v0

    const/4 v0, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 137
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {v2, v1, v5}, Lio/blueflower/stapel2d/gui/Label;->setScale(FF)V

    .line 138
    iget v0, p0, Linfo/flowersoft/theotown/ui/IconButton;->maxWidth:I

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    return-void

    .line 140
    :cond_61
    invoke-virtual {v3, v5, v5}, Lio/blueflower/stapel2d/gui/Label;->setScale(FF)V

    :cond_64
    return-void
.end method

.method public draw(II)V
    .registers 7

    .line 51
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/IconButton;->borderless:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Button;->drawButton(II)V

    .line 53
    :cond_7
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 54
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_15

    add-int/lit8 p2, p2, 0x2

    :cond_15
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void

    .line 57
    :cond_19
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result v0

    .line 58
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Icon;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result v1

    .line 59
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    .line 60
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Icon;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    .line 61
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 62
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    .line 63
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Icon;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 116
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Icon;->getFrame()I

    move-result v0

    return v0
.end method

.method public isRightIcon()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/IconButton;->rightIcon:Z

    return v0
.end method

.method public layout()V
    .registers 7

    .line 69
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 71
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    if-eqz v0, :cond_96

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    if-eqz v1, :cond_96

    .line 72
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_89

    .line 75
    :cond_20
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Icon;->getFrame()I

    move-result v0

    if-eqz v0, :cond_70

    .line 76
    iget v0, p0, Linfo/flowersoft/theotown/ui/IconButton;->iconWidth:I

    if-lez v0, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    .line 77
    :goto_31
    iget-boolean v3, p0, Linfo/flowersoft/theotown/ui/IconButton;->rightIcon:Z

    if-eqz v3, :cond_54

    .line 78
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    invoke-virtual {v3, v4, v1, v0, v5}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 79
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2, v3, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    return-void

    .line 81
    :cond_54
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    invoke-virtual {v3, v2, v1, v0, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 82
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    return-void

    .line 85
    :cond_70
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 86
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getAlignmentY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    return-void

    .line 73
    :cond_89
    :goto_89
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    :cond_96
    return-void
.end method

.method public setBorderless(Z)V
    .registers 2

    .line 37
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/IconButton;->borderless:Z

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 109
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    if-eqz v0, :cond_a

    .line 110
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Icon;->setFrame(I)V

    .line 111
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/IconButton;->layout()V

    :cond_a
    return-void
.end method

.method public setIconWidth(I)V
    .registers 2

    .line 46
    iput p1, p0, Linfo/flowersoft/theotown/ui/IconButton;->iconWidth:I

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    .line 41
    iput p1, p0, Linfo/flowersoft/theotown/ui/IconButton;->maxWidth:I

    .line 42
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public setRightIcon(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/IconButton;->rightIcon:Z

    .line 98
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/IconButton;->layout()V

    return-void
.end method

.method public setShape(IIII)V
    .registers 5

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 122
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/IconButton;->calculateMinWidth()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Button;->setText(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/IconButton;->calculateMinWidth()V

    .line 105
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/IconButton;->layout()V

    return-void
.end method
