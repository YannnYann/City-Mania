###### Class io.bidmachine.media3.extractor.mp3.IndexSeeker (io.bidmachine.media3.extractor.mp3.IndexSeeker)
.class public final Lio/bidmachine/media3/extractor/mp3/IndexSeeker;
.super Ljava/lang/Object;
.source "IndexSeeker.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/mp3/Seeker;


# instance fields
.field public final averageBitrate:I

.field public final dataEndPosition:J

.field public final indexSeekMap:Lio/bidmachine/media3/extractor/IndexSeekMap;


# direct methods
.method public constructor <init>(JJJ)V
    .registers 17

    move-wide v0, p5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v2, Lio/bidmachine/media3/extractor/IndexSeekMap;

    const/4 v3, 0x1

    new-array v6, v3, [J

    const/4 v7, 0x0

    aput-wide p3, v6, v7

    const-wide/16 v8, 0x0

    new-array v3, v3, [J

    aput-wide v8, v3, v7

    invoke-direct {v2, v6, v3, p1, p2}, Lio/bidmachine/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    iput-object v2, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Lio/bidmachine/media3/extractor/IndexSeekMap;

    .line 40
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->dataEndPosition:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    const v7, -0x7fffffff

    if-eqz v2, :cond_3f

    sub-long v0, p3, v0

    const-wide/16 v2, 0x8

    .line 42
    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-wide v4, p1

    .line 43
    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-lez v2, :cond_3c

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3c

    long-to-int v7, v0

    .line 46
    :cond_3c
    iput v7, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->averageBitrate:I

    return-void

    .line 48
    :cond_3f
    iput v7, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->averageBitrate:I

    return-void
.end method


# virtual methods
.method public getAverageBitrate()I
    .registers 2

    .line 79
    iget v0, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->averageBitrate:I

    return v0
.end method

.method public getDataEndPosition()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .registers 3

    .line 69
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Lio/bidmachine/media3/extractor/IndexSeekMap;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/IndexSeekMap;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 4

    .line 74
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Lio/bidmachine/media3/extractor/IndexSeekMap;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/IndexSeekMap;->getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    move-result-object p1

    return-object p1
.end method

.method public getTimeUs(J)J
    .registers 4

    .line 54
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Lio/bidmachine/media3/extractor/IndexSeekMap;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/IndexSeekMap;->getTimeUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public isSeekable()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Lio/bidmachine/media3/extractor/IndexSeekMap;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/IndexSeekMap;->isSeekable()Z

    move-result v0

    return v0
.end method

.method public isTimeUsInIndex(J)Z
    .registers 6

    .line 107
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Lio/bidmachine/media3/extractor/IndexSeekMap;

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, p1, p2, v1, v2}, Lio/bidmachine/media3/extractor/IndexSeekMap;->isTimeUsInIndex(JJ)Z

    move-result p1

    return p1
.end method

.method public maybeAddSeekPoint(JJ)V
    .registers 6

    .line 91
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 94
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Lio/bidmachine/media3/extractor/IndexSeekMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/IndexSeekMap;->addSeekPoint(JJ)V

    return-void
.end method

.method public setDurationUs(J)V
    .registers 4

    .line 111
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->indexSeekMap:Lio/bidmachine/media3/extractor/IndexSeekMap;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/IndexSeekMap;->setDurationUs(J)V

    return-void
.end method
