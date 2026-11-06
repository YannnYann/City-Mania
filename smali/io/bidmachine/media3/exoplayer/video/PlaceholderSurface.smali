###### Class io.bidmachine.media3.exoplayer.video.PlaceholderSurface (io.bidmachine.media3.exoplayer.video.PlaceholderSurface)
.class public final Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;
.super Landroid/view/Surface;
.source "PlaceholderSurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;
    }
.end annotation


# static fields
.field public static secureMode:I

.field public static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field public final thread:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

.field public threadReleased:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .registers 4

    .line 96
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 97
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->thread:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    .line 98
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->secure:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;ZLio/bidmachine/media3/exoplayer/video/PlaceholderSurface$1;)V
    .registers 5

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public static getSecureMode(Landroid/content/Context;)I
    .registers 1

    .line 117
    invoke-static {p0}, Lio/bidmachine/media3/common/util/GlUtil;->isProtectedContentExtensionSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 118
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->isSurfacelessContextExtensionSupported()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .registers 4

    const-class v0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-boolean v1, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_13

    .line 61
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->getSecureMode(Landroid/content/Context;)I

    move-result p0

    sput p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->secureMode:I

    .line 62
    sput-boolean v2, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->secureModeInitialized:Z

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_1b

    .line 64
    :cond_13
    :goto_13
    sget p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->secureMode:I
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_11

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    monitor-exit v0

    return v2

    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_11

    throw p0
.end method

.method public static newInstance(Landroid/content/Context;Z)Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 89
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_c

    :cond_a
    move p0, v0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 90
    new-instance p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;-><init>()V

    if-eqz p1, :cond_19

    .line 91
    sget v0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->secureMode:I

    :cond_19
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->init(I)Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 103
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 108
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->thread:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    monitor-enter v0

    .line 109
    :try_start_6
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->threadReleased:Z

    if-nez v1, :cond_15

    .line 110
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->thread:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->release()V

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->threadReleased:Z

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 113
    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_13

    throw v1
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaceholderSurface.AnonymousClass1 (io.bidmachine.media3.exoplayer.video.PlaceholderSurface$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$1;
.super Ljava/lang/Object;
.source "PlaceholderSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.video.PlaceholderSurface.PlaceholderSurfaceThread (io.bidmachine.media3.exoplayer.video.PlaceholderSurface$PlaceholderSurfaceThread)
.class public Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;
.super Landroid/os/HandlerThread;
.source "PlaceholderSurface.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderSurfaceThread"
.end annotation


# instance fields
.field public eglSurfaceTexture:Lio/bidmachine/media3/common/util/EGLSurfaceTexture;

.field public handler:Landroid/os/Handler;

.field public initError:Ljava/lang/Error;

.field public initException:Ljava/lang/RuntimeException;

.field public surface:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 144
    const-string v0, "ExoPlayer:PlaceholderSurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    return v1

    .line 203
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->releaseInternal()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    .line 207
    :goto_c
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_19

    :catchall_10
    move-exception p1

    .line 205
    :try_start_11
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to release placeholder surface"

    invoke-static {v0, v2, p1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    goto :goto_c

    :goto_19
    return v1

    :catchall_1a
    move-exception p1

    .line 207
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 208
    throw p1

    .line 185
    :cond_1f
    :try_start_1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initInternal(I)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_24} :catch_33
    .catch Lio/bidmachine/media3/common/util/GlUtil$GlException; {:try_start_1f .. :try_end_24} :catch_31
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_24} :catch_2f
    .catchall {:try_start_1f .. :try_end_24} :catchall_2d

    .line 196
    monitor-enter p0

    .line 197
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 198
    monitor-exit p0

    goto :goto_6c

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw p1

    :catchall_2d
    move-exception p1

    goto :goto_70

    :catch_2f
    move-exception p1

    goto :goto_35

    :catch_31
    move-exception p1

    goto :goto_47

    :catch_33
    move-exception p1

    goto :goto_5e

    .line 193
    :goto_35
    :try_start_35
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    invoke-static {v0, v2, p1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_2d

    .line 196
    monitor-enter p0

    .line 197
    :try_start_3f
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 198
    monitor-exit p0

    goto :goto_6c

    :catchall_44
    move-exception p1

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw p1

    .line 190
    :goto_47
    :try_start_47
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    invoke-static {v0, v2, p1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_2d

    .line 196
    monitor-enter p0

    .line 197
    :try_start_56
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 198
    monitor-exit p0

    goto :goto_6c

    :catchall_5b
    move-exception p1

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5b

    throw p1

    .line 187
    :goto_5e
    :try_start_5e
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    invoke-static {v0, v2, p1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_2d

    .line 196
    monitor-enter p0

    .line 197
    :try_start_68
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 198
    monitor-exit p0

    :goto_6c
    return v1

    :catchall_6d
    move-exception p1

    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_6d

    throw p1

    .line 196
    :goto_70
    monitor-enter p0

    .line 197
    :try_start_71
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 198
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_76

    .line 199
    throw p1

    :catchall_76
    move-exception p1

    .line 198
    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw p1
.end method

.method public init(I)Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;
    .registers 5

    .line 148
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lio/bidmachine/media3/common/util/EGLSurfaceTexture;

    .line 152
    monitor-enter p0

    .line 153
    :try_start_18
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 154
    :goto_23
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    if-nez p1, :cond_37

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_37

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_33

    if-nez p1, :cond_37

    .line 156
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_35
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_23

    :catchall_33
    move-exception p1

    goto :goto_54

    :catch_35
    move v2, v1

    goto :goto_23

    .line 161
    :cond_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_33

    if-eqz v2, :cond_41

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 166
    :cond_41
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_53

    .line 168
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;

    if-nez p1, :cond_52

    .line 171
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    return-object p1

    .line 169
    :cond_52
    throw p1

    .line 167
    :cond_53
    throw p1

    .line 161
    :goto_54
    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_33

    throw p1
.end method

.method public final initInternal(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lio/bidmachine/media3/common/util/EGLSurfaceTexture;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lio/bidmachine/media3/common/util/EGLSurfaceTexture;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->init(I)V

    .line 218
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lio/bidmachine/media3/common/util/EGLSurfaceTexture;

    .line 220
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;ZLio/bidmachine/media3/exoplayer/video/PlaceholderSurface$1;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    return-void
.end method

.method public release()V
    .registers 3

    .line 176
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final releaseInternal()V
    .registers 2

    .line 224
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lio/bidmachine/media3/common/util/EGLSurfaceTexture;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Lio/bidmachine/media3/common/util/EGLSurfaceTexture;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->release()V

    return-void
.end method
