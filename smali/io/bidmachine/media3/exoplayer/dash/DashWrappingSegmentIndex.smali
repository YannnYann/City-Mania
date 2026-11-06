###### Class io.bidmachine.media3.exoplayer.dash.DashWrappingSegmentIndex (io.bidmachine.media3.exoplayer.dash.DashWrappingSegmentIndex)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;


# instance fields
.field public final chunkIndex:Lio/bidmachine/media3/extractor/ChunkIndex;

.field public final timeOffsetUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/ChunkIndex;J)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lio/bidmachine/media3/extractor/ChunkIndex;

    .line 39
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .registers 5

    .line 59
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lio/bidmachine/media3/extractor/ChunkIndex;

    iget p1, p1, Lio/bidmachine/media3/extractor/ChunkIndex;->length:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public getDurationUs(JJ)J
    .registers 5

    .line 74
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lio/bidmachine/media3/extractor/ChunkIndex;

    iget-object p3, p3, Lio/bidmachine/media3/extractor/ChunkIndex;->durationsUs:[J

    long-to-int p1, p1

    aget-wide p1, p3, p1

    return-wide p1
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .registers 5

    .line 0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getFirstSegmentNum()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .registers 5

    .line 0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public getSegmentCount(J)J
    .registers 3

    .line 54
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lio/bidmachine/media3/extractor/ChunkIndex;

    iget p1, p1, Lio/bidmachine/media3/extractor/ChunkIndex;->length:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public getSegmentNum(JJ)J
    .registers 7

    .line 85
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lio/bidmachine/media3/extractor/ChunkIndex;

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    add-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lio/bidmachine/media3/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public getSegmentUrl(J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 9

    .line 79
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lio/bidmachine/media3/extractor/ChunkIndex;

    iget-object v2, v1, Lio/bidmachine/media3/extractor/ChunkIndex;->offsets:[J

    long-to-int p1, p1

    aget-wide v3, v2, p1

    iget-object p2, v1, Lio/bidmachine/media3/extractor/ChunkIndex;->sizes:[I

    aget p1, p2, p1

    int-to-long p1, p1

    const/4 v1, 0x0

    move-wide v2, v3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public getTimeUs(J)J
    .registers 5

    .line 69
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;->chunkIndex:Lio/bidmachine/media3/extractor/ChunkIndex;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/ChunkIndex;->timesUs:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public isExplicit()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
