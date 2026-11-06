###### Class info.flowersoft.theotown.ui.GoldButton (info.flowersoft.theotown.ui.GoldButton)
.class public Linfo/flowersoft/theotown/ui/GoldButton;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "GoldButton.java"


# instance fields
.field public golden:Z

.field public green:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 16

    .line 19
    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, v0, Linfo/flowersoft/theotown/ui/GoldButton;->golden:Z

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, v0, Linfo/flowersoft/theotown/ui/GoldButton;->green:Z

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 42
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/GoldButton;->golden:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/GoldButton;->green:Z

    if-eqz v0, :cond_9

    goto :goto_d

    .line 76
    :cond_9
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/IconButton;->draw(II)V

    return-void

    .line 44
    :cond_d
    :goto_d
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    .line 45
    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/GoldButton;->golden:Z

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-eqz v1, :cond_21

    .line 47
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    const/16 v4, 0x46

    invoke-virtual {v1, v3, v4, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(III)V

    .line 49
    :cond_21
    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/GoldButton;->green:Z

    if-eqz v1, :cond_2c

    .line 50
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 52
    :cond_2c
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 53
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    iget-object v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 56
    :cond_3b
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 57
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    long-to-int v4, v4

    if-gez v4, :cond_49

    const/high16 v5, -0x80000000

    sub-int/2addr v4, v5

    .line 60
    :cond_49
    iget-boolean v5, p0, Linfo/flowersoft/theotown/ui/GoldButton;->green:Z

    if-eqz v5, :cond_52

    iget-object v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    goto :goto_56

    :cond_52
    iget-object v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    .line 61
    :goto_56
    div-int/lit8 v4, v4, 0x50

    array-length v6, v5

    rem-int/2addr v4, v6

    aget v4, v5, v4

    .line 63
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_66

    .line 64
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_71

    .line 65
    :cond_66
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 67
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 70
    :cond_71
    :goto_71
    iget v8, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v9, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v4, v3, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    :cond_7f
    move-object v5, p0

    move v6, p1

    move v7, p2

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    .line 71
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 73
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_92

    const/4 v2, 0x2

    :cond_92
    add-int p2, v7, v2

    invoke-virtual {p0, v6, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 74
    iget-object p1, v5, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public isGolden()Z
    .registers 2

    .line 23
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/GoldButton;->golden:Z

    return v0
.end method

.method public isGreen()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/GoldButton;->green:Z

    return v0
.end method

.method public setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;
    .registers 2

    .line 27
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/GoldButton;->golden:Z

    return-object p0
.end method

.method public setGreen(Z)Linfo/flowersoft/theotown/ui/GoldButton;
    .registers 2

    .line 32
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/GoldButton;->green:Z

    return-object p0
.end method
