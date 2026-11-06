###### Class io.blueflower.stapel2d.gui.Gadget (io.blueflower.stapel2d.gui.Gadget)
.class public abstract Lio/blueflower/stapel2d/gui/Gadget;
.super Ljava/lang/Object;
.source "Gadget.java"


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            ">;"
        }
    .end annotation
.end field

.field public enabled:Z

.field public fillParent:Z

.field public filter:Lio/blueflower/stapel2d/gui/GadgetFilter;

.field public height:I

.field public id:Ljava/lang/String;

.field public keySensitiveWhenInactive:Z

.field public master:Lio/blueflower/stapel2d/gui/Master;

.field public maxHeight:I

.field public maxWidth:I

.field public minHeight:I

.field public minWidth:I

.field public paddingBottom:I

.field public paddingLeft:I

.field public paddingRight:I

.field public paddingTop:I

.field public parent:Lio/blueflower/stapel2d/gui/Gadget;

.field public rect:Lio/blueflower/stapel2d/util/ScreenRect;

.field public sensitiveKeyModifiers:Lio/blueflower/stapel2d/util/IntList;

.field public sensitiveKeys:Lio/blueflower/stapel2d/util/IntList;

.field public skin:Lio/blueflower/stapel2d/gui/Skin;

.field public visible:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 12

    .line 95
    iget-object v5, p5, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 97
    invoke-virtual {p5, p0}, Lio/blueflower/stapel2d/gui/Gadget;->addChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 98
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/gui/Master;

    iput-object p1, v0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    .line 100
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 8

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lio/blueflower/stapel2d/util/ScreenRect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lio/blueflower/stapel2d/util/ScreenRect;-><init>(FFFF)V

    iput-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    .line 73
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    iput-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeys:Lio/blueflower/stapel2d/util/IntList;

    .line 74
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    iput-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeyModifiers:Lio/blueflower/stapel2d/util/IntList;

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->enabled:Z

    .line 84
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->keySensitiveWhenInactive:Z

    .line 104
    iput p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    .line 105
    iput p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    .line 106
    iput p3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 107
    iput p4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 108
    iput-object p5, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    .line 113
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->visible:Z

    .line 115
    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->minWidth:I

    .line 116
    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->minHeight:I

    const p1, 0x7fffffff

    .line 117
    iput p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->maxWidth:I

    .line 118
    iput p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->maxHeight:I

    .line 120
    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    .line 121
    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    .line 122
    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    .line 123
    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingBottom:I

    .line 125
    iput-boolean v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->fillParent:Z

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 87
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, v0, Lio/blueflower/stapel2d/gui/Gadget;->fillParent:Z

    .line 91
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method


