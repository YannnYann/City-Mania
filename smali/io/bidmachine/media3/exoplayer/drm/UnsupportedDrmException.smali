###### Class io.bidmachine.media3.exoplayer.drm.UnsupportedDrmException (io.bidmachine.media3.exoplayer.drm.UnsupportedDrmException)
.class public final Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;
.super Ljava/lang/Exception;
.source "UnsupportedDrmException.java"


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 63
    iput p1, p0, Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;->reason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .registers 3

    .line 71
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 72
    iput p1, p0, Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;->reason:I

    return-void
.end method
