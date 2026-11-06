###### Class info.flowersoft.theotown.ui.TouchPane (info.flowersoft.theotown.ui.TouchPane)
.class public abstract Linfo/flowersoft/theotown/ui/TouchPane;
.super Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;
.source "TouchPane.java"


# instance fields
.field public coordsType:I

.field public pendingClick:Z

.field public pendingTwoFingerClick:Z


# direct methods
.method public constructor <init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 13

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 35
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, v0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingClick:Z

    .line 27
    iput-boolean p2, v0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingTwoFingerClick:Z

    .line 36
    iput p1, v0, Linfo/flowersoft/theotown/ui/TouchPane;->coordsType:I

    return-void
.end method

.method public constructor <init>(ILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3

    .line 30
    invoke-direct {p0, p2}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingClick:Z

    .line 27
    iput-boolean p2, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingTwoFingerClick:Z

    .line 31
    iput p1, p0, Linfo/flowersoft/theotown/ui/TouchPane;->coordsType:I

    return-void
.end method


# virtual methods
.method public abstract clickAt(IILio/blueflower/stapel2d/touch/TouchPoint;)V
.end method

.method public getHeightRatio()F
    .registers 4

    .line 50
    iget v0, p0, Linfo/flowersoft/theotown/ui/TouchPane;->coordsType:I

    if-nez v0, :cond_d

    .line 51
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v0

    return v0

    :cond_d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 53
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v0

    return v0

    .line 55
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coords type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Linfo/flowersoft/theotown/ui/TouchPane;->coordsType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidthRatio()F
    .registers 4

    .line 40
    iget v0, p0, Linfo/flowersoft/theotown/ui/TouchPane;->coordsType:I

    if-nez v0, :cond_d

    .line 41
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v0

    return v0

    :cond_d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 43
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v0

    return v0

    .line 45
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coords type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Linfo/flowersoft/theotown/ui/TouchPane;->coordsType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onNewTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 6

    .line 61
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->onNewTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;)V

    .line 64
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingClick:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->getTouchPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iput-boolean v0, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingTwoFingerClick:Z

    .line 65
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->getTouchPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2e

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->getTouchPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2e

    move v1, v2

    :cond_2e
    iput-boolean v1, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingClick:Z

    return-void
.end method

.method public onRemoveTouchPoint(Lio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 12

    .line 70
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->isPrimary()Z

    move-result v0

    const/16 v1, 0x14

    const-wide/16 v2, 0x190

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_b0

    .line 71
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v2

    if-gtz v0, :cond_b0

    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingClick:Z

    if-eqz v0, :cond_b0

    .line 74
    iput-boolean v5, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingClick:Z

    .line 75
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 79
    iget v2, p0, Linfo/flowersoft/theotown/ui/TouchPane;->coordsType:I

    if-nez v2, :cond_30

    .line 80
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v2

    .line 81
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v0

    goto :goto_3e

    :cond_30
    if-ne v2, v4, :cond_92

    .line 84
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v2

    .line 85
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v0

    .line 91
    :goto_3e
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v5

    mul-float/2addr v3, v5

    .line 92
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v6

    mul-float/2addr v5, v6

    mul-float/2addr v3, v3

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    float-to-double v5, v3

    .line 93
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->isMouse()Z

    move-result v3

    if-eqz v3, :cond_6d

    move v1, v4

    :cond_6d
    int-to-double v3, v1

    cmpg-double v1, v5, v3

    if-gtz v1, :cond_10c

    .line 94
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v2

    sub-int/2addr v1, v2

    .line 95
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v2

    sub-int/2addr v0, v2

    .line 94
    invoke-virtual {p0, v1, v0, p1}, Linfo/flowersoft/theotown/ui/TouchPane;->clickAt(IILio/blueflower/stapel2d/touch/TouchPoint;)V

    return-void

    .line 88
    :cond_92
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Coords type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/ui/TouchPane;->coordsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not defined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_b0
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingTwoFingerClick:Z

    if-eqz v0, :cond_10d

    .line 99
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v6

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v2

    if-gtz v0, :cond_10d

    .line 101
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v2

    mul-float/2addr v0, v2

    .line 102
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    float-to-double v2, v0

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchPoint;->isMouse()Z

    move-result p1

    if-eqz p1, :cond_f0

    move v1, v4

    :cond_f0
    int-to-double v0, v1

    cmpl-double p1, v2, v0

    if-lez p1, :cond_f7

    .line 104
    iput-boolean v5, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingTwoFingerClick:Z

    .line 107
    :cond_f7
    iget-boolean p1, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingTwoFingerClick:Z

    if-eqz p1, :cond_10c

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/MultiSensitiveGadget;->getTouchPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10c

    .line 108
    iput-boolean v5, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingClick:Z

    .line 109
    iput-boolean v5, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingTwoFingerClick:Z

    .line 111
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/TouchPane;->twoFingerClick()V

    :cond_10c
    return-void

    .line 114
    :cond_10d
    iput-boolean v5, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingClick:Z

    .line 115
    iput-boolean v5, p0, Linfo/flowersoft/theotown/ui/TouchPane;->pendingTwoFingerClick:Z

    return-void
.end method

.method public abstract twoFingerClick()V
.end method