# virtual methods
.method public addChild(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3

    .line 426
    iget-object v0, p1, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    if-eqz v0, :cond_9

    .line 427
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 430
    :cond_9
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iput-object p0, p1, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 433
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->parentHasToLayout()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 434
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    :cond_19
    return-void
.end method

.method public addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;
    .registers 3

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(II)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    return-object p1
.end method

.method public addSensitiveKey(II)Lio/blueflower/stapel2d/gui/Gadget;
    .registers 4

    .line 174
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeys:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 175
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeyModifiers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-object p0
.end method

.method public clearSensitiveKeys()V
    .registers 2

    .line 200
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeys:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 201
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeyModifiers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    return-void
.end method

.method public countChildren()I
    .registers 2

    .line 456
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public dontFillParent()V
    .registers 2

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->fillParent:Z

    .line 135
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public draw(II)V
    .registers 3

    .line 578
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public drawChildren(II)V
    .registers 11

    .line 582
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 583
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr p1, p2

    .line 585
    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p2, p2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 586
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v1

    .line 587
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v2

    .line 588
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v3

    .line 589
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v4

    const/4 v5, 0x0

    .line 591
    :goto_29
    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5c

    .line 592
    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/gui/Gadget;

    .line 593
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 594
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getFilter()Lio/blueflower/stapel2d/gui/GadgetFilter;

    move-result-object v7

    .line 596
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 598
    invoke-virtual {p2, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 599
    invoke-virtual {p2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    if-eqz v7, :cond_51

    .line 600
    invoke-interface {v7, v6, v0, p1}, Lio/blueflower/stapel2d/gui/GadgetFilter;->beforeDrawing(Lio/blueflower/stapel2d/gui/Gadget;II)V

    .line 601
    :cond_51
    invoke-virtual {v6, v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->draw(II)V

    if-eqz v7, :cond_59

    .line 602
    invoke-interface {v7, v6, v0, p1}, Lio/blueflower/stapel2d/gui/GadgetFilter;->afterDrawing(Lio/blueflower/stapel2d/gui/Gadget;II)V

    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_5c
    return-void
.end method

.method public drawNinePatch(III)V
    .registers 10

    .line 625
    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    return-void
.end method

.method public drawNinePatch(IIIII)V
    .registers 14

    .line 629
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    int-to-float v4, p1

    int-to-float v5, p3

    int-to-float v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void
.end method

.method public fillParent()V
    .registers 2

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->fillParent:Z

    .line 130
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public findChildWithId(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Gadget;
    .registers 4

    .line 147
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 149
    :cond_b
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_13
    if-ltz v0, :cond_27

    .line 150
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/gui/Gadget;->findChildWithId(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    if-eqz v1, :cond_24

    return-object v1

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public fitChildren()V
    .registers 7

    .line 646
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/Gadget;

    .line 647
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v4

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 648
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v4

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_8

    .line 651
    :cond_2f
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    add-int/2addr v0, v3

    add-int/2addr v1, v0

    .line 652
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingBottom:I

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 654
    invoke-virtual {p0, v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    return-void
.end method

.method public flush()V
    .registers 3

    const/4 v0, 0x0

    .line 572
    :goto_1
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 573
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->flush()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public free()V
    .registers 3

    const/4 v0, 0x0

    .line 658
    :goto_1
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 659
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 661
    :cond_17
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;
    .registers 2

    .line 418
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    if-eqz v0, :cond_9

    .line 419
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    return-object v0

    :cond_9
    return-object p0
.end method

.method public getAbsoluteX()I
    .registers 3

    .line 364
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    if-nez v0, :cond_7

    .line 365
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    return v0

    .line 367
    :cond_7
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getAbsoluteY()I
    .registers 3

    .line 372
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    if-nez v0, :cond_7

    .line 373
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    return v0

    .line 375
    :cond_7
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getChild(I)Lio/blueflower/stapel2d/gui/Gadget;
    .registers 3

    .line 460
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/gui/Gadget;

    return-object p1
.end method

.method public getChildIndex()I
    .registers 2

    .line 490
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    if-eqz v0, :cond_b

    .line 491
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public getClientHeight()I
    .registers 3

    .line 265
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingBottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getClientWidth()I
    .registers 3

    .line 261
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCursor()Linfo/flowersoft/theotown/ui/CursorType;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter()Lio/blueflower/stapel2d/gui/GadgetFilter;
    .registers 3

    .line 158
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->filter:Lio/blueflower/stapel2d/gui/GadgetFilter;

    if-nez v0, :cond_e

    .line 159
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    if-eq v1, p0, :cond_e

    if-eqz v1, :cond_e

    .line 160
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getFilter()Lio/blueflower/stapel2d/gui/GadgetFilter;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 257
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxHeight()I
    .registers 2

    .line 360
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->maxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 356
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->maxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .line 352
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->minHeight:I

    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 348
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->minWidth:I

    return v0
.end method

.method public final getPaddingBottom()I
    .registers 2

    .line 410
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingBottom:I

    return v0
.end method

.method public final getPaddingLeft()I
    .registers 2

    .line 398
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    return v0
.end method

.method public final getPaddingRight()I
    .registers 2

    .line 406
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    return v0
.end method

.method public final getPaddingTop()I
    .registers 2

    .line 402
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    return v0
.end method

.method public getParent()Lio/blueflower/stapel2d/gui/Gadget;
    .registers 2

    .line 414
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    return-object v0
.end method

.method public getSkin()Lio/blueflower/stapel2d/gui/Skin;
    .registers 2

    .line 241
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 253
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    return v0
.end method

.method public final getX()I
    .registers 2

    .line 245
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    return v0
.end method

.method public final getY()I
    .registers 2

    .line 249
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    return v0
.end method

.method public isChildOf(Lio/blueflower/stapel2d/gui/Gadget;)Z
    .registers 4

    .line 450
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_8

    return v1

    .line 452
    :cond_8
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->isChildOf(Lio/blueflower/stapel2d/gui/Gadget;)Z

    move-result p1

    if-eqz p1, :cond_19

    return v1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public isClickable()Z
    .registers 2

    .line 566
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getFilter()Lio/blueflower/stapel2d/gui/GadgetFilter;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 568
    invoke-interface {v0, p0}, Lio/blueflower/stapel2d/gui/GadgetFilter;->allowClick(Lio/blueflower/stapel2d/gui/Gadget;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 558
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->enabled:Z

    return v0
.end method

.method public isFillParent()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->fillParent:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 269
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->visible:Z

    return v0
.end method

.method public layout()V
    .registers 6

    .line 205
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-boolean v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->fillParent:Z

    if-eqz v2, :cond_1b

    .line 206
    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    .line 207
    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    .line 208
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 209
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 212
    :cond_1b
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->maxWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->minWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 213
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->maxHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->minHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 215
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    if-nez v0, :cond_4d

    .line 216
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 217
    instance-of v2, v0, Lio/blueflower/stapel2d/gui/Master;

    if-eqz v2, :cond_4a

    check-cast v0, Lio/blueflower/stapel2d/gui/Master;

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    iput-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    .line 219
    :cond_4d
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v0

    goto :goto_59

    :cond_58
    move v0, v2

    .line 220
    :goto_59
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    if-eqz v3, :cond_61

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v2

    .line 222
    :cond_61
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/ScreenRect;->setX(F)V

    .line 223
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/ScreenRect;->setY(F)V

    .line 224
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/util/ScreenRect;->setWidth(F)V

    .line 225
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/ScreenRect;->setHeight(F)V

    .line 227
    :goto_9d
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b3

    .line 228
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    :cond_b3
    return-void
.end method

.method public onClick()V
    .registers 1

    .line 0
    return-void
.end method

.method public onPress()V
    .registers 1

    .line 0
    return-void
.end method

.method public onRelease()V
    .registers 1

    .line 0
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 0
    return-void
.end method

.method public parentHasToLayout()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public performOnClick()V
    .registers 3

    .line 547
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getFilter()Lio/blueflower/stapel2d/gui/GadgetFilter;

    move-result-object v0

    .line 549
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Lio/blueflower/stapel2d/gui/GadgetFilter;->allowClick(Lio/blueflower/stapel2d/gui/Gadget;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_12
    if-eqz v0, :cond_17

    .line 550
    invoke-interface {v0, p0}, Lio/blueflower/stapel2d/gui/GadgetFilter;->onClick(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 551
    :cond_17
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onPress()V

    .line 552
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onClick()V

    .line 553
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onRelease()V

    :cond_20
    return-void
.end method

.method public push()V
    .registers 2

    .line 498
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    if-eqz v0, :cond_c

    .line 499
    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/gui/Gadget;->pushChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 500
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    :cond_c
    return-void
.end method

.method public pushChild(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 4

    .line 468
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_20

    .line 469
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method public pushChildToBack(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 4

    .line 475
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1b

    .line 476
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public pushToBack()V
    .registers 2

    .line 505
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    if-eqz v0, :cond_7

    .line 506
    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/gui/Gadget;->pushChildToBack(Lio/blueflower/stapel2d/gui/Gadget;)V

    :cond_7
    return-void
.end method

.method public removeAllChildren()V
    .registers 3

    .line 464
    :goto_0
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    goto :goto_0

    :cond_15
    return-void
.end method

.method public removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3

    .line 443
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 444
    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 445
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 446
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public removeSensitiveKey(II)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 180
    :goto_2
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeys:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 181
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeys:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    if-ne v2, p1, :cond_26

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeyModifiers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    if-ne v2, p2, :cond_26

    .line 182
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeys:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    .line 183
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeyModifiers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    const/4 p1, 0x1

    return p1

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_29
    return v0
.end method

.method public reset()V
    .registers 1

    .line 633
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->resetChildren()V

    return-void
.end method

.method public resetChildren()V
    .registers 3

    .line 637
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    .line 638
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->reset()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setAbsolutePosition(II)V
    .registers 5

    .line 332
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    return-void
.end method

.method public setChildIndex(I)V
    .registers 3

    .line 482
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 483
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0, p1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 485
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    :cond_1f
    return-void
.end method

.method public setClientHeight(I)V
    .registers 3

    .line 316
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    return-void
.end method

.method public setClientSize(II)V
    .registers 4

    .line 323
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 324
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 323
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    return-void
.end method

.method public setClientWidth(I)V
    .registers 3

    .line 309
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 562
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->enabled:Z

    return-void
.end method

.method public setFillParent(Z)V
    .registers 2

    .line 237
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->fillParent:Z

    return-void
.end method

.method public setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->filter:Lio/blueflower/stapel2d/gui/GadgetFilter;

    return-void
.end method

.method public setHeight(I)V
    .registers 5

    .line 298
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->id:Ljava/lang/String;

    return-void
.end method

.method public setKeySensitiveWhenInactive(Z)V
    .registers 2

    .line 523
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->keySensitiveWhenInactive:Z

    return-void
.end method

.method public setMaximumSize(II)V
    .registers 3

    .line 342
    iput p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->maxWidth:I

    .line 343
    iput p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->maxHeight:I

    .line 344
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public setMinimumSize(II)V
    .registers 3

    .line 336
    iput p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->minWidth:I

    .line 337
    iput p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->minHeight:I

    .line 338
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public setPadding(I)V
    .registers 2

    .line 380
    invoke-virtual {p0, p1, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(II)V

    return-void
.end method

.method public setPadding(II)V
    .registers 3

    .line 384
    invoke-virtual {p0, p1, p2, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 6

    .line 388
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    if-ne p1, v0, :cond_11

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    if-ne p2, v0, :cond_11

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    if-ne p3, v0, :cond_11

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingBottom:I

    if-ne p4, v0, :cond_11

    return-void

    .line 389
    :cond_11
    iput p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    .line 390
    iput p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    .line 391
    iput p3, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingRight:I

    .line 392
    iput p4, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingBottom:I

    .line 394
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public setPosition(II)V
    .registers 5

    .line 328
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    return-void
.end method

.method public setShape(IIII)V
    .registers 5

    .line 277
    iput p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    .line 278
    iput p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    .line 279
    iput p3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    .line 280
    iput p4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 282
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public setSize(II)V
    .registers 5

    .line 302
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 273
    iput-boolean p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->visible:Z

    return-void
.end method

.method public setWidth(I)V
    .registers 5

    .line 294
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    invoke-virtual {p0, v0, v1, p1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    return-void
.end method

.method public setX(I)V
    .registers 5

    .line 286
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    return-void
.end method

.method public setY(I)V
    .registers 5

    .line 290
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    invoke-virtual {p0, v0, p1, v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    return-void
.end method

.method public final update()V
    .registers 1

    .line 621
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    return-void
.end method

.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 5

    .line 527
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->keySensitiveWhenInactive:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    if-eqz v0, :cond_13

    iget-boolean v0, v0, Lio/blueflower/stapel2d/gui/Gadget;->visible:Z

    if-nez v0, :cond_13

    goto :goto_5d

    .line 531
    :cond_13
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_33

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 532
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    .line 533
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 536
    :cond_33
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeys:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    const/4 v0, 0x0

    .line 537
    :goto_3c
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeys:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 538
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeys:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->sensitiveKeyModifiers:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(II)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 539
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->performOnClick()V

    return-void

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_5d
    :goto_5d
    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 6

    .line 512
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_2d

    .line 513
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Gadget;

    .line 514
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 515
    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v2

    if-eqz v2, :cond_20

    move-object v1, v2

    .line 512
    :cond_20
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_2d
    return-object v1
.end method
