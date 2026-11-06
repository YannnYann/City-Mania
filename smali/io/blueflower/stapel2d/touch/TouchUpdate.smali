###### Class io.blueflower.stapel2d.touch.TouchUpdate (io.blueflower.stapel2d.touch.TouchUpdate)
.class public final Lio/blueflower/stapel2d/touch/TouchUpdate;
.super Ljava/lang/Object;
.source "TouchUpdate.java"


# instance fields
.field public add:Lio/blueflower/stapel2d/touch/TouchPoint;

.field public final mousePos:Lio/blueflower/stapel2d/touch/TouchPoint;

.field public remove:Lio/blueflower/stapel2d/touch/TouchPoint;

.field public scrollChange:F


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/touch/TouchPoint;Lio/blueflower/stapel2d/touch/TouchPoint;FLio/blueflower/stapel2d/touch/TouchPoint;)V
    .registers 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/blueflower/stapel2d/touch/TouchUpdate;->add:Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 15
    iput-object p2, p0, Lio/blueflower/stapel2d/touch/TouchUpdate;->remove:Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 16
    iput p3, p0, Lio/blueflower/stapel2d/touch/TouchUpdate;->scrollChange:F

    .line 17
    iput-object p4, p0, Lio/blueflower/stapel2d/touch/TouchUpdate;->mousePos:Lio/blueflower/stapel2d/touch/TouchPoint;

    return-void
.end method


# virtual methods
.method public clearAddedTouchPoint()V
    .registers 2

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lio/blueflower/stapel2d/touch/TouchUpdate;->add:Lio/blueflower/stapel2d/touch/TouchPoint;

    return-void
.end method

.method public clearScrollChange()V
    .registers 2

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lio/blueflower/stapel2d/touch/TouchUpdate;->scrollChange:F

    return-void
.end method

.method public getAddedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;
    .registers 2

    .line 21
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchUpdate;->add:Lio/blueflower/stapel2d/touch/TouchPoint;

    return-object v0
.end method

.method public getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;
    .registers 2

    .line 45
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchUpdate;->mousePos:Lio/blueflower/stapel2d/touch/TouchPoint;

    return-object v0
.end method

.method public getRemovedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;
    .registers 2

    .line 25
    iget-object v0, p0, Lio/blueflower/stapel2d/touch/TouchUpdate;->remove:Lio/blueflower/stapel2d/touch/TouchPoint;

    return-object v0
.end method

.method public getScrollChange()F
    .registers 2

    .line 37
    iget v0, p0, Lio/blueflower/stapel2d/touch/TouchUpdate;->scrollChange:F

    return v0
.end method
