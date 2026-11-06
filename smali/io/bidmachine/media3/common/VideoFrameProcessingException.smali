###### Class io.bidmachine.media3.common.VideoFrameProcessingException (io.bidmachine.media3.common.VideoFrameProcessingException)
.class public final Lio/bidmachine/media3/common/VideoFrameProcessingException;
.super Ljava/lang/Exception;
.source "VideoFrameProcessingException.java"


# instance fields
.field public final presentationTimeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;J)V
    .registers 4

    .line 112
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 113
    iput-wide p2, p0, Lio/bidmachine/media3/common/VideoFrameProcessingException;->presentationTimeUs:J

    return-void
.end method

.method public static from(Ljava/lang/Exception;)Lio/bidmachine/media3/common/VideoFrameProcessingException;
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;J)Lio/bidmachine/media3/common/VideoFrameProcessingException;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/Exception;J)Lio/bidmachine/media3/common/VideoFrameProcessingException;
    .registers 4

    .line 41
    instance-of v0, p0, Lio/bidmachine/media3/common/VideoFrameProcessingException;

    if-eqz v0, :cond_7

    .line 42
    check-cast p0, Lio/bidmachine/media3/common/VideoFrameProcessingException;

    return-object p0

    .line 44
    :cond_7
    new-instance v0, Lio/bidmachine/media3/common/VideoFrameProcessingException;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/common/VideoFrameProcessingException;-><init>(Ljava/lang/Throwable;J)V

    return-object v0
.end method
