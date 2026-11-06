###### Class io.bidmachine.media3.extractor.mp3.Mp3Extractor (io.bidmachine.media3.extractor.mp3.Mp3Extractor)
.class public final Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

.field public static final REQUIRED_ID3_FRAME_PREDICATE:Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;


# instance fields
.field public basisTimeUs:J

.field public currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public disableSeeking:Z

.field public endPositionOfLastSampleRead:J

.field public extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public firstSamplePosition:J

.field public final flags:I

.field public final forcedFirstSampleTimestampUs:J

.field public final gaplessInfoHolder:Lio/bidmachine/media3/extractor/GaplessInfoHolder;

.field public final id3Peeker:Lio/bidmachine/media3/extractor/Id3Peeker;

.field public isSeekInProgress:Z

.field public metadata:Lio/bidmachine/media3/common/Metadata;

.field public realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public sampleBytesRemaining:I

.field public samplesRead:J

.field public final scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public seekTimeUs:J

.field public seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

.field public final skippingTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

.field public synchronizedHeaderData:I


# direct methods
.method public static synthetic $r8$lambda$4nZqF3UGfAwPveeeaVA9AwCVgpA()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 67
    new-instance v0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static synthetic $r8$lambda$SNWO3uwAV7vC9LhJq84taGAxo-0(IIIII)Z
    .registers 8

    .line 0
    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p1, v0, :cond_11

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_11

    if-ne p3, v2, :cond_11

    if-eq p4, v2, :cond_1f

    if-eq p0, v1, :cond_1f

    :cond_11
    if-ne p1, v2, :cond_21

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_21

    if-ne p3, p1, :cond_21

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1f

    if-ne p0, v1, :cond_21

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    .line 133
    new-instance v0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, v0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 197
    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 5

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    or-int/lit8 p1, p1, 0x1

    .line 209
    :cond_9
    iput p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->flags:I

    .line 210
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 211
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 212
    new-instance p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    .line 213
    new-instance p1, Lio/bidmachine/media3/extractor/GaplessInfoHolder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/GaplessInfoHolder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lio/bidmachine/media3/extractor/GaplessInfoHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 214
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 215
    new-instance p1, Lio/bidmachine/media3/extractor/Id3Peeker;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/Id3Peeker;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->id3Peeker:Lio/bidmachine/media3/extractor/Id3Peeker;

    .line 216
    new-instance p1, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 217
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    const-wide/16 p1, -0x1

    .line 218
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    return-void
.end method

