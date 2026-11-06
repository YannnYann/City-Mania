###### Class io.bidmachine.media3.exoplayer.video.spherical.SceneRenderer (io.bidmachine.media3.exoplayer.video.spherical.SceneRenderer)
.class public final Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;
.super Ljava/lang/Object;
.source "SceneRenderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;
.implements Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;


# instance fields
.field public volatile defaultStereoMode:I

.field public final frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final frameRotationQueue:Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;

.field public lastProjectionData:[B

.field public lastStereoMode:I

.field public final projectionQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/TimedValueQueue<",
            "Lio/bidmachine/media3/exoplayer/video/spherical/Projection;",
            ">;"
        }
    .end annotation
.end field

.field public final projectionRenderer:Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionRenderer;

.field public final resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final rotationMatrix:[F

.field public final sampleTimestampQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/TimedValueQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public surfaceTexture:Landroid/graphics/SurfaceTexture;

.field public final tempMatrix:[F

.field public textureId:I


# direct methods
.method public static synthetic $r8$lambda$Iw3kqoukrY1iJIa6u4m9aM-LWwE(Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 103
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 103
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionRenderer;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionRenderer;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionRenderer;

    .line 66
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;

    .line 67
    new-instance v0, Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    .line 68
    new-instance v0, Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->projectionQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    const/16 v0, 0x10

    .line 69
    new-array v1, v0, [F

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    .line 70
    new-array v0, v0, [F

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->tempMatrix:[F

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->defaultStereoMode:I

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    return-void
.end method


# virtual methods
.method public drawFrame([FZ)V
    .registers 11

    .line 117
    const-string v1, "Failed to draw a frame"

    const-string v2, "SceneRenderer"

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 119
    :try_start_9
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V
    :try_end_c
    .catch Lio/bidmachine/media3/common/util/GlUtil$GlException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 121
    invoke-static {v2, v1, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :goto_11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 125
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 127
    :try_start_26
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V
    :try_end_29
    .catch Lio/bidmachine/media3/common/util/GlUtil$GlException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v0

    .line 129
    invoke-static {v2, v1, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :goto_2e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 132
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-static {v0}, Lio/bidmachine/media3/common/util/GlUtil;->setToIdentity([F)V

    .line 134
    :cond_3b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 135
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->poll(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_56

    .line 137
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->pollRotationMatrix([FJ)Z

    .line 139
    :cond_56
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->projectionQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;

    if-eqz v0, :cond_65

    .line 141
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionRenderer;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionRenderer;->setProjection(Lio/bidmachine/media3/exoplayer/video/spherical/Projection;)V

    .line 144
    :cond_65
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->tempMatrix:[F

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->rotationMatrix:[F

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 145
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionRenderer;

    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->textureId:I

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->tempMatrix:[F

    invoke-virtual {p1, v0, v1, p2}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionRenderer;->draw(I[FZ)V

    return-void
.end method

.method public init()Landroid/graphics/SurfaceTexture;
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 92
    :try_start_4
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 93
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    .line 95
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->projectionRenderer:Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionRenderer;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionRenderer;->init()V

    .line 96
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    .line 98
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->createExternalTexture()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->textureId:I
    :try_end_18
    .catch Lio/bidmachine/media3/common/util/GlUtil$GlException; {:try_start_4 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v0

    .line 100
    const-string v1, "SceneRenderer"

    const-string v2, "Failed to initialize the renderer"

    invoke-static {v1, v2, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :goto_21
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->textureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 103
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 104
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public onCameraMotion(J[F)V
    .registers 5

    .line 171
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->setRotation(J[F)V

    return-void
.end method

.method public onCameraMotionReset()V
    .registers 3

    .line 176
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/TimedValueQueue;->clear()V

    .line 177
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->frameRotationQueue:Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->reset()V

    .line 178
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V
    .registers 7

    .line 163
    iget-object p6, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->sampleTimestampQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p6, p3, p4, p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 164
    iget-object p1, p5, Lio/bidmachine/media3/common/Format;->projectionData:[B

    iget p2, p5, Lio/bidmachine/media3/common/Format;->stereoMode:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->setProjection([BIJ)V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .registers 2

    .line 82
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->defaultStereoMode:I

    return-void
.end method

.method public final setProjection([BIJ)V
    .registers 7

    .line 190
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    .line 191
    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    .line 192
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    const/4 p1, -0x1

    if-ne p2, p1, :cond_b

    .line 193
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->defaultStereoMode:I

    :cond_b
    iput p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    if-ne v1, p2, :cond_18

    .line 194
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_18

    return-void

    .line 199
    :cond_18
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->lastProjectionData:[B

    if-eqz p1, :cond_23

    .line 200
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionDecoder;->decode([BI)Lio/bidmachine/media3/exoplayer/video/spherical/Projection;

    move-result-object p1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    if-eqz p1, :cond_2d

    .line 203
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/spherical/ProjectionRenderer;->isSupported(Lio/bidmachine/media3/exoplayer/video/spherical/Projection;)Z

    move-result p2

    if-eqz p2, :cond_2d

    goto :goto_33

    .line 205
    :cond_2d
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->lastStereoMode:I

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;->createEquirectangular(I)Lio/bidmachine/media3/exoplayer/video/spherical/Projection;

    move-result-object p1

    .line 206
    :goto_33
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->projectionQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {p2, p3, p4, p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.spherical.SceneRenderer$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.video.spherical.SceneRenderer$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->$r8$lambda$Iw3kqoukrY1iJIa6u4m9aM-LWwE(Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
