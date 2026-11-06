###### Class io.bidmachine.media3.extractor.TrueHdSampleRechunker (io.bidmachine.media3.extractor.TrueHdSampleRechunker)
.class public final Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;
.super Ljava/lang/Object;
.source "TrueHdSampleRechunker.java"


# instance fields
.field public chunkFlags:I

.field public chunkOffset:I

.field public chunkSampleCount:I

.field public chunkSize:I

.field public chunkTimeUs:J

.field public foundSyncframe:Z

.field public final syncframePrefix:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 41
    new-array v0, v0, [B

    iput-object v0, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->syncframePrefix:[B

    return-void
.end method


# virtual methods
.method public outputPendingSampleMetadata(Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
    .registers 11

    .line 89
    iget v0, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    if-lez v0, :cond_14

    .line 90
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkTimeUs:J

    iget v4, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkFlags:I

    iget v5, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkSize:I

    iget v6, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkOffset:I

    move-object v1, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    :cond_14
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    .line 46
    iput v0, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    return-void
.end method

.method public sampleMetadata(Lio/bidmachine/media3/extractor/TrackOutput;JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
    .registers 11

    .line 68
    iget v0, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkOffset:I

    add-int v1, p5, p6

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    const-string v1, "TrueHD chunk samples must be contiguous in the sample queue."

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 71
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    if-nez v0, :cond_14

    goto :goto_30

    .line 74
    :cond_14
    iget v0, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkSampleCount:I

    if-nez v0, :cond_22

    .line 76
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkTimeUs:J

    .line 77
    iput p4, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkFlags:I

    .line 78
    iput v2, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkSize:I

    .line 80
    :cond_22
    iget p2, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkSize:I

    add-int/2addr p2, p5

    iput p2, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkSize:I

    .line 81
    iput p6, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->chunkOffset:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_30

    .line 83
    invoke-virtual {p0, p1, p7}, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public startSample(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    if-eqz v0, :cond_5

    goto :goto_18

    .line 53
    :cond_5
    iget-object v0, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->syncframePrefix:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 54
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 55
    iget-object p1, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->syncframePrefix:[B

    invoke-static {p1}, Lio/bidmachine/media3/extractor/Ac3Util;->parseTrueHdSyncframeAudioSampleCount([B)I

    move-result p1

    if-nez p1, :cond_19

    :goto_18
    return-void

    :cond_19
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->foundSyncframe:Z

    return-void
.end method
