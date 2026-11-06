###### Class io.bidmachine.media3.exoplayer.PlaybackLooperProvider (io.bidmachine.media3.exoplayer.PlaybackLooperProvider)
.class public final Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;
.super Ljava/lang/Object;
.source "PlaybackLooperProvider.java"


# instance fields
.field public internalPlaybackThread:Landroid/os/HandlerThread;

.field public final lock:Ljava/lang/Object;

.field public playbackLooper:Landroid/os/Looper;

.field public referenceCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->lock:Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    return-void
.end method


# virtual methods
.method public obtainLooper()Landroid/os/Looper;
    .registers 6

    .line 81
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    const/4 v2, 0x1

    if-nez v1, :cond_2e

    .line 83
    iget v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    if-nez v1, :cond_14

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_15

    :catchall_12
    move-exception v1

    goto :goto_37

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 86
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "ExoPlayer:Playback"

    const/16 v4, -0x10

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 89
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    .line 91
    :cond_2e
    iget v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    .line 92
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    monitor-exit v0

    return-object v1

    .line 93
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_12

    throw v1
.end method

.method public releaseLooper()V
    .registers 4

    .line 103
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    iget v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 105
    iget v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->referenceCount:I

    if-nez v1, :cond_24

    .line 106
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_24

    .line 107
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 109
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->playbackLooper:Landroid/os/Looper;

    goto :goto_24

    :catchall_22
    move-exception v1

    goto :goto_26

    .line 111
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_22

    throw v1
.end method
