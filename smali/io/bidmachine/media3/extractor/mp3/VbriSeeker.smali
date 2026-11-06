###### Class io.bidmachine.media3.extractor.mp3.VbriSeeker (io.bidmachine.media3.extractor.mp3.VbriSeeker)
.class public final Lio/bidmachine/media3/extractor/mp3/VbriSeeker;
.super Ljava/lang/Object;
.source "VbriSeeker.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/mp3/Seeker;


# instance fields
.field public final bitrate:I

.field public final dataEndPosition:J

.field public final durationUs:J

.field public final positions:[J

.field public final timesUs:[J


# direct methods
.method public constructor <init>([J[JJJI)V
    .registers 8

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    .line 120
    iput-object p2, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->positions:[J

    .line 121
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->durationUs:J

    .line 122
    iput-wide p5, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    .line 123
    iput p7, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->bitrate:I

    return-void
.end method

.method public static create(JJLio/bidmachine/media3/extractor/MpegAudioUtil$Header;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/mp3/VbriSeeker;
    .registers 29

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x6

    .line 52
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 53
    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 54
    iget v5, v2, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v5, v5

    add-long v5, p2, v5

    int-to-long v7, v4

    add-long/2addr v5, v7

    .line 55
    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const/4 v7, 0x0

    if-gtz v4, :cond_1d

    return-object v7

    .line 59
    :cond_1d
    iget v8, v2, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v9, v4

    .line 60
    iget v4, v2, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v11, v4

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    .line 61
    invoke-static {v9, v10, v8}, Lio/bidmachine/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v14

    .line 63
    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 64
    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    .line 65
    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    const/4 v10, 0x2

    .line 66
    invoke-virtual {v3, v10}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 68
    iget v11, v2, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v11, v11

    add-long v11, p2, v11

    move-wide/from16 v16, v11

    .line 70
    new-array v12, v4, [J

    .line 71
    new-array v13, v4, [J

    const/4 v11, 0x0

    move-wide/from16 v21, v16

    move-object/from16 v16, v7

    move/from16 v17, v8

    move-wide/from16 v7, v21

    :goto_4f
    if-ge v11, v4, :cond_91

    move-object/from16 v18, v12

    move-object/from16 p2, v13

    int-to-long v12, v11

    mul-long/2addr v12, v14

    move/from16 p3, v11

    int-to-long v10, v4

    .line 73
    div-long/2addr v12, v10

    aput-wide v12, v18, p3

    .line 74
    aput-wide v7, p2, p3

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7b

    const/4 v10, 0x2

    if-eq v9, v10, :cond_76

    const/4 v11, 0x3

    if-eq v9, v11, :cond_71

    const/4 v11, 0x4

    if-eq v9, v11, :cond_6c

    return-object v16

    .line 87
    :cond_6c
    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    goto :goto_80

    .line 84
    :cond_71
    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v11

    goto :goto_80

    .line 81
    :cond_76
    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v11

    goto :goto_80

    :cond_7b
    const/4 v10, 0x2

    .line 78
    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    :goto_80
    int-to-long v11, v11

    move-wide/from16 v19, v11

    move/from16 v13, v17

    int-to-long v10, v13

    mul-long v11, v19, v10

    add-long/2addr v7, v11

    add-int/lit8 v11, p3, 0x1

    move-object/from16 v12, v18

    const/4 v10, 0x2

    move-object/from16 v13, p2

    goto :goto_4f

    :cond_91
    move-object/from16 v18, v12

    move-object/from16 p2, v13

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    .line 94
    const-string v4, ", "

    const-string v9, "VbriSeeker"

    if-eqz v3, :cond_bd

    cmp-long v3, v0, v5

    if-eqz v3, :cond_bd

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VBRI data size mismatch: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bd
    cmp-long v0, v5, v7

    if-eqz v0, :cond_e4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VBRI bytes and ToC mismatch (using max): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nSeeking will be inaccurate."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_e4
    move-wide/from16 v16, v5

    .line 108
    new-instance v11, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;

    iget v0, v2, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    move-object/from16 v13, p2

    move-object/from16 v12, v18

    move/from16 v18, v0

    invoke-direct/range {v11 .. v18}, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;-><init>([J[JJJI)V

    return-object v11
.end method


# virtual methods
.method public getAverageBitrate()I
    .registers 2

    .line 160
    iget v0, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->bitrate:I

    return v0
.end method

.method public getDataEndPosition()J
    .registers 3

    .line 155
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDurationUs()J
    .registers 3

    .line 150
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 11

    .line 133
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 134
    new-instance v2, Lio/bidmachine/media3/extractor/SeekPoint;

    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 135
    iget-wide v3, v2, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    cmp-long p1, v3, p1

    if-gez p1, :cond_35

    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    array-length p1, p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_21

    goto :goto_35

    .line 138
    :cond_21
    new-instance p1, Lio/bidmachine/media3/extractor/SeekPoint;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    add-int/2addr v0, v1

    aget-wide v3, p2, v0

    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->positions:[J

    aget-wide v0, p2, v0

    invoke-direct {p1, v3, v4, v0, v1}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 139
    new-instance p2, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p2, v2, p1}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object p2

    .line 136
    :cond_35
    :goto_35
    new-instance p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v2}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object p1
.end method

.method public getTimeUs(J)J
    .registers 6

    .line 145
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->timesUs:[J

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->positions:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public isSeekable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
