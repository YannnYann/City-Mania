###### Class io.blueflower.stapel2d.gui.Button (io.blueflower.stapel2d.gui.Button)
.class public Lio/blueflower/stapel2d/gui/Button;
.super Lio/blueflower/stapel2d/gui/SensitiveGadget;
.source "Button.java"


# instance fields
.field public alpha:F

.field public down:Z

.field public frameDefault:I

.field public frameDown:I

.field public frameMarked:I

.field public icon:Lio/blueflower/stapel2d/gui/Icon;

.field public marked:Z

.field public text:Linfo/flowersoft/theotown/ui/ShadowedLabel;


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 13

    .line 31
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/SensitiveGadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v6, p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    iput p1, v6, Lio/blueflower/stapel2d/gui/Button;->alpha:F

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setLooseTPOnFocusLoss(Z)V

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, v6, Lio/blueflower/stapel2d/gui/Button;->down:Z

    .line 37
    new-instance v0, Linfo/flowersoft/theotown/ui/ShadowedLabel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/ShadowedLabel;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v6, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    .line 38
    iput-boolean p1, v0, Lio/blueflower/stapel2d/gui/Gadget;->fillParent:Z

    .line 39
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/ui/ShadowedLabel;->setShadow(Z)V

    .line 40
    iget-object p2, v6, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-virtual {p2, p3, p3}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 42
    new-instance v0, Lio/blueflower/stapel2d/gui/Icon;

    const/4 v1, -0x1

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v6, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    .line 43
    iput-boolean p1, v0, Lio/blueflower/stapel2d/gui/Gadget;->fillParent:Z

    .line 44
    invoke-virtual {v0, p3, p3}, Lio/blueflower/stapel2d/gui/Icon;->setAlignment(FF)V

    .line 46
    iget-object p1, v6, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget p2, p1, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    iput p2, v6, Lio/blueflower/stapel2d/gui/Button;->frameDefault:I

    .line 47
    iget p2, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    iput p2, v6, Lio/blueflower/stapel2d/gui/Button;->frameDown:I

    .line 48
    iget p1, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonMarked:I

    iput p1, v6, Lio/blueflower/stapel2d/gui/Button;->frameMarked:I

    return-void
.end method


# virtual methods
.method public click()V
    .registers 1

    .line 179
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->performOnClick()V

    return-void
.end method

.method public draw(II)V
    .registers 3

    .line 136
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Button;->drawButton(II)V

    .line 138
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public drawButton(II)V
    .registers 9

    .line 146
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 148
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    if-nez v1, :cond_19

    const/high16 v1, 0x42c80000    # 100.0f

    .line 149
    iget v3, p0, Lio/blueflower/stapel2d/gui/Button;->alpha:F

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_2e

    .line 151
    :cond_19
    iget v1, p0, Lio/blueflower/stapel2d/gui/Button;->alpha:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 152
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 153
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 157
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isMarked()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 158
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 159
    iget v1, p0, Lio/blueflower/stapel2d/gui/Button;->frameDown:I

    invoke-virtual {p0, p1, p2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    goto :goto_8d

    .line 161
    :cond_46
    iget v1, p0, Lio/blueflower/stapel2d/gui/Button;->frameDefault:I

    invoke-virtual {p0, p1, p2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 163
    iget v1, p0, Lio/blueflower/stapel2d/gui/Button;->alpha:F

    mul-float/2addr v1, v2

    .line 165
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    const-wide/16 v4, 0x5a0

    rem-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x44340000    # 720.0f

    div-float/2addr v2, v3

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 164
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 163
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 166
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 167
    iget v1, p0, Lio/blueflower/stapel2d/gui/Button;->frameMarked:I

    invoke-virtual {p0, p1, p2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 168
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    goto :goto_8d

    .line 171
    :cond_7f
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_88

    iget v1, p0, Lio/blueflower/stapel2d/gui/Button;->frameDown:I

    goto :goto_8a

    :cond_88
    iget v1, p0, Lio/blueflower/stapel2d/gui/Button;->frameDefault:I

    :goto_8a
    invoke-virtual {p0, p1, p2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 174
    :goto_8d
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p1, 0xff

    .line 175
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public getCursor()Linfo/flowersoft/theotown/ui/CursorType;
    .registers 2

    .line 53
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Normal:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0
.end method

.method public getFont()Lio/blueflower/stapel2d/drawing/Font;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->getTextLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v0

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Label;->font:Lio/blueflower/stapel2d/drawing/Font;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 89
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Icon;->getFrame()I

    move-result v0

    return v0
.end method

.method public getIconGadget()Lio/blueflower/stapel2d/gui/Icon;
    .registers 2

    .line 97
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextLabel()Lio/blueflower/stapel2d/gui/Label;
    .registers 2

    .line 85
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    return-object v0
.end method

.method public isMarked()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Button;->marked:Z

    return v0
.end method

.method public isPressed()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Button;->down:Z

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 126
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onClick()V

    .line 127
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/gui/Master;->informAboutClickOn(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public onPress()V
    .registers 2

    .line 110
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onPress()V

    .line 112
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gui/Button;->down:Z

    :cond_c
    return-void
.end method

.method public onRelease()V
    .registers 2

    .line 119
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onRelease()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gui/Button;->down:Z

    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    .line 142
    iput p1, p0, Lio/blueflower/stapel2d/gui/Button;->alpha:F

    return-void
.end method

.method public setFont(Lio/blueflower/stapel2d/drawing/Font;)V
    .registers 3

    .line 61
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->getTextLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    return-void
.end method

.method public setFrameDefault(I)V
    .registers 2

    .line 57
    iput p1, p0, Lio/blueflower/stapel2d/gui/Button;->frameDefault:I

    return-void
.end method

.method public setFrameDown(I)V
    .registers 2

    .line 69
    iput p1, p0, Lio/blueflower/stapel2d/gui/Button;->frameDown:I

    return-void
.end method

.method public setFrameMarked(I)V
    .registers 2

    .line 73
    iput p1, p0, Lio/blueflower/stapel2d/gui/Button;->frameMarked:I

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 93
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Icon;->setFrame(I)V

    return-void
.end method

.method public setMarked(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/Button;->marked:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 81
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    return-void
.end method
