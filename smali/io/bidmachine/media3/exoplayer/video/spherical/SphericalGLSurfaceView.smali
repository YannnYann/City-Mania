###### Class io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView (io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView)
.class public final Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SphericalGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;,
        Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isOrientationListenerRegistered:Z

.field public isStarted:Z

.field public final mainHandler:Landroid/os/Handler;

.field public final orientationListener:Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;

.field public final orientationSensor:Landroid/hardware/Sensor;

.field public final scene:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

.field public final sensorManager:Landroid/hardware/SensorManager;

.field public surface:Landroid/view/Surface;

.field public surfaceTexture:Landroid/graphics/SurfaceTexture;

.field public final touchTracker:Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;

.field public useSensorRotation:Z

.field public final videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$c8QJ7TzG65s7Jg9o4mNfJDJcw_0(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;)V
    .registers 4

    .line 205
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1a

    .line 207
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;

    .line 208
    invoke-interface {v2, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;->onVideoSurfaceDestroyed(Landroid/view/Surface;)V

    goto :goto_a

    .line 211
    :cond_1a
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v1, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->releaseSurface(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 213
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    return-void
.end method

.method public static synthetic $r8$lambda$fJGYfClB1KSCLjUNdZmrd8dU70E(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .registers 5

    .line 235
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 236
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    .line 237
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 238
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 239
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    .line 240
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;

    .line 241
    invoke-interface {p1, v2}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;->onVideoSurfaceCreated(Landroid/view/Surface;)V

    goto :goto_13

    .line 243
    :cond_23
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->releaseSurface(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 100
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->mainHandler:Landroid/os/Handler;

    .line 103
    const-string p2, "sensor"

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xf

    .line 110
    invoke-virtual {p2, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-nez v2, :cond_33

    const/16 v2, 0xb

    .line 112
    invoke-virtual {p2, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 114
    :cond_33
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->orientationSensor:Landroid/hardware/Sensor;

    .line 116
    new-instance p2, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

    invoke-direct {p2}, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;-><init>()V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->scene:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

    .line 117
    new-instance v2, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;

    invoke-direct {v2, p0, p2}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;-><init>(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;)V

    .line 119
    new-instance p2, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-direct {p2, p1, v2, v3}, Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker$Listener;F)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->touchTracker:Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker;

    .line 120
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 121
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 122
    new-instance v3, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;

    new-array v4, v1, [Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener$Listener;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    aput-object v2, v4, v0

    invoke-direct {v3, p1, v4}, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;-><init>(Landroid/view/Display;[Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener$Listener;)V

    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->orientationListener:Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;

    .line 123
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->useSensorRotation:Z

    .line 125
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 126
    invoke-virtual {p0, v2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 127
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static releaseSurface(Landroid/graphics/SurfaceTexture;Landroid/view/Surface;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 250
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_5
    if-eqz p1, :cond_a

    .line 253
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_a
    return-void
.end method


# virtual methods
.method public addVideoSurfaceListener(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V
    .registers 3

    .line 136
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCameraMotionListener()Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;
    .registers 2

    .line 164
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->scene:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

    return-object v0
.end method

.method public getVideoFrameMetadataListener()Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;
    .registers 2

    .line 159
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->scene:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .registers 2

    .line 154
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 200
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 203
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->isStarted:Z

    .line 193
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->updateOrientationListenerRegistration()V

    .line 194
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 185
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->isStarted:Z

    .line 187
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->updateOrientationListenerRegistration()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 233
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeVideoSurfaceListener(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V
    .registers 3

    .line 145
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .registers 3

    .line 174
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->scene:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->setDefaultStereoMode(I)V

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .registers 2

    .line 179
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->useSensorRotation:Z

    .line 180
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->updateOrientationListenerRegistration()V

    return-void
.end method

.method public final updateOrientationListenerRegistration()V
    .registers 6

    .line 218
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->useSensorRotation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->isStarted:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 219
    :goto_c
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->orientationSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_28

    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->isOrientationListenerRegistered:Z

    if-ne v0, v3, :cond_15

    goto :goto_28

    :cond_15
    if-eqz v0, :cond_1f

    .line 223
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->orientationListener:Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;

    invoke-virtual {v3, v4, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_26

    .line 226
    :cond_1f
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->orientationListener:Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 228
    :goto_26
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->isOrientationListenerRegistered:Z

    :cond_28
    :goto_28
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView.Renderer (io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView$Renderer)
.class public final Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "SphericalGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lio/bidmachine/media3/exoplayer/video/spherical/TouchTracker$Listener;
.implements Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Renderer"
.end annotation


# instance fields
.field public final deviceOrientationMatrix:[F

.field public deviceRoll:F

.field public final projectionMatrix:[F

.field public final scene:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

.field public final tempMatrix:[F

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field public touchPitch:F

.field public final touchPitchMatrix:[F

.field public final touchYawMatrix:[F

.field public final viewMatrix:[F

.field public final viewProjectionMatrix:[F


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;)V
    .registers 7

    .line 285
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    .line 265
    new-array v0, p1, [F

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    .line 268
    new-array v0, p1, [F

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    .line 272
    new-array v0, p1, [F

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    .line 276
    new-array v1, p1, [F

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    .line 277
    new-array v2, p1, [F

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    .line 282
    new-array v3, p1, [F

    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    .line 283
    new-array p1, p1, [F

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    .line 286
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

    .line 287
    invoke-static {v0}, Lio/bidmachine/media3/common/util/GlUtil;->setToIdentity([F)V

    .line 288
    invoke-static {v1}, Lio/bidmachine/media3/common/util/GlUtil;->setToIdentity([F)V

    .line 289
    invoke-static {v2}, Lio/bidmachine/media3/common/util/GlUtil;->setToIdentity([F)V

    const p1, 0x40490fdb    # (float)Math.PI

    .line 290
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    return-void
.end method


# virtual methods
.method public final calculateFieldOfViewInYDirection(F)F
    .registers 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_22

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 365
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    float-to-double v2, p1

    div-double/2addr v0, v2

    .line 366
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    return p1

    :cond_22
    const/high16 p1, 0x42b40000    # 90.0f

    return p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 14

    .line 311
    monitor-enter p0

    .line 312
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 313
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->tempMatrix:[F

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 314
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2e

    .line 316
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewMatrix:[F

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 317
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->viewProjectionMatrix:[F

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->drawFrame([FZ)V

    return-void

    :catchall_2e
    move-exception v0

    move-object p1, v0

    .line 314
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2e

    throw p1
.end method

.method public declared-synchronized onOrientationChange([FF)V
    .registers 6

    monitor-enter p0

    .line 324
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceOrientationMatrix:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-float p1, p2

    .line 325
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    .line 326
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->updatePitchMatrix()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 327
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public declared-synchronized onScrollChange(Landroid/graphics/PointF;)V
    .registers 9

    monitor-enter p0

    .line 350
    :try_start_1
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    .line 351
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->updatePitchMatrix()V

    .line 352
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    neg-float v3, p1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 353
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    move-object p1, v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_17

    throw p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 358
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result p1

    return p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 10

    const/4 p1, 0x0

    .line 300
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p1, p2

    int-to-float p2, p3

    div-float v3, p1, p2

    .line 302
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->calculateFieldOfViewInYDirection(F)F

    move-result v2

    .line 303
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->projectionMatrix:[F

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    monitor-enter p0

    .line 295
    :try_start_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->scene:Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/video/spherical/SceneRenderer;->init()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->access$000(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 296
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final updatePitchMatrix()V
    .registers 7

    .line 338
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    neg-float v2, v1

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v3, v1

    .line 342
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v4, v1

    .line 343
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 338
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener (io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView$VideoSurfaceListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
.super Ljava/lang/Object;
.source "SphericalGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoSurfaceListener"
.end annotation


# virtual methods
.method public abstract onVideoSurfaceCreated(Landroid/view/Surface;)V
.end method

.method public abstract onVideoSurfaceDestroyed(Landroid/view/Surface;)V
.end method

###### Class io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->$r8$lambda$c8QJ7TzG65s7Jg9o4mNfJDJcw_0(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.video.spherical.SphericalGLSurfaceView$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field public final synthetic f$1:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->$r8$lambda$fJGYfClB1KSCLjUNdZmrd8dU70E(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
