###### Class io.bidmachine.media3.exoplayer.video.spherical.FrameRotationQueue (io.bidmachine.media3.exoplayer.video.spherical.FrameRotationQueue)
.class public final Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;
.super Ljava/lang/Object;
.source "FrameRotationQueue.java"


# instance fields
.field public final recenterMatrix:[F

.field public recenterMatrixComputed:Z

.field public final rotationMatrix:[F

.field public final rotations:Lio/bidmachine/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/TimedValueQueue<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 38
    new-array v1, v0, [F

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    .line 39
    new-array v0, v0, [F

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    .line 40
    new-instance v0, Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Lio/bidmachine/media3/common/util/TimedValueQueue;

    return-void
.end method

.method public static computeRecenterMatrix([F[F)V
    .registers 8

    .line 100
    invoke-static {p0}, Lio/bidmachine/media3/common/util/GlUtil;->setToIdentity([F)V

    const/16 v0, 0xa

    .line 101
    aget v1, p1, v0

    mul-float/2addr v1, v1

    const/16 v2, 0x8

    aget v3, p1, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    .line 103
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 104
    aget v3, p1, v0

    div-float v4, v3, v1

    const/4 v5, 0x0

    aput v4, p0, v5

    .line 105
    aget p1, p1, v2

    div-float v4, p1, v1

    const/4 v5, 0x2

    aput v4, p0, v5

    neg-float p1, p1

    div-float/2addr p1, v1

    .line 106
    aput p1, p0, v2

    div-float/2addr v3, v1

    .line 107
    aput v3, p0, v0

    return-void
.end method

.method public static getRotationMatrixFromAngleAxis([F[F)V
    .registers 13

    const/4 v0, 0x0

    .line 114
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 115
    aget v1, p1, v1

    neg-float v1, v1

    const/4 v2, 0x2

    .line 116
    aget p1, p1, v2

    neg-float p1, p1

    .line 117
    invoke-static {v0, v1, p1}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_26

    float-to-double v3, v2

    .line 119
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v7, v3

    div-float v8, v0, v2

    div-float v9, v1, v2

    div-float v10, p1, v2

    const/4 v6, 0x0

    move-object v5, p0

    .line 120
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void

    :cond_26
    move-object v5, p0

    .line 122
    invoke-static {v5}, Lio/bidmachine/media3/common/util/GlUtil;->setToIdentity([F)V

    return-void
.end method


# virtual methods
.method public pollRotationMatrix([FJ)Z
    .registers 11

    .line 70
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, p2, p3}, Lio/bidmachine/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [F

    if-nez p2, :cond_c

    const/4 p1, 0x0

    return p1

    .line 75
    :cond_c
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {p3, p2}, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->getRotationMatrixFromAngleAxis([F[F)V

    .line 76
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    const/4 p3, 0x1

    if-nez p2, :cond_1f

    .line 77
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    invoke-static {p2, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    .line 78
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    .line 80
    :cond_1f
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return p3
.end method

.method public reset()V
    .registers 2

    .line 56
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/TimedValueQueue;->clear()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    return-void
.end method

.method public setRotation(J[F)V
    .registers 5

    .line 51
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    return-void
.end method
