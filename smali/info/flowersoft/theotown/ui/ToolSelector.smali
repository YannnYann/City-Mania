###### Class info.flowersoft.theotown.ui.ToolSelector (info.flowersoft.theotown.ui.ToolSelector)
.class public Linfo/flowersoft/theotown/ui/ToolSelector;
.super Lio/blueflower/stapel2d/gui/ToggleButton;
.source "ToolSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;
    }
.end annotation


# instance fields
.field public activeZebra:Z

.field public final openTo:I

.field public final panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

.field public selectorParent:Linfo/flowersoft/theotown/ui/ToolSelector;

.field public visibleState:Z


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 12

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    .line 33
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/ToggleButton;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, v0, Linfo/flowersoft/theotown/ui/ToolSelector;->visibleState:Z

    .line 35
    iput p4, v0, Linfo/flowersoft/theotown/ui/ToolSelector;->openTo:I

    .line 37
    invoke-virtual {p0, p3}, Lio/blueflower/stapel2d/gui/Button;->setIcon(I)V

    .line 39
    new-instance p1, Linfo/flowersoft/theotown/ui/ToolSelector$1;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/ui/ToolSelector$1;-><init>(Linfo/flowersoft/theotown/ui/ToolSelector;)V

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;->setVisible(Z)V

    const/4 p2, 0x2

    .line 55
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 57
    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public constructor <init>(IILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 29
    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/ToolSelector;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/ToolSelector;)I
    .registers 1

    .line 14
    iget p0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->openTo:I

    return p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/ui/ToolSelector;Z)Z
    .registers 2

    .line 14
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->visibleState:Z

    return p1
.end method


