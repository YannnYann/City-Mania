###### Class io.blueflower.stapel2d.gui.LineLayout (io.blueflower.stapel2d.gui.LineLayout)
.class public Lio/blueflower/stapel2d/gui/LineLayout;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "LineLayout.java"


# instance fields
.field public actualHeight:I

.field public actualWidth:I

.field public align:F

.field public alignment:I

.field public floatTo:F

.field public floating:Z

.field public omitInvisibleChildren:Z

.field public reversed:Z

.field public space:I


# direct methods
.method public constructor <init>(FIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 5

    .line 24
    invoke-direct {p0, p4}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p4, 0x1

    .line 14
    iput-boolean p4, p0, Lio/blueflower/stapel2d/gui/LineLayout;->omitInvisibleChildren:Z

    .line 26
    iput p1, p0, Lio/blueflower/stapel2d/gui/LineLayout;->align:F

    .line 27
    iput p2, p0, Lio/blueflower/stapel2d/gui/LineLayout;->alignment:I

    .line 28
    iput p3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->space:I

    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .registers 2

    .line 99
    iget v0, p0, Lio/blueflower/stapel2d/gui/LineLayout;->actualHeight:I

    return v0
.end method

.method public getActualWidth()I
    .registers 2

    .line 95
    iget v0, p0, Lio/blueflower/stapel2d/gui/LineLayout;->actualWidth:I

    return v0
.end method

.method public getSpace()I
    .registers 2

    .line 103
    iget v0, p0, Lio/blueflower/stapel2d/gui/LineLayout;->space:I

    return v0
.end method

.method public isOmitInvisibleChildren()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/LineLayout;->omitInvisibleChildren:Z

    return v0
.end method

.method public isReversed()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/LineLayout;->reversed:Z

    return v0
.end method

.method public layout()V
    .registers 8

    .line 48
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 50
    iget v0, p0, Lio/blueflower/stapel2d/gui/LineLayout;->space:I

    neg-int v1, v0

    neg-int v0, v0

    const/4 v2, 0x0

    move v3, v2

    .line 52
    :goto_9
    iget-object v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_43

    .line 53
    iget-object v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    iget-boolean v6, p0, Lio/blueflower/stapel2d/gui/LineLayout;->reversed:Z

    if-eqz v6, :cond_1f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    sub-int/2addr v6, v3

    goto :goto_20

    :cond_1f
    move v6, v3

    :goto_20
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/Gadget;

    .line 54
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v5

    if-nez v5, :cond_30

    iget-boolean v5, p0, Lio/blueflower/stapel2d/gui/LineLayout;->omitInvisibleChildren:Z

    if-nez v5, :cond_40

    .line 55
    :cond_30
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    iget v6, p0, Lio/blueflower/stapel2d/gui/LineLayout;->space:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 56
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    iget v5, p0, Lio/blueflower/stapel2d/gui/LineLayout;->space:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 59
    :cond_43
    iput v1, p0, Lio/blueflower/stapel2d/gui/LineLayout;->actualWidth:I

    .line 60
    iput v0, p0, Lio/blueflower/stapel2d/gui/LineLayout;->actualHeight:I

    .line 62
    iget v3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->alignment:I

    if-eqz v3, :cond_a4

    if-eq v3, v5, :cond_4f

    goto/16 :goto_f9

    .line 74
    :cond_4f
    iget v1, p0, Lio/blueflower/stapel2d/gui/LineLayout;->align:F

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 75
    :goto_59
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_f9

    .line 76
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    iget-boolean v3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->reversed:Z

    if-eqz v3, :cond_6e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    goto :goto_6f

    :cond_6e
    move v3, v2

    :goto_6f
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    .line 77
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v3

    if-nez v3, :cond_7f

    iget-boolean v3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->omitInvisibleChildren:Z

    if-nez v3, :cond_a1

    .line 78
    :cond_7f
    iget-boolean v3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->floating:Z

    if-nez v3, :cond_88

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    goto :goto_96

    :cond_88
    iget v3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->floatTo:F

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_96
    invoke-virtual {v1, v3, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 79
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    iget v3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->space:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 64
    :cond_a4
    iget v0, p0, Lio/blueflower/stapel2d/gui/LineLayout;->align:F

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 65
    :goto_ae
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_f9

    .line 66
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    iget-boolean v3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->reversed:Z

    if-eqz v3, :cond_c3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    goto :goto_c4

    :cond_c3
    move v3, v2

    :goto_c4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    .line 67
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v3

    if-nez v3, :cond_d4

    iget-boolean v3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->omitInvisibleChildren:Z

    if-nez v3, :cond_f6

    .line 68
    :cond_d4
    iget-boolean v3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->floating:Z

    if-nez v3, :cond_dd

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    goto :goto_eb

    :cond_dd
    iget v3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->floatTo:F

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_eb
    invoke-virtual {v1, v0, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 69
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    iget v3, p0, Lio/blueflower/stapel2d/gui/LineLayout;->space:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_f6
    add-int/lit8 v2, v2, 0x1

    goto :goto_ae

    :cond_f9
    :goto_f9
    return-void
.end method

.method public setFloating(F)V
    .registers 3

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gui/LineLayout;->floating:Z

    .line 90
    iput p1, p0, Lio/blueflower/stapel2d/gui/LineLayout;->floatTo:F

    .line 91
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/LineLayout;->layout()V

    return-void
.end method

.method public setOmitInvisibleChildren(Z)V
    .registers 2

    .line 36
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/LineLayout;->omitInvisibleChildren:Z

    return-void
.end method

.method public setReversed(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/LineLayout;->reversed:Z

    return-void
.end method

.method public setSpace(I)V
    .registers 3

    const/4 v0, 0x0

    .line 107
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/gui/LineLayout;->space:I

    .line 108
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/LineLayout;->layout()V

    return-void
.end method
