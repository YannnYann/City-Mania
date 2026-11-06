###### Class io.blueflower.stapel2d.gui.MultiSensitiveGadget (io.blueflower.stapel2d.gui.MultiSensitiveGadget)
.class public Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "MultiSensitiveGadget.java"


# instance fields
.field public activeTouchPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/touch/TouchPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 6

    .line 23
    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p1, p0

    .line 24
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->activeTouchPoints:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->activeTouchPoints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    .line 77
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->activeTouchPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->flush()V

    return-void
.end method

.method public getTouchPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/touch/TouchPoint;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->activeTouchPoints:Ljava/util/List;

    return-object v0
.end method

.method public onNewTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onRemoveTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 2

    .line 0
    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 7

    .line 29
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getAddedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getRemovedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getAddedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v2

    if-nez v2, :cond_33

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getRemovedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v2

    if-nez v2, :cond_33

    .line 34
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 36
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v2, v3, p1}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 37
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getCursor()Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object p1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    if-eqz v0, :cond_60

    .line 42
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->activeTouchPoints:Ljava/util/List;

    .line 43
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 44
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->activeTouchPoints:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->onNewTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;)V

    :cond_60
    if-eqz v1, :cond_72

    .line 48
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->activeTouchPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 49
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->activeTouchPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->onRemoveTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;)V

    :cond_72
    const/4 v0, 0x0

    .line 53
    :goto_73
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->activeTouchPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_96

    .line 54
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->activeTouchPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 55
    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->isValid()Z

    move-result v2

    if-nez v2, :cond_93

    .line 56
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->onRemoveTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;)V

    .line 57
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->activeTouchPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_96
    return-object p1
.end method
