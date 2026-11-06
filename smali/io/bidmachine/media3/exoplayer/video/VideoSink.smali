###### Class io.bidmachine.media3.exoplayer.video.VideoSink (io.bidmachine.media3.exoplayer.video.VideoSink)
.class public interface abstract Lio/bidmachine/media3/exoplayer/video/VideoSink;
.super Ljava/lang/Object;
.source "VideoSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;,
        Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;,
        Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
    }
.end annotation


# virtual methods
.method public abstract clearOutputSurfaceInfo()V
.end method

.method public abstract enableMayRenderStartOfStream()V
.end method

.method public abstract flush(Z)V
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract handleInputFrame(JZLio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
.end method

.method public abstract initialize(Lio/bidmachine/media3/common/Format;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isReady(Z)Z
.end method

.method public abstract join(Z)V
.end method

.method public abstract onInputStreamChanged(ILio/bidmachine/media3/common/Format;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRendererDisabled()V
.end method

.method public abstract onRendererEnabled(Z)V
.end method

.method public abstract onRendererStarted()V
.end method

.method public abstract onRendererStopped()V
.end method

.method public abstract release()V
.end method

.method public abstract render(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation
.end method

.method public abstract setChangeFrameRateStrategy(I)V
.end method

.method public abstract setListener(Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract setOutputSurfaceInfo(Landroid/view/Surface;Lio/bidmachine/media3/common/util/Size;)V
.end method

.method public abstract setPlaybackSpeed(F)V
.end method

.method public abstract setStreamTimestampInfo(JJ)V
.end method

.method public abstract setVideoEffects(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVideoFrameMetadataListener(Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;)V
.end method

.method public abstract setWakeupListener(Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;)V
.end method

.method public abstract signalEndOfCurrentInputStream()V
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoSink.Listener (io.bidmachine.media3.exoplayer.video.VideoSink$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;
.super Ljava/lang/Object;
.source "VideoSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# static fields
.field public static final NO_OP:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener$1;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;->NO_OP:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    return-void
.end method


# virtual methods
.method public abstract onFirstFrameRendered(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
.end method

.method public abstract onFrameDropped(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
.end method

.method public abstract onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/video/VideoSink;Lio/bidmachine/media3/common/VideoSize;)V
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoSink.Listener.AnonymousClass1 (io.bidmachine.media3.exoplayer.video.VideoSink$Listener$1)
.class public Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener$1;
.super Ljava/lang/Object;
.source "VideoSink.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFrameRendered(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onFrameDropped(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/video/VideoSink;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 3

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoSink.VideoFrameHandler (io.bidmachine.media3.exoplayer.video.VideoSink$VideoFrameHandler)
.class public interface abstract Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;
.super Ljava/lang/Object;
.source "VideoSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoFrameHandler"
.end annotation


# virtual methods
.method public abstract render(J)V
.end method

.method public abstract skip()V
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoSink.VideoSinkException (io.bidmachine.media3.exoplayer.video.VideoSink$VideoSinkException)
.class public final Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
.super Ljava/lang/Exception;
.source "VideoSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoSinkException"
.end annotation


# instance fields
.field public final format:Lio/bidmachine/media3/common/Format;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 58
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;->format:Lio/bidmachine/media3/common/Format;

    return-void
.end method
