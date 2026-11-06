###### Class io.blueflower.stapel2d.gui.Panel (io.blueflower.stapel2d.gui.Panel)
.class public Lio/blueflower/stapel2d/gui/Panel;
.super Lio/blueflower/stapel2d/gui/SensitiveGadget;
.source "Panel.java"


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 6

    .line 9
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/SensitiveGadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 4

    .line 14
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 16
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method
