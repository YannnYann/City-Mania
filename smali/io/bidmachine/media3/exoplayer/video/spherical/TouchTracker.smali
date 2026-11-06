###### Class io.bidmachine.media3.exoplayer.video.spherical.TouchTracker (io.bidmachine.media3.exoplayer.video.spherical.TouchTracker)
.class public final Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchTracker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker$Listener;
    }
.end annotation


# instance fields
.field public final accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

.field public final gestureDetector:Landroid/view/GestureDetector;

.field public final listener:Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker$Listener;

.field public final previousTouchPointPx:Landroid/graphics/PointF;

.field public final pxPerDegrees:F

.field public volatile roll:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker$Listener;F)V
    .registers 5

    .line 73
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    .line 63
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    .line 74
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->listener:Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker$Listener;

    .line 75
    iput p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->pxPerDegrees:F

    .line 76
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    const p1, 0x40490fdb    # (float)Math.PI

    .line 77
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->roll:F

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 93
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOrientationChange([FF)V
    .registers 3

    neg-float p1, p2

    .line 132
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->roll:F

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p3

    iget p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->pxPerDegrees:F

    div-float/2addr p1, p3

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    iget v0, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, v0

    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->pxPerDegrees:F

    div-float/2addr p3, v0

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p4, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 106
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->roll:F

    float-to-double v0, p2

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p4, v0

    .line 113
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float v2, p2, p1

    mul-float v3, p4, p3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 115
    iget v1, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p4, p1

    mul-float/2addr p2, p3

    add-float/2addr p4, p2

    add-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/high16 p1, 0x42340000    # 45.0f

    .line 117
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, -0x3dcc0000    # -45.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 119
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->listener:Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker$Listener;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker$Listener;->onScrollChange(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 125
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->listener:Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker$Listener;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker$Listener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 87
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.video.spherical.TouchTracker.Listener (io.bidmachine.media3.exoplayer.video.spherical.TouchTracker$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker$Listener;
.super Ljava/lang/Object;
.source "TouchTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onScrollChange(Landroid/graphics/PointF;)V
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method
