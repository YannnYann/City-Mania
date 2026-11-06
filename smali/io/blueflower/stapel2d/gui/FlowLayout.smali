###### Class io.blueflower.stapel2d.gui.FlowLayout (io.blueflower.stapel2d.gui.FlowLayout)
.class public Lio/blueflower/stapel2d/gui/FlowLayout;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "FlowLayout.java"


# instance fields
.field public space:I


# direct methods
.method public constructor <init>(ILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3

    .line 11
    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 13
    iput p1, p0, Lio/blueflower/stapel2d/gui/FlowLayout;->space:I

    return-void
.end method


# virtual methods
.method public getSpace()I
    .registers 2

    .line 17
    iget v0, p0, Lio/blueflower/stapel2d/gui/FlowLayout;->space:I

    return v0
.end method

.method public layout()V
    .registers 11

    .line 31
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/blueflower/stapel2d/gui/Gadget;

    if-lez v4, :cond_28

    .line 32
    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v8

    add-int/2addr v8, v4

    iget v9, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    if-le v8, v9, :cond_28

    .line 33
    iget v8, p0, Lio/blueflower/stapel2d/gui/FlowLayout;->space:I

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    move v6, v1

    .line 36
    :cond_28
    invoke-virtual {v7, v4, v5}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 37
    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v8

    iget v9, p0, Lio/blueflower/stapel2d/gui/FlowLayout;->space:I

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 38
    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 40
    iget v7, p0, Lio/blueflower/stapel2d/gui/FlowLayout;->space:I

    sub-int v7, v4, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v7, v5, v6

    .line 41
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_c

    .line 44
    :cond_4a
    iput v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->minWidth:I

    .line 45
    iput v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->minHeight:I

    .line 47
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public setSpace(I)V
    .registers 2

    .line 21
    iput p1, p0, Lio/blueflower/stapel2d/gui/FlowLayout;->space:I

    return-void
.end method
