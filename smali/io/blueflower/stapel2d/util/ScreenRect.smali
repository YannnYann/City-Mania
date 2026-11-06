###### Class io.blueflower.stapel2d.util.ScreenRect (io.blueflower.stapel2d.util.ScreenRect)
.class public final Lio/blueflower/stapel2d/util/ScreenRect;
.super Ljava/lang/Object;
.source "ScreenRect.java"


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lio/blueflower/stapel2d/util/ScreenRect;->x:F

    .line 13
    iput p2, p0, Lio/blueflower/stapel2d/util/ScreenRect;->y:F

    .line 14
    iput p3, p0, Lio/blueflower/stapel2d/util/ScreenRect;->width:F

    .line 15
    iput p4, p0, Lio/blueflower/stapel2d/util/ScreenRect;->height:F

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .registers 6

    .line 23
    iget v0, p0, Lio/blueflower/stapel2d/util/ScreenRect;->x:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1c

    iget v1, p0, Lio/blueflower/stapel2d/util/ScreenRect;->y:F

    cmpl-float v2, p2, v1

    if-ltz v2, :cond_1c

    iget v2, p0, Lio/blueflower/stapel2d/util/ScreenRect;->width:F

    add-float/2addr v0, v2

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1c

    iget p1, p0, Lio/blueflower/stapel2d/util/ScreenRect;->height:F

    add-float/2addr v1, p1

    cmpg-float p1, p2, v1

    if-gtz p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public getCenterX()F
    .registers 4

    .line 66
    iget v0, p0, Lio/blueflower/stapel2d/util/ScreenRect;->x:F

    const/high16 v1, 0x3f000000    # 0.5f

    iget v2, p0, Lio/blueflower/stapel2d/util/ScreenRect;->width:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public getCenterY()F
    .registers 4

    .line 70
    iget v0, p0, Lio/blueflower/stapel2d/util/ScreenRect;->x:F

    const/high16 v1, 0x3f000000    # 0.5f

    iget v2, p0, Lio/blueflower/stapel2d/util/ScreenRect;->height:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public getHeight()F
    .registers 2

    .line 58
    iget v0, p0, Lio/blueflower/stapel2d/util/ScreenRect;->height:F

    return v0
.end method

.method public getWidth()F
    .registers 2

    .line 50
    iget v0, p0, Lio/blueflower/stapel2d/util/ScreenRect;->width:F

    return v0
.end method

.method public getX()F
    .registers 2

    .line 34
    iget v0, p0, Lio/blueflower/stapel2d/util/ScreenRect;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 42
    iget v0, p0, Lio/blueflower/stapel2d/util/ScreenRect;->y:F

    return v0
.end method

.method public setHeight(F)V
    .registers 2

    .line 62
    iput p1, p0, Lio/blueflower/stapel2d/util/ScreenRect;->height:F

    return-void
.end method

.method public setWidth(F)V
    .registers 2

    .line 54
    iput p1, p0, Lio/blueflower/stapel2d/util/ScreenRect;->width:F

    return-void
.end method

.method public setX(F)V
    .registers 2

    .line 38
    iput p1, p0, Lio/blueflower/stapel2d/util/ScreenRect;->x:F

    return-void
.end method

.method public setY(F)V
    .registers 2

    .line 46
    iput p1, p0, Lio/blueflower/stapel2d/util/ScreenRect;->y:F

    return-void
.end method
