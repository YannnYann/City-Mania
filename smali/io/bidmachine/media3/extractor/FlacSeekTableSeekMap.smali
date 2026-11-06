###### Class io.bidmachine.media3.extractor.FlacSeekTableSeekMap (io.bidmachine.media3.extractor.FlacSeekTableSeekMap)
.class public final Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;
.super Ljava/lang/Object;
.source "FlacSeekTableSeekMap.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/SeekMap;


# instance fields
.field public final firstFrameOffset:J

.field public final flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;J)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    .line 41
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;->firstFrameOffset:J

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 51
    iget-object v0, p0, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSeekPoint(JJ)Lio/bidmachine/media3/extractor/SeekPoint;
    .registers 7

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 81
    iget-object v0, p0, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget v0, v0, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    .line 82
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;->firstFrameOffset:J

    add-long/2addr v0, p3

    .line 83
    new-instance p3, Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-direct {p3, p1, p2, v0, v1}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    return-object p3
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 12

    .line 56
    iget-object v0, p0, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->seekTable:Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget-object v1, v0, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->seekTable:Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;

    iget-object v2, v1, Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    .line 58
    iget-object v1, v1, Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;->pointOffsets:[J

    .line 60
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide v3

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 62
    invoke-static {v2, v3, v4, v5, v0}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_20

    move-wide v7, v3

    goto :goto_22

    .line 68
    :cond_20
    aget-wide v7, v2, v0

    :goto_22
    if-ne v0, v6, :cond_25

    goto :goto_27

    .line 69
    :cond_25
    aget-wide v3, v1, v0

    .line 70
    :goto_27
    invoke-virtual {p0, v7, v8, v3, v4}, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;->getSeekPoint(JJ)Lio/bidmachine/media3/extractor/SeekPoint;

    move-result-object v3

    .line 71
    iget-wide v6, v3, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    cmp-long p1, v6, p1

    if-eqz p1, :cond_45

    array-length p1, v2

    sub-int/2addr p1, v5

    if-ne v0, p1, :cond_36

    goto :goto_45

    :cond_36
    add-int/2addr v0, v5

    .line 74
    aget-wide p1, v2, v0

    aget-wide v0, v1, v0

    .line 75
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;->getSeekPoint(JJ)Lio/bidmachine/media3/extractor/SeekPoint;

    move-result-object p1

    .line 76
    new-instance p2, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p2, v3, p1}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object p2

    .line 72
    :cond_45
    :goto_45
    new-instance p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v3}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object p1
.end method

.method public isSeekable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