# virtual methods
.method public addChild(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    if-eqz v0, :cond_10

    .line 102
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->addChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 104
    instance-of v0, p1, Linfo/flowersoft/theotown/ui/ToolSelector;

    if-eqz v0, :cond_f

    .line 105
    check-cast p1, Linfo/flowersoft/theotown/ui/ToolSelector;

    iput-object p0, p1, Linfo/flowersoft/theotown/ui/ToolSelector;->selectorParent:Linfo/flowersoft/theotown/ui/ToolSelector;

    :cond_f
    return-void

    .line 108
    :cond_10
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->addChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public collapse()V
    .registers 2

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->reset()V

    .line 148
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/ToolSelector;->resetParent()V

    return-void
.end method

.method public draw(II)V
    .registers 7

    .line 179
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 181
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 182
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 185
    :cond_14
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isOver()Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_24

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v2, v2, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_33

    .line 186
    :cond_24
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isMarked()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v2, v2, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    goto :goto_33

    :cond_2f
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v2, v2, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    .line 185
    :goto_33
    invoke-virtual {p0, p1, p2, v2}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 195
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 197
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isOver()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_46

    const/4 v0, 0x2

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public examineVisibility()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public findChildWithId(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Gadget;
    .registers 3

    .line 62
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 63
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->findChildWithId(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled()Z
    .registers 2

    .line 114
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/ToolSelector;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->visibleState:Z

    if-eqz v0, :cond_c

    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public layout()V
    .registers 6

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    if-eqz v0, :cond_c0

    .line 69
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    .line 71
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    .line 73
    iget v2, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->openTo:I

    if-eqz v2, :cond_9d

    const/4 v3, 0x1

    if-eq v2, v3, :cond_69

    const/4 v1, 0x2

    if-eq v2, v1, :cond_45

    const/4 v1, 0x5

    if-eq v2, v1, :cond_1e

    goto/16 :goto_c0

    .line 79
    :cond_1e
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 80
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    sub-int/2addr v3, v0

    .line 79
    invoke-virtual {v1, v2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    goto/16 :goto_c0

    .line 90
    :cond_45
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 91
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    sub-int/2addr v3, v0

    .line 90
    invoke-virtual {v1, v2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    goto :goto_c0

    .line 83
    :cond_69
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 84
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 85
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 86
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    sub-int/2addr v2, v0

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    goto :goto_c0

    .line 75
    :cond_9d
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 76
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    sub-int/2addr v3, v0

    .line 75
    invoke-virtual {v1, v2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 96
    :cond_c0
    :goto_c0
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public onClick()V
    .registers 4

    .line 128
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->reset()V

    .line 130
    :cond_b
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->onClick()V

    .line 132
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->reset()V

    .line 134
    iget v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->openTo:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_22

    .line 136
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/ToolSelector;->setPressed(Z)V

    return-void

    .line 138
    :cond_22
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->selectorParent:Linfo/flowersoft/theotown/ui/ToolSelector;

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->selectorParent:Linfo/flowersoft/theotown/ui/ToolSelector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ToolSelector;->reset()V

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->selectorParent:Linfo/flowersoft/theotown/ui/ToolSelector;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/ToolSelector;->setPressed(Z)V

    .line 141
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/ui/ToolSelector;->setPressed(Z)V

    :cond_39
    return-void
.end method

.method public reset()V
    .registers 2

    .line 162
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->reset()V

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->reset()V

    return-void
.end method

.method public resetParent()V
    .registers 3

    move-object v0, p0

    .line 170
    :goto_1
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/ToolSelector;->selectorParent:Linfo/flowersoft/theotown/ui/ToolSelector;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 174
    :cond_7
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ToolSelector;->reset()V

    return-void
.end method

.method public setActiveZebra(Z)V
    .registers 2

    .line 201
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->activeZebra:Z

    return-void
.end method

.method public setPressed(Z)V
    .registers 3

    .line 153
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/ToggleButton;->setPressed(Z)V

    .line 155
    iget p1, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->openTo:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    if-eqz p1, :cond_18

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    .line 157
    :cond_18
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector;->panel:Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ToolSelector.AnonymousClass1 (info.flowersoft.theotown.ui.ToolSelector$1)
.class Linfo/flowersoft/theotown/ui/ToolSelector$1;
.super Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;
.source "ToolSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ToolSelector;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/ToolSelector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ToolSelector;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ToolSelector$1;->this$0:Linfo/flowersoft/theotown/ui/ToolSelector;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;-><init>(Linfo/flowersoft/theotown/ui/ToolSelector;Linfo/flowersoft/theotown/ui/ToolSelector$1;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 9

    add-int/lit8 v1, p1, -0x9

    add-int/lit8 v2, p2, -0x9

    .line 43
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/lit8 v3, v0, 0x14

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    add-int/lit8 v4, v0, 0x14

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v5, v0, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    .line 44
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v1, v1, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    invoke-virtual {p0, p1, p2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 45
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public isChildOf(Lio/blueflower/stapel2d/gui/Gadget;)Z
    .registers 3

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ToolSelector$1;->this$0:Linfo/flowersoft/theotown/ui/ToolSelector;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 51
    :cond_6
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->isChildOf(Lio/blueflower/stapel2d/gui/Gadget;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.ui.ToolSelector.FlowPanel (info.flowersoft.theotown.ui.ToolSelector$FlowPanel)
.class Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "ToolSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/ToolSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlowPanel"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/ToolSelector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ToolSelector;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;->this$0:Linfo/flowersoft/theotown/ui/ToolSelector;

    const/4 v4, 0x0

    .line 207
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/ToolSelector;Linfo/flowersoft/theotown/ui/ToolSelector$1;)V
    .registers 3

    .line 204
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;-><init>(Linfo/flowersoft/theotown/ui/ToolSelector;)V

    return-void
.end method


# virtual methods
.method public layout()V
    .registers 10

    .line 212
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    const/4 v1, 0x0

    .line 214
    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 215
    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 221
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;->this$0:Linfo/flowersoft/theotown/ui/ToolSelector;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/ToolSelector;->access$100(Linfo/flowersoft/theotown/ui/ToolSelector;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_110

    if-eq v2, v3, :cond_db

    const/4 v4, 0x2

    if-eq v2, v4, :cond_89

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1a

    goto/16 :goto_174

    .line 223
    :cond_1a
    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    move v0, v1

    move v2, v0

    move v4, v2

    move v5, v4

    .line 224
    :goto_23
    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_77

    .line 225
    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/gui/Gadget;

    .line 226
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_74

    neg-int v7, v2

    .line 227
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-gez v7, :cond_51

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    move v2, v1

    move v5, v2

    .line 232
    :cond_51
    invoke-virtual {v6, v2, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 233
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v2, v7

    .line 234
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 236
    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 237
    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int v7, v4, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 240
    :cond_77
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    sub-int/2addr v0, v3

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 241
    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    add-int/2addr v0, v2

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    goto/16 :goto_174

    :cond_89
    move v0, v1

    move v2, v0

    move v4, v2

    .line 272
    :goto_8c
    iget-object v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_cc

    .line 273
    iget-object v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/blueflower/stapel2d/gui/Gadget;

    .line 274
    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v7, 0x12c

    if-lt v6, v7, :cond_b6

    .line 275
    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 276
    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    move v2, v1

    move v4, v2

    .line 280
    :cond_b6
    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    invoke-virtual {v5, v2, v6}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 281
    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 282
    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 284
    :cond_cc
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 285
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/2addr v0, v4

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    goto/16 :goto_174

    :cond_db
    move v0, v1

    .line 263
    :goto_dc
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_10a

    .line 264
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Gadget;

    .line 265
    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    invoke-virtual {v2, v1, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 266
    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 267
    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    add-int/2addr v2, v3

    add-int/2addr v4, v2

    iput v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_dc

    .line 269
    :cond_10a
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    sub-int/2addr v0, v3

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    goto :goto_174

    :cond_110
    move v0, v1

    move v2, v0

    move v4, v2

    move v5, v4

    .line 244
    :goto_114
    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_16f

    .line 245
    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/gui/Gadget;

    .line 246
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_16c

    .line 247
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v7

    add-int/2addr v7, v2

    add-int/2addr v7, v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v8

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v8

    if-lt v7, v8, :cond_149

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    move v2, v1

    move v5, v2

    .line 252
    :cond_149
    invoke-virtual {v6, v2, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 253
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v2, v7

    .line 254
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 256
    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 257
    iget v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int v7, v4, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    :cond_16c
    add-int/lit8 v0, v0, 0x1

    goto :goto_114

    .line 260
    :cond_16f
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    sub-int/2addr v0, v3

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 290
    :goto_174
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 291
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingBottom:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 293
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    if-eqz v0, :cond_19b

    .line 294
    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    .line 297
    :cond_19b
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public parentHasToLayout()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public setVisible(Z)V
    .registers 5

    .line 302
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    const/4 v0, 0x0

    .line 304
    :goto_4
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 305
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    .line 306
    instance-of v2, v1, Linfo/flowersoft/theotown/ui/ToolSelector;

    if-eqz v2, :cond_21

    .line 307
    check-cast v1, Linfo/flowersoft/theotown/ui/ToolSelector;

    .line 308
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/ToolSelector;->examineVisibility()Z

    move-result v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/ui/ToolSelector;->access$202(Linfo/flowersoft/theotown/ui/ToolSelector;Z)Z

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_24
    if-eqz p1, :cond_29

    .line 312
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/ToolSelector$FlowPanel;->layout()V

    :cond_29
    return-void
.end method
