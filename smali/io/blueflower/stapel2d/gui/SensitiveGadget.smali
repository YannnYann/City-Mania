###### Class io.blueflower.stapel2d.gui.SensitiveGadget (io.blueflower.stapel2d.gui.SensitiveGadget)
.class public abstract Lio/blueflower/stapel2d/gui/SensitiveGadget;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "SensitiveGadget.java"


# instance fields
.field public greedy:Z

.field public looseTPOnFocusLoss:Z

.field public mouseHoverX:F

.field public mouseHoverY:F

.field public mouseHoveredFrame:I

.field public touchThrough:Z

.field public tp:Lio/blueflower/stapel2d/touch/TouchPoint;


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 6

    .line 30
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, p0

    const/4 p2, -0x1

    .line 19
    iput p2, p1, Lio/blueflower/stapel2d/gui/SensitiveGadget;->mouseHoveredFrame:I

    const/4 p2, 0x0

    .line 31
    iput-object p2, p1, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    .line 149
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->flush()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    return-void
.end method

.method public getTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;
    .registers 2

    .line 51
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    return-object v0
.end method

.method public isLooseTPOnFocusLoss()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->looseTPOnFocusLoss:Z

    return v0
.end method

.method public isMouseHovered()Z
    .registers 3

    .line 55
    iget v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->mouseHoveredFrame:I

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getFrame()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdate()V
    .registers 4

    .line 136
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 138
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-eqz v0, :cond_42

    iget-boolean v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->looseTPOnFocusLoss:Z

    if-eqz v1, :cond_42

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_42

    .line 139
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onRelease()V

    .line 140
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 141
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->performOnClick()V

    :cond_3f
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    :cond_42
    return-void
.end method

.method public setGreedy(Z)V
    .registers 2

    .line 43
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->greedy:Z

    return-void
.end method

.method public setLooseTPOnFocusLoss(Z)V
    .registers 2

    .line 39
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->looseTPOnFocusLoss:Z

    return-void
.end method

.method public setTouchThrough(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->touchThrough:Z

    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 8

    .line 60
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->isValid()Z

    move-result v0

    if-nez v0, :cond_10

    .line 61
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onRelease()V

    .line 62
    iput-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 67
    :cond_10
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getAddedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v0

    if-nez v0, :cond_5c

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getRemovedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v0

    if-nez v0, :cond_5c

    .line 68
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 70
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 71
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getCursor()Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    .line 72
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_42
    if-ltz v2, :cond_5d

    .line 73
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/Gadget;

    .line 74
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 75
    invoke-virtual {v3, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v3

    if-eqz v3, :cond_59

    move-object v0, v3

    :cond_59
    add-int/lit8 v2, v2, -0x1

    goto :goto_42

    :cond_5c
    move-object v0, v1

    :cond_5d
    const/4 v2, -0x1

    .line 83
    iput v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->mouseHoveredFrame:I

    .line 85
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getAddedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v2

    if-eqz v2, :cond_c3

    .line 86
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 87
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_82
    if-ltz v3, :cond_a0

    iget-object v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a0

    .line 88
    iget-object v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/Gadget;

    .line 89
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-virtual {v4, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    :cond_9d
    add-int/lit8 v3, v3, -0x1

    goto :goto_82

    .line 92
    :cond_a0
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getAddedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v3

    .line 93
    iget-boolean v4, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->greedy:Z

    if-eqz v4, :cond_a9

    goto :goto_aa

    :cond_a9
    move-object v2, v3

    .line 95
    :goto_aa
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-nez v3, :cond_bb

    if-eqz v2, :cond_bb

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 96
    iput-object v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 97
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onPress()V

    .line 100
    :cond_bb
    iget-boolean v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->touchThrough:Z

    if-nez v2, :cond_12d

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->clearAddedTouchPoint()V

    goto :goto_12d

    .line 101
    :cond_c3
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v2

    if-eqz v2, :cond_12d

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 102
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-nez v2, :cond_107

    .line 103
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getFrame()I

    move-result v2

    iput v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->mouseHoveredFrame:I

    .line 104
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v2

    iput v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->mouseHoverX:F

    .line 105
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v2

    iput v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->mouseHoverY:F

    .line 108
    :cond_107
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_10f
    if-ltz v2, :cond_12d

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_12d

    .line 109
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/Gadget;

    .line 110
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_12a

    invoke-virtual {v3, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    :cond_12a
    add-int/lit8 v2, v2, -0x1

    goto :goto_10f

    .line 115
    :cond_12d
    :goto_12d
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-eqz v2, :cond_177

    .line 116
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getRemovedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_157

    iget-boolean v2, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->looseTPOnFocusLoss:Z

    if-eqz v2, :cond_177

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 117
    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_177

    .line 118
    :cond_157
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onRelease()V

    .line 119
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_175

    .line 120
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->performOnClick()V

    .line 122
    :cond_175
    iput-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 125
    :cond_177
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getRemovedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v1

    if-eqz v1, :cond_194

    const/4 v1, 0x0

    .line 126
    :goto_17e
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_194

    .line 127
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17e

    :cond_194
    return-object v0
.end method
