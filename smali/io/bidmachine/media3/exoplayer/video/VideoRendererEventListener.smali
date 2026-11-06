###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public onDroppedFrames(IJ)V
    .registers 4

    .line 0
    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .registers 4

    .line 0
    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 6

    .line 0
    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onVideoDisabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onVideoEnabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .registers 4

    .line 0
    return-void
.end method

.method public onVideoInputFormatChanged(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener.EventDispatcher (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher)
.class public final Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;


# direct methods
.method public static synthetic $r8$lambda$0VBzUHytvdS4nT5AxgDLtQb5SGM(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;IJ)V
    .registers 4

    .line 204
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    .line 204
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$5euFGd_caczO9F5qzd41s-kBH9M(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 3

    .line 197
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    .line 197
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8F0ZF993bZICnq7Y6JLfCROAsf4(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V
    .registers 2

    .line 237
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    .line 237
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gk4iTfj7kk-M6RJGqMPvQCUsxy8(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 2

    .line 172
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    .line 172
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;->onVideoEnabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HY3xoxt0jKXuFgf9GHBeHW--kNs(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;JI)V
    .registers 4

    .line 213
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    .line 213
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    .line 214
    invoke-interface {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$SPKYiRltzos3o37FVS2g7VBviZo(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V
    .registers 2

    .line 256
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    .line 256
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gaTfBb4UJjuZkeKfWuhpT338Uds(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V
    .registers 4

    .line 230
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    .line 230
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$ntsLC-p39m90AozvjR18AslevLg(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V
    .registers 12

    .line 182
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    .line 182
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 183
    invoke-interface/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$u24Ksk8jkilfeL4US9WpRqlBtGc(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    .line 248
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;->onVideoDisabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uuL8kakGNwGJCZOind-bpYLu8d4(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 2

    .line 221
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    .line 221
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;->onVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;)V
    .registers 3

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_c

    .line 165
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    .line 166
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    return-void
.end method


# virtual methods
.method public decoderInitialized(Ljava/lang/String;JJ)V
    .registers 14

    .line 179
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 180
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method public decoderReleased(Ljava/lang/String;)V
    .registers 4

    .line 236
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 237
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public disabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 4

    .line 243
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    .line 244
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 245
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method public droppedFrames(IJ)V
    .registers 6

    .line 203
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 204
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public enabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 4

    .line 171
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 172
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public inputFormatChanged(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 5

    .line 195
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 196
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public renderedFirstFrame(Ljava/lang/Object;)V
    .registers 6

    .line 227
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 230
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v3, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public reportVideoFrameProcessingOffset(JI)V
    .registers 6

    .line 210
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 211
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public videoCodecError(Ljava/lang/Exception;)V
    .registers 4

    .line 255
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 256
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public videoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V
    .registers 4

    .line 220
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 221
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/common/VideoSize;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$SPKYiRltzos3o37FVS2g7VBviZo(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$gaTfBb4UJjuZkeKfWuhpT338Uds(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$8F0ZF993bZICnq7Y6JLfCROAsf4(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$2:J

    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$2:J

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$3:J

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$ntsLC-p39m90AozvjR18AslevLg(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Lio/bidmachine/media3/common/VideoSize;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/media3/common/VideoSize;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/media3/common/VideoSize;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$uuL8kakGNwGJCZOind-bpYLu8d4(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/common/VideoSize;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5 (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Lio/bidmachine/media3/common/Format;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$1:Lio/bidmachine/media3/common/Format;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$2:Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$1:Lio/bidmachine/media3/common/Format;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$2:Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$5euFGd_caczO9F5qzd41s-kBH9M(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6 (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;JI)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$1:J

    iput p4, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$1:J

    iget v3, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$2:I

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$HY3xoxt0jKXuFgf9GHBeHW--kNs(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;JI)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7 (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;IJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$1:I

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$1:I

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$0VBzUHytvdS4nT5AxgDLtQb5SGM(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;IJ)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8 (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$u24Ksk8jkilfeL4US9WpRqlBtGc(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9 (io.bidmachine.media3.exoplayer.video.VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->$r8$lambda$Gk4iTfj7kk-M6RJGqMPvQCUsxy8(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    return-void
.end method
