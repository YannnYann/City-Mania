###### Class io.blueflower.stapel2d.gui.ToggleButton (io.blueflower.stapel2d.gui.ToggleButton)
.class public Lio/blueflower/stapel2d/gui/ToggleButton;
.super Lio/blueflower/stapel2d/gui/Button;
.source "ToggleButton.java"


# instance fields
.field public over:Z


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 6

    .line 14
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, p0

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p1, Lio/blueflower/stapel2d/gui/ToggleButton;->over:Z

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 6

    .line 33
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Button;->down:Z

    .line 34
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result v1

    iget-boolean v2, p0, Lio/blueflower/stapel2d/gui/ToggleButton;->over:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lio/blueflower/stapel2d/gui/Button;->down:Z

    .line 36
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Button;->draw(II)V

    .line 38
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gui/Button;->down:Z

    return-void
.end method

.method public isOver()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/ToggleButton;->over:Z

    return v0
.end method

.method public isPressed()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Button;->down:Z

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 53
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 54
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->isPressed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ToggleButton;->setPressed(Z)V

    return-void
.end method

.method public onPress()V
    .registers 2

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gui/ToggleButton;->over:Z

    return-void
.end method

.method public onRelease()V
    .registers 2

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gui/ToggleButton;->over:Z

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ToggleButton;->setPressed(Z)V

    .line 60
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->reset()V

    return-void
.end method

.method public setPressed(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/Button;->down:Z

    return-void
.end method
