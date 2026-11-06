###### Class info.flowersoft.theotown.ui.FillLineLayout (info.flowersoft.theotown.ui.FillLineLayout)
.class public Linfo/flowersoft/theotown/ui/FillLineLayout;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "FillLineLayout.java"


# instance fields
.field public alignment:I

.field public spacing:I


# direct methods
.method public constructor <init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 14

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    .line 14
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 15
    iput p1, v0, Linfo/flowersoft/theotown/ui/FillLineLayout;->alignment:I

    .line 16
    iput p2, v0, Linfo/flowersoft/theotown/ui/FillLineLayout;->spacing:I

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 45
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public layout()V
    .registers 9

    .line 21
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    .line 22
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    .line 24
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_54

    .line 25
    iget v2, p0, Linfo/flowersoft/theotown/ui/FillLineLayout;->alignment:I

    if-eqz v2, :cond_15

    goto :goto_54

    .line 28
    :cond_15
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Linfo/flowersoft/theotown/ui/FillLineLayout;->spacing:I

    mul-int/2addr v2, v3

    sub-int v2, v0, v2

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 29
    :goto_2c
    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_54

    .line 30
    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/gui/Gadget;

    .line 31
    iget-object v7, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_49

    sub-int v7, v0, v5

    goto :goto_4a

    :cond_49
    move v7, v2

    :goto_4a
    invoke-virtual {v6, v5, v3, v7, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 32
    iget v6, p0, Linfo/flowersoft/theotown/ui/FillLineLayout;->spacing:I

    add-int/2addr v6, v2

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 40
    :cond_54
    :goto_54
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method
