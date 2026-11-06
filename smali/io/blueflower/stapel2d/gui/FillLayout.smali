###### Class io.blueflower.stapel2d.gui.FillLayout (io.blueflower.stapel2d.gui.FillLayout)
.class public Lio/blueflower/stapel2d/gui/FillLayout;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "FillLayout.java"


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 2

    .line 8
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public layout()V
    .registers 7

    .line 13
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 15
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    .line 16
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    goto :goto_9

    :cond_29
    return-void
.end method
