###### Class io.bidmachine.media3.exoplayer.video.spherical.OrientationListener (io.bidmachine.media3.exoplayer.video.spherical.OrientationListener)
.class public final Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;
.super Ljava/lang/Object;
.source "OrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener$Listener;
    }
.end annotation


# instance fields
.field public final angles:[F

.field public final deviceOrientationMatrix4x4:[F

.field public final display:Landroid/view/Display;

.field public final listeners:[Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener$Listener;

.field public final recenterMatrix4x4:[F

.field public recenterMatrixComputed:Z

.field public final tempMatrix4x4:[F


# direct methods
.method public varargs constructor <init>(Landroid/view/Display;[Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener$Listener;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 43
    new-array v1, v0, [F

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    .line 44
    new-array v1, v0, [F

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    .line 45
    new-array v0, v0, [F

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    const/4 v0, 0x3

    .line 46
    new-array v0, v0, [F

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->angles:[F

    .line 52
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->display:Landroid/view/Display;

    .line 53
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->listeners:[Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener$Listener;

    return-void
.end method

.method public static rotateYtoSky([F)V
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 123
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method


# virtual methods
.method public final extractRoll([F)F
    .registers 5

    const/16 v0, 0x83

    .line 91
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 93
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->angles:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 94
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->angles:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    return p1
.end method

.method public final notifyListeners([FF)V
    .registers 7

    .line 74
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->listeners:[Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener$Listener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 75
    invoke-interface {v3, p1, p2}, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener$Listener;->onOrientationChange([FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 60
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->rotateAroundZ([FI)V

    .line 61
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->extractRoll([F)F

    move-result p1

    .line 63
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->rotateYtoSky([F)V

    .line 64
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->recenter([F)V

    .line 65
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->deviceOrientationMatrix4x4:[F

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->notifyListeners([FF)V

    return-void
.end method

.method public final recenter([F)V
    .registers 11

    .line 80
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrixComputed:Z

    if-nez v0, :cond_c

    .line 81
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrixComputed:Z

    .line 84
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->recenterMatrix4x4:[F

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public final rotateAroundZ([FI)V
    .registers 7

    if-eqz p2, :cond_27

    const/16 v0, 0x81

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_19

    const/16 v3, 0x82

    if-eq p2, v1, :cond_17

    const/4 v0, 0x3

    if-ne p2, v0, :cond_11

    move v0, v3

    goto :goto_1b

    .line 116
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_17
    move v2, v3

    goto :goto_1b

    :cond_19
    move v2, v0

    move v0, v1

    .line 118
    :goto_1b
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    array-length v1, p2

    const/4 v3, 0x0

    invoke-static {p1, v3, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;->tempMatrix4x4:[F

    invoke-static {p2, v0, v2, p1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    :cond_27
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.spherical.OrientationListener.Listener (io.bidmachine.media3.exoplayer.video.spherical.OrientationListener$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener$Listener;
.super Ljava/lang/Object;
.source "OrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/spherical/OrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onOrientationChange([FF)V
.end method
