###### Class io.bidmachine.media3.exoplayer.source.MediaLoadData (io.bidmachine.media3.exoplayer.source.MediaLoadData)
.class public final Lio/bidmachine/media3/exoplayer/source/MediaLoadData;
.super Ljava/lang/Object;
.source "MediaLoadData.java"


# instance fields
.field public final dataType:I

.field public final mediaEndTimeMs:J

.field public final mediaStartTimeMs:J

.field public final trackFormat:Lio/bidmachine/media3/common/Format;

.field public final trackSelectionData:Ljava/lang/Object;

.field public final trackSelectionReason:I

.field public final trackType:I


# direct methods
.method public constructor <init>(I)V
    .registers 12

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 71
    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public constructor <init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V
    .registers 10

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->dataType:I

    .line 101
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->trackType:I

    .line 102
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->trackFormat:Lio/bidmachine/media3/common/Format;

    .line 103
    iput p4, p0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->trackSelectionReason:I

    .line 104
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    .line 105
    iput-wide p6, p0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->mediaStartTimeMs:J

    .line 106
    iput-wide p8, p0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->mediaEndTimeMs:J

    return-void
.end method
