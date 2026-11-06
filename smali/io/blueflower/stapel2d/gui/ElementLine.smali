###### Class io.blueflower.stapel2d.gui.ElementLine (io.blueflower.stapel2d.gui.ElementLine)
.class public Lio/blueflower/stapel2d/gui/ElementLine;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "ElementLine.java"


# instance fields
.field public firstPart:Lio/blueflower/stapel2d/gui/LineLayout;

.field public secondPart:Lio/blueflower/stapel2d/gui/LineLayout;

.field public thirdPart:Lio/blueflower/stapel2d/gui/LineLayout;


# direct methods
.method public constructor <init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 14

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    .line 18
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 20
    new-instance p3, Lio/blueflower/stapel2d/gui/LineLayout;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p2, p0}, Lio/blueflower/stapel2d/gui/LineLayout;-><init>(FIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object p3, v0, Lio/blueflower/stapel2d/gui/ElementLine;->firstPart:Lio/blueflower/stapel2d/gui/LineLayout;

    .line 21
    new-instance p3, Lio/blueflower/stapel2d/gui/LineLayout;

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-direct {p3, p4, p1, p2, p0}, Lio/blueflower/stapel2d/gui/LineLayout;-><init>(FIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object p3, v0, Lio/blueflower/stapel2d/gui/ElementLine;->secondPart:Lio/blueflower/stapel2d/gui/LineLayout;

    .line 22
    new-instance p3, Lio/blueflower/stapel2d/gui/LineLayout;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, p1, p2, p0}, Lio/blueflower/stapel2d/gui/LineLayout;-><init>(FIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object p3, v0, Lio/blueflower/stapel2d/gui/ElementLine;->thirdPart:Lio/blueflower/stapel2d/gui/LineLayout;

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 45
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;
    .registers 2

    .line 32
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ElementLine;->firstPart:Lio/blueflower/stapel2d/gui/LineLayout;

    return-object v0
.end method

.method public getSecondPart()Lio/blueflower/stapel2d/gui/LineLayout;
    .registers 2

    .line 36
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ElementLine;->secondPart:Lio/blueflower/stapel2d/gui/LineLayout;

    return-object v0
.end method

.method public getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;
    .registers 2

    .line 40
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ElementLine;->thirdPart:Lio/blueflower/stapel2d/gui/LineLayout;

    return-object v0
.end method

.method public setFloating(F)V
    .registers 3

    .line 49
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ElementLine;->firstPart:Lio/blueflower/stapel2d/gui/LineLayout;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/LineLayout;->setFloating(F)V

    .line 50
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ElementLine;->secondPart:Lio/blueflower/stapel2d/gui/LineLayout;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/LineLayout;->setFloating(F)V

    .line 51
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ElementLine;->thirdPart:Lio/blueflower/stapel2d/gui/LineLayout;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/LineLayout;->setFloating(F)V

    return-void
.end method

.method public setOmitInvisibleChildren(Z)V
    .registers 3

    .line 26
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ElementLine;->firstPart:Lio/blueflower/stapel2d/gui/LineLayout;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/LineLayout;->setOmitInvisibleChildren(Z)V

    .line 27
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ElementLine;->secondPart:Lio/blueflower/stapel2d/gui/LineLayout;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/LineLayout;->setOmitInvisibleChildren(Z)V

    .line 28
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ElementLine;->thirdPart:Lio/blueflower/stapel2d/gui/LineLayout;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/LineLayout;->setOmitInvisibleChildren(Z)V

    return-void
.end method