.method private assertInitialized()V
    .registers 2

    .line 670
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getId3TlenUs(Lio/bidmachine/media3/common/Metadata;)J
    .registers 7

    if-eqz p0, :cond_32

    .line 718
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_32

    .line 720
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v3

    .line 721
    instance-of v4, v3, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    if-eqz v4, :cond_2f

    check-cast v3, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    iget-object v4, v3, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    const-string v5, "TLEN"

    .line 722
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 723
    iget-object p0, v3, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_32
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public static getSeekFrameHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;I)I
    .registers 4

    .line 685
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1a

    .line 686
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 687
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    const v0, 0x58696e67

    if-eq p1, v0, :cond_19

    const v0, 0x496e666f

    if-ne p1, v0, :cond_1a

    :cond_19
    return p1

    .line 692
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_31

    const/16 p1, 0x24

    .line 693
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 694
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    const p1, 0x56425249

    if-ne p0, p1, :cond_31

    return p1

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method public static headersMatch(IJ)Z
    .registers 7

    .line 0
    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static maybeHandleSeekMetadata(Lio/bidmachine/media3/common/Metadata;J)Lio/bidmachine/media3/extractor/mp3/MlltSeeker;
    .registers 7

    if-eqz p0, :cond_1f

    .line 705
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 707
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v2

    .line 708
    instance-of v3, v2, Lio/bidmachine/media3/extractor/metadata/id3/MlltFrame;

    if-eqz v3, :cond_1c

    .line 709
    check-cast v2, Lio/bidmachine/media3/extractor/metadata/id3/MlltFrame;

    invoke-static {p0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->getId3TlenUs(Lio/bidmachine/media3/common/Metadata;)J

    move-result-wide v0

    invoke-static {p1, p2, v2, v0, v1}, Lio/bidmachine/media3/extractor/mp3/MlltSeeker;->create(JLio/bidmachine/media3/extractor/metadata/id3/MlltFrame;J)Lio/bidmachine/media3/extractor/mp3/MlltSeeker;

    move-result-object p0

    return-object p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private readSample(Lio/bidmachine/media3/extractor/ExtractorInput;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_a0

    .line 321
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 322
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v2

    .line 325
    :cond_11
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 326
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 327
    iget v4, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 328
    invoke-static {v0}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->getFrameSize(I)I

    move-result v4

    if-ne v4, v2, :cond_2c

    goto :goto_9a

    .line 334
    :cond_2c
    iget-object v4, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    invoke-virtual {v4, v0}, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 335
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_5e

    .line 336
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lio/bidmachine/media3/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 337
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5e

    .line 338
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lio/bidmachine/media3/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    .line 339
    iget-wide v6, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v8, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 342
    :cond_5e
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v0, v0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iput v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 343
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v6, v0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 344
    iget-object v4, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    instance-of v5, v4, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;

    if-eqz v5, :cond_a0

    .line 345
    check-cast v4, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;

    .line 348
    iget-wide v5, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget v0, v0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    .line 349
    invoke-virtual {p0, v5, v6}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    iget-wide v7, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 348
    invoke-virtual {v4, v5, v6, v7, v8}, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->maybeAddSeekPoint(JJ)V

    .line 351
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    if-eqz v0, :cond_a0

    iget-wide v5, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    invoke-virtual {v4, v5, v6}, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 352
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 353
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    goto :goto_a0

    .line 330
    :cond_9a
    :goto_9a
    invoke-interface {p1, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 331
    iput v3, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v3

    .line 357
    :cond_a0
    :goto_a0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iget v4, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-interface {v0, p1, v4, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result p1

    if-ne p1, v2, :cond_ab

    return v2

    .line 361
    :cond_ab
    iget v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v0, :cond_b3

    return v3

    .line 365
    :cond_b3
    iget-object v4, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 366
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v8, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 365
    invoke-interface/range {v4 .. v10}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 367
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget p1, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 368
    iput v3, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    return v3
.end method


# virtual methods
.method public final computeSeeker(Lio/bidmachine/media3/extractor/ExtractorInput;)Lio/bidmachine/media3/extractor/mp3/Seeker;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->maybeReadSeekFrame(Lio/bidmachine/media3/extractor/ExtractorInput;)Lio/bidmachine/media3/extractor/mp3/Seeker;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->metadata:Lio/bidmachine/media3/common/Metadata;

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->maybeHandleSeekMetadata(Lio/bidmachine/media3/common/Metadata;J)Lio/bidmachine/media3/extractor/mp3/MlltSeeker;

    move-result-object v1

    .line 478
    iget-boolean v2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    if-eqz v2, :cond_18

    .line 479
    new-instance p1, Lio/bidmachine/media3/extractor/mp3/Seeker$UnseekableSeeker;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/mp3/Seeker$UnseekableSeeker;-><init>()V

    return-object p1

    .line 483
    :cond_18
    iget v2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4a

    if-eqz v1, :cond_2b

    .line 487
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    .line 488
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v0

    :goto_28
    move-wide v9, v0

    move-wide v5, v2

    goto :goto_3f

    :cond_2b
    if-eqz v0, :cond_36

    .line 490
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    .line 491
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v0

    goto :goto_28

    .line 493
    :cond_36
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->metadata:Lio/bidmachine/media3/common/Metadata;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->getId3TlenUs(Lio/bidmachine/media3/common/Metadata;)J

    move-result-wide v2

    const-wide/16 v0, -0x1

    goto :goto_28

    .line 495
    :goto_3f
    new-instance v4, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;

    .line 497
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    invoke-direct/range {v4 .. v10}, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;-><init>(JJJ)V

    move-object v0, v4

    goto :goto_52

    :cond_4a
    if-eqz v1, :cond_4e

    move-object v0, v1

    goto :goto_52

    :cond_4e
    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    const/4 v1, 0x1

    if-eqz v0, :cond_60

    .line 505
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/SeekMap;->isSeekable()Z

    move-result v2

    if-nez v2, :cond_6c

    iget v2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_6c

    .line 506
    :cond_60
    iget v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_67

    goto :goto_68

    :cond_67
    const/4 v1, 0x0

    .line 507
    :goto_68
    invoke-virtual {p0, p1, v1}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Lio/bidmachine/media3/extractor/mp3/Seeker;

    move-result-object v0

    :cond_6c
    if-eqz v0, :cond_77

    .line 512
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    :cond_77
    return-object v0
.end method

.method public final computeTimeUs(J)J
    .registers 7

    .line 373
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    iget-object v2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v2, v2, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public disableSeeking()V
    .registers 2

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    return-void
.end method

.method public final getConstantBitrateSeeker(JLio/bidmachine/media3/extractor/mp3/XingFrame;J)Lio/bidmachine/media3/extractor/mp3/Seeker;
    .registers 21

    move-object/from16 v0, p3

    .line 608
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/mp3/XingFrame;->computeDurationUs()J

    move-result-wide v5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    return-object v2

    .line 617
    :cond_11
    iget-wide v3, v0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->dataSize:J

    const-wide/16 v7, -0x1

    cmp-long v1, v3, v7

    if-eqz v1, :cond_24

    add-long v1, p1, v3

    .line 619
    iget-object v7, v0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v7, v7, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v7, v7

    sub-long/2addr v3, v7

    move-wide v8, v1

    :goto_22
    move-wide v1, v3

    goto :goto_34

    :cond_24
    cmp-long v1, p4, v7

    if-eqz v1, :cond_59

    sub-long v1, p4, p1

    .line 622
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v3, v3, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v3, v3

    sub-long v3, v1, v3

    move-wide/from16 v8, p4

    goto :goto_22

    .line 631
    :goto_34
    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const-wide/32 v3, 0x7a1200

    .line 633
    invoke-static/range {v1 .. v7}, Lio/bidmachine/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    .line 632
    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v12

    .line 638
    iget-wide v3, v0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->frameCount:J

    .line 639
    invoke-static {v1, v2, v3, v4, v7}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v13

    .line 643
    new-instance v7, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v0, v0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v0, v0

    add-long v10, p1, v0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZ)V

    return-object v7

    :cond_59
    return-object v2
.end method

.method public final getConstantBitrateSeeker(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Lio/bidmachine/media3/extractor/mp3/Seeker;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 589
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 590
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 591
    new-instance v2, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;

    .line 592
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLio/bidmachine/media3/extractor/MpegAudioUtil$Header;Z)V

    return-object v2
.end method

.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 4

    .line 230
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 231
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 232
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 233
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final maybeReadSeekFrame(Lio/bidmachine/media3/extractor/ExtractorInput;)Lio/bidmachine/media3/extractor/mp3/Seeker;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    new-instance v5, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v0, v0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-direct {v5, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 531
    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 533
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v1, v0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->version:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x15

    if-eqz v1, :cond_26

    .line 534
    iget v0, v0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->channels:I

    if-eq v0, v2, :cond_2d

    const/16 v3, 0x24

    goto :goto_2d

    .line 535
    :cond_26
    iget v0, v0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->channels:I

    if-eq v0, v2, :cond_2b

    goto :goto_2d

    :cond_2b
    const/16 v3, 0xd

    .line 536
    :cond_2d
    :goto_2d
    invoke-static {v5, v3}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->getSeekFrameHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;I)I

    move-result v0

    const v1, 0x496e666f

    const v2, 0x58696e67

    if-eq v0, v1, :cond_5b

    const v1, 0x56425249

    if-eq v0, v1, :cond_45

    if-eq v0, v2, :cond_5b

    .line 580
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p1, 0x0

    return-object p1

    .line 573
    :cond_45
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/extractor/mp3/VbriSeeker;->create(JJLio/bidmachine/media3/extractor/MpegAudioUtil$Header;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/mp3/VbriSeeker;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    return-object v0

    .line 541
    :cond_5b
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    invoke-static {v1, v5}, Lio/bidmachine/media3/extractor/mp3/XingFrame;->parse(Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/mp3/XingFrame;

    move-result-object v9

    .line 542
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lio/bidmachine/media3/extractor/GaplessInfoHolder;

    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v1

    if-nez v1, :cond_78

    iget v1, v9, Lio/bidmachine/media3/extractor/mp3/XingFrame;->encoderDelay:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_78

    iget v4, v9, Lio/bidmachine/media3/extractor/mp3/XingFrame;->encoderPadding:I

    if-eq v4, v3, :cond_78

    .line 545
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lio/bidmachine/media3/extractor/GaplessInfoHolder;

    iput v1, v3, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 546
    iput v4, v3, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 548
    :cond_78
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    .line 549
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c1

    iget-wide v3, v9, Lio/bidmachine/media3/extractor/mp3/XingFrame;->dataSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c1

    .line 551
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    iget-wide v5, v9, Lio/bidmachine/media3/extractor/mp3/XingFrame;->dataSize:J

    add-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c1

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data size mismatch between stream ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") and Xing frame ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lio/bidmachine/media3/extractor/mp3/XingFrame;->dataSize:J

    add-long/2addr v3, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), using Xing value."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    const-string v3, "Mp3Extractor"

    invoke-static {v3, v1}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_c1
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    if-ne v0, v2, :cond_cf

    .line 566
    invoke-static {v9, v7, v8}, Lio/bidmachine/media3/extractor/mp3/XingSeeker;->create(Lio/bidmachine/media3/extractor/mp3/XingFrame;J)Lio/bidmachine/media3/extractor/mp3/XingSeeker;

    move-result-object p1

    return-object p1

    .line 568
    :cond_cf
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v10

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(JLio/bidmachine/media3/extractor/mp3/XingFrame;J)Lio/bidmachine/media3/extractor/mp3/Seeker;

    move-result-object p1

    return-object p1
.end method

.method public final maybeUpdateCbrDurationToLastSample()V
    .registers 5

    .line 657
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    instance-of v1, v0, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;

    if-eqz v1, :cond_48

    .line 658
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    .line 660
    invoke-interface {v2}, Lio/bidmachine/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_48

    .line 661
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    check-cast v0, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->endPositionOfLastSampleRead:J

    .line 662
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;->copyWithNewDataEndPosition(J)Lio/bidmachine/media3/extractor/mp3/ConstantBitrateSeeker;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    .line 663
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 664
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    :cond_48
    return-void
.end method

.method public final peekEndOfStreamOrHeader(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    .line 457
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1b

    .line 459
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_1b

    return v1

    .line 464
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 465
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 464
    invoke-interface {p1, v0, v2, v3, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p1
    :try_end_27
    .catch Ljava/io/EOFException; {:try_start_1b .. :try_end_27} :catch_29

    xor-int/2addr p1, v1

    return p1

    :catch_29
    return v1
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->assertInitialized()V

    .line 257
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->readInternal(Lio/bidmachine/media3/extractor/ExtractorInput;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_39

    .line 258
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    instance-of p2, p2, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;

    if-eqz p2, :cond_39

    .line 260
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v0

    .line 261
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    invoke-interface {p2}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_39

    .line 262
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    check-cast p2, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;

    invoke-virtual {p2, v0, v1}, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->setDurationUs(J)V

    .line 263
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    invoke-interface {p2, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 264
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    :cond_39
    return p1
.end method

.method public final readInternal(Lio/bidmachine/media3/extractor/ExtractorInput;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 285
    :try_start_5
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronize(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Z
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_b

    :catch_9
    const/4 p1, -0x1

    return p1

    .line 290
    :cond_b
    :goto_b
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    if-nez v0, :cond_85

    .line 291
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->computeSeeker(Lio/bidmachine/media3/extractor/ExtractorInput;)Lio/bidmachine/media3/extractor/mp3/Seeker;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    .line 292
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 293
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v1, "audio/mpeg"

    .line 295
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget-object v1, v1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 296
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 297
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setMaxInputSize(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->channels:I

    .line 298
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 299
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lio/bidmachine/media3/extractor/GaplessInfoHolder;

    iget v1, v1, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 300
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setEncoderDelay(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lio/bidmachine/media3/extractor/GaplessInfoHolder;

    iget v1, v1, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 301
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setEncoderPadding(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 302
    iget v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5b

    const/4 v1, 0x0

    goto :goto_5d

    :cond_5b
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->metadata:Lio/bidmachine/media3/common/Metadata;

    :goto_5d
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/mp3/Seeker;->getAverageBitrate()I

    move-result v1

    const v2, -0x7fffffff

    if-eq v1, v2, :cond_75

    .line 304
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/mp3/Seeker;->getAverageBitrate()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 306
    :cond_75
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 307
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    goto :goto_9c

    .line 308
    :cond_85
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9c

    .line 309
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 310
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_9c

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 312
    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 315
    :cond_9c
    :goto_9c
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->readSample(Lio/bidmachine/media3/extractor/ExtractorInput;)I

    move-result p1

    return p1
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public seek(JJ)V
    .registers 7

    const/4 p1, 0x0

    .line 238
    iput p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 239
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/16 v0, 0x0

    .line 240
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 241
    iput p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 242
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    .line 243
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->seeker:Lio/bidmachine/media3/extractor/mp3/Seeker;

    instance-of p2, p1, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;

    if-eqz p2, :cond_27

    check-cast p1, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;

    invoke-virtual {p1, p3, p4}, Lio/bidmachine/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result p1

    if-nez p1, :cond_27

    const/4 p1, 0x1

    .line 244
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    .line 245
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    :cond_27
    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 225
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronize(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Z

    move-result p1

    return p1
.end method

.method public final synchronize(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_6

    const v0, 0x8000

    goto :goto_8

    :cond_6
    const/high16 v0, 0x20000

    .line 382
    :goto_8
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 383
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_3d

    .line 386
    iget v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_20

    .line 388
    :cond_1e
    sget-object v1, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    .line 389
    :goto_20
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->id3Peeker:Lio/bidmachine/media3/extractor/Id3Peeker;

    invoke-virtual {v3, p1, v1}, Lio/bidmachine/media3/extractor/Id3Peeker;->peekId3Data(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->metadata:Lio/bidmachine/media3/common/Metadata;

    if-eqz v1, :cond_2f

    .line 391
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lio/bidmachine/media3/extractor/GaplessInfoHolder;

    invoke-virtual {v3, v1}, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->setFromMetadata(Lio/bidmachine/media3/common/Metadata;)Z

    .line 393
    :cond_2f
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v3

    long-to-int v1, v3

    if-nez p2, :cond_39

    .line 395
    invoke-interface {p1, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_39
    move v3, v2

    :goto_3a
    move v4, v3

    move v5, v4

    goto :goto_40

    :cond_3d
    move v1, v2

    move v3, v1

    goto :goto_3a

    .line 399
    :goto_40
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_53

    if-lez v4, :cond_4a

    goto :goto_9e

    .line 404
    :cond_4a
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->maybeUpdateCbrDurationToLastSample()V

    .line 405
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 407
    :cond_53
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 408
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    if-eqz v3, :cond_67

    int-to-long v8, v3

    .line 411
    invoke-static {v6, v8, v9}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 412
    :cond_67
    invoke-static {v6}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->getFrameSize(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_90

    :cond_6e
    add-int/lit8 v3, v5, 0x1

    if-ne v5, v0, :cond_7e

    if-eqz p2, :cond_75

    return v2

    .line 416
    :cond_75
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->maybeUpdateCbrDurationToLastSample()V

    .line 417
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_7e
    if-eqz p2, :cond_89

    .line 424
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    add-int v4, v1, v3

    .line 425
    invoke-interface {p1, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_8c

    .line 427
    :cond_89
    invoke-interface {p1, v7}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    :goto_8c
    move v4, v2

    move v5, v3

    move v3, v4

    goto :goto_40

    :cond_90
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_9b

    .line 433
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    invoke-virtual {v3, v6}, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move v3, v6

    goto :goto_ab

    :cond_9b
    const/4 v6, 0x4

    if-ne v4, v6, :cond_ab

    :goto_9e
    if-eqz p2, :cond_a5

    add-int/2addr v1, v5

    .line 443
    invoke-interface {p1, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_a8

    .line 445
    :cond_a5
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 447
    :goto_a8
    iput v3, p0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v7

    :cond_ab
    :goto_ab
    add-int/lit8 v8, v8, -0x4

    .line 438
    invoke-interface {p1, v8}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_40
.end method

###### Class io.bidmachine.media3.extractor.mp3.Mp3Extractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.mp3.Mp3Extractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->$r8$lambda$4nZqF3UGfAwPveeeaVA9AwCVgpA()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.mp3.Mp3Extractor$$ExternalSyntheticLambda1 (io.bidmachine.media3.extractor.mp3.Mp3Extractor$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(IIIII)Z
    .registers 6

    .line 0
    invoke-static {p1, p2, p3, p4, p5}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;->$r8$lambda$SNWO3uwAV7vC9LhJq84taGAxo-0(IIIII)Z

    move-result p1

    return p1
.end method
