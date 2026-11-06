###### Class info.flowersoft.theotown.ui.IconRadioButton (info.flowersoft.theotown.ui.IconRadioButton)
.class public Linfo/flowersoft/theotown/ui/IconRadioButton;
.super Lio/blueflower/stapel2d/gui/ToggleButton;
.source "IconRadioButton.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/ToggleButton;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 13
    iget-object p3, v0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p3, p1}, Lio/blueflower/stapel2d/gui/Icon;->setFrame(I)V

    .line 14
    iget-object p1, v0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/gui/Gadget;->setFillParent(Z)V

    .line 15
    iget-object p1, v0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    .line 16
    iget-object p1, v0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    const/4 p2, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 17
    iget-object p1, v0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/gui/Gadget;->setFillParent(Z)V

    return-void
.end method


# virtual methods
.method public layout()V
    .registers 6

    .line 22
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 24
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    if-eqz v0, :cond_2d

    .line 25
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 26
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    :cond_2d
    return-void
.end method

.method public onClick()V
    .registers 2

    .line 32
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->reset()V

    .line 33
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/ToggleButton;->onClick()V

    return-void
.end method
