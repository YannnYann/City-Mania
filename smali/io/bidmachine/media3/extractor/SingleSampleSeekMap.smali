###### Class io.bidmachine.media3.extractor.SingleSampleSeekMap (io.bidmachine.media3.extractor.SingleSampleSeekMap)
.class public final Lio/bidmachine/media3/extractor/SingleSampleSeekMap;
.super Ljava/lang/Object;
.source "SingleSampleSeekMap.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/SeekMap;


# instance fields
.field public final durationUs:J

.field public final startPosition:J


# direct methods
.method public constructor <init>(J)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0, v1}, Lio/bidmachine/media3/extractor/SingleSampleSeekMap;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/SingleSampleSeekMap;->durationUs:J

    .line 50
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/SingleSampleSeekMap;->startPosition:J

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/SingleSampleSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 7

    .line 65
    new-instance v0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    new-instance v1, Lio/bidmachine/media3/extractor/SeekPoint;

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/SingleSampleSeekMap;->startPosition:J

    invoke-direct {v1, p1, p2, v2, v3}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object v0
.end method

.method public isSeekable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
