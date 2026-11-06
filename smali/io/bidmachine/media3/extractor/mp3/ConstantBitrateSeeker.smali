###### Class io.bidmachine.media3.extractor.mp3.ConstantBitrateSeeker (io.bidmachine.media3.extractor.mp3.ConstantBitrateSeeker)
.class public final Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;
.super Lio/bidmachine/media3/extractor/ConstantBitrateSeekMap;
.source "ConstantBitrateSeeker.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/mp3/Seeker;


# instance fields
.field public final allowSeeksIfLengthUnknown:Z

.field public final bitrate:I

.field public final dataEndPosition:J

.field public final firstFramePosition:J

.field public final frameSize:I


# direct methods
.method public constructor <init>(JJIIZ)V
    .registers 9

    .line 65
    invoke-direct/range {p0 .. p7}, Lio/bidmachine/media3/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    move v0, p7

    move p7, p6

    move p6, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 66
    iput-wide p4, p1, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    .line 67
    iput p6, p1, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    .line 68
    iput p7, p1, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    .line 69
    iput-boolean v0, p1, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->allowSeeksIfLengthUnknown:Z

    const-wide/16 p4, -0x1

    cmp-long p6, p2, p4

    if-eqz p6, :cond_18

    goto :goto_19

    :cond_18
    move-wide p2, p4

    .line 70
    :goto_19
    iput-wide p2, p1, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->dataEndPosition:J

    return-void
.end method

.method public constructor <init>(JJLio/bidmachine/media3/extractor/MpegAudioUtil$Header;Z)V
    .registers 15

    .line 50
    iget v5, p5, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    iget v6, p5, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZ)V

    return-void
.end method


# virtual methods
.method public copyWithNewDataEndPosition(J)Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;
    .registers 11

    .line 89
    new-instance v0, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    iget v5, p0, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    iget v6, p0, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    iget-boolean v7, p0, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->allowSeeksIfLengthUnknown:Z

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZ)V

    return-object v0
.end method

.method public getAverageBitrate()I
    .registers 2

    .line 85
    iget v0, p0, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    return v0
.end method

.method public getDataEndPosition()J
    .registers 3

    .line 80
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getTimeUs(J)J
    .registers 3

    .line 75
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide p1

    return-wide p1
.end method
