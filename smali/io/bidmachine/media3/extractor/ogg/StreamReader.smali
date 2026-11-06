###### Class io.bidmachine.media3.extractor.ogg.StreamReader (io.bidmachine.media3.extractor.ogg.StreamReader)
.class public abstract Lio/bidmachine/media3/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;,
        Lio/bidmachine/media3/extractor/ogg/StreamReader$UnseekableOggSeeker;
    }
.end annotation


# instance fields
.field public currentGranule:J

.field public extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public formatSet:Z

.field public lengthOfReadPacket:J

.field public final oggPacket:Lio/bidmachine/media3/extractor/ogg/OggPacket;

.field public oggSeeker:Lio/bidmachine/media3/extractor/ogg/OggSeeker;

.field public payloadStartPosition:J

.field public sampleRate:I

.field public seekMapSet:Z

.field public setupData:Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;

.field public state:I

.field public targetGranule:J

.field public trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lio/bidmachine/media3/extractor/ogg/OggPacket;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggPacket:Lio/bidmachine/media3/extractor/ogg/OggPacket;

    .line 67
    new-instance v0, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->setupData:Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;

    return-void
.end method


# virtual methods
.method public final assertInitialized()V
    .registers 2

    .line 134
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public convertGranuleToTime(J)J
    .registers 5

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 241
    iget v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public convertTimeToGranule(J)J
    .registers 5

    .line 251
    iget v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/TrackOutput;)V
    .registers 3

    .line 71
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 72
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->reset(Z)V

    return-void
.end method

.method public onSeekEnd(J)V
    .registers 3

    .line 281
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->currentGranule:J

    return-void
.end method

.method public abstract preparePayload(Lio/bidmachine/media3/common/util/ParsableByteArray;)J
.end method

.method public final read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->assertInitialized()V

    .line 114
    iget v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->state:I

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_22

    if-eq v0, v2, :cond_18

    const/4 p1, 0x3

    if-ne v0, p1, :cond_12

    const/4 p1, -0x1

    return p1

    .line 128
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 122
    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggSeeker:Lio/bidmachine/media3/extractor/ogg/OggSeeker;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->readPayload(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 118
    :cond_22
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->payloadStartPosition:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 119
    iput v2, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->state:I

    const/4 p1, 0x0

    return p1

    .line 116
    :cond_2c
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->readHeadersAndUpdateState(Lio/bidmachine/media3/extractor/ExtractorInput;)I

    move-result p1

    return p1
.end method

.method public abstract readHeaders(Lio/bidmachine/media3/common/util/ParsableByteArray;JLio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final readHeaders(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggPacket:Lio/bidmachine/media3/extractor/ogg/OggPacket;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/ogg/OggPacket;->populate(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p1, 0x3

    .line 150
    iput p1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->state:I

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_d
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->payloadStartPosition:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 155
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggPacket:Lio/bidmachine/media3/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ogg/OggPacket;->getPayload()Lio/bidmachine/media3/common/util/ParsableByteArray;

    move-result-object v0

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->payloadStartPosition:J

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->setupData:Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->readHeaders(Lio/bidmachine/media3/common/util/ParsableByteArray;JLio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 156
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->payloadStartPosition:J

    goto :goto_0

    :cond_2d
    const/4 p1, 0x1

    return p1
.end method

.method public final readHeadersAndUpdateState(Lio/bidmachine/media3/extractor/ExtractorInput;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->readHeaders(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    .line 169
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->setupData:Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    iget v2, v0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    iput v2, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->sampleRate:I

    .line 170
    iget-boolean v2, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->formatSet:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1c

    .line 171
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v2, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 172
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->formatSet:Z

    .line 175
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->setupData:Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lio/bidmachine/media3/extractor/ogg/OggSeeker;

    const/4 v11, 0x0

    if-eqz v0, :cond_26

    .line 176
    iput-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggSeeker:Lio/bidmachine/media3/extractor/ogg/OggSeeker;

    goto :goto_63

    .line 177
    :cond_26
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_39

    .line 178
    new-instance v0, Lio/bidmachine/media3/extractor/ogg/StreamReader$UnseekableOggSeeker;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lio/bidmachine/media3/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>(Lio/bidmachine/media3/extractor/ogg/StreamReader$1;)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggSeeker:Lio/bidmachine/media3/extractor/ogg/OggSeeker;

    goto :goto_63

    .line 180
    :cond_39
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggPacket:Lio/bidmachine/media3/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ogg/OggPacket;->getPageHeader()Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    move-result-object v0

    .line 181
    iget v2, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->type:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_47

    move v10, v3

    goto :goto_48

    :cond_47
    move v10, v11

    .line 182
    :goto_48
    new-instance v2, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;

    move-object v4, v2

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->payloadStartPosition:J

    .line 186
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    iget v7, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->headerSize:I

    iget v8, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/2addr v7, v8

    int-to-long v7, v7

    iget-wide v12, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->granulePosition:J

    move-object v1, p0

    move-object v0, v4

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v12

    invoke-direct/range {v0 .. v10}, Lio/bidmachine/media3/extractor/ogg/DefaultOggSeeker;-><init>(Lio/bidmachine/media3/extractor/ogg/StreamReader;JJJJZ)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggSeeker:Lio/bidmachine/media3/extractor/ogg/OggSeeker;

    :goto_63
    const/4 v0, 0x2

    .line 192
    iput v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->state:I

    .line 194
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggPacket:Lio/bidmachine/media3/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ogg/OggPacket;->trimPayload()V

    return v11
.end method

.method public final readPayload(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 200
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggSeeker:Lio/bidmachine/media3/extractor/ogg/OggSeeker;

    invoke-interface {v2, v1}, Lio/bidmachine/media3/extractor/ogg/OggSeeker;->read(Lio/bidmachine/media3/extractor/ExtractorInput;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    if-ltz v6, :cond_16

    move-object/from16 v6, p2

    .line 202
    iput-wide v2, v6, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    return v7

    :cond_16
    const-wide/16 v8, -0x1

    cmp-long v6, v2, v8

    if-gez v6, :cond_23

    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    neg-long v2, v2

    .line 205
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->onSeekEnd(J)V

    .line 208
    :cond_23
    iget-boolean v2, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->seekMapSet:Z

    if-nez v2, :cond_43

    .line 209
    iget-object v2, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggSeeker:Lio/bidmachine/media3/extractor/ogg/OggSeeker;

    invoke-interface {v2}, Lio/bidmachine/media3/extractor/ogg/OggSeeker;->createSeekMap()Lio/bidmachine/media3/extractor/SeekMap;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/SeekMap;

    .line 210
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {v3, v2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 211
    iget-object v3, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v2}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v10

    invoke-interface {v3, v10, v11}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    .line 212
    iput-boolean v7, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->seekMapSet:Z

    .line 215
    :cond_43
    iget-wide v2, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_57

    iget-object v2, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggPacket:Lio/bidmachine/media3/extractor/ogg/OggPacket;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/extractor/ogg/OggPacket;->populate(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_52

    goto :goto_57

    :cond_52
    const/4 v1, 0x3

    .line 228
    iput v1, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->state:I

    const/4 v1, -0x1

    return v1

    .line 216
    :cond_57
    :goto_57
    iput-wide v4, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->lengthOfReadPacket:J

    .line 217
    iget-object v1, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggPacket:Lio/bidmachine/media3/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/ogg/OggPacket;->getPayload()Lio/bidmachine/media3/common/util/ParsableByteArray;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->preparePayload(Lio/bidmachine/media3/common/util/ParsableByteArray;)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_8d

    .line 219
    iget-wide v4, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->currentGranule:J

    add-long v6, v4, v2

    iget-wide v10, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->targetGranule:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_8d

    .line 221
    invoke-virtual {v0, v4, v5}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v11

    .line 222
    iget-object v4, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 223
    iget-object v10, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x1

    invoke-interface/range {v10 .. v16}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 224
    iput-wide v8, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->targetGranule:J

    .line 226
    :cond_8d
    iget-wide v4, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->currentGranule:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->currentGranule:J

    const/4 v1, 0x0

    return v1
.end method

.method public reset(Z)V
    .registers 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_11

    .line 83
    new-instance p1, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->setupData:Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;

    .line 84
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->payloadStartPosition:J

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->state:I

    goto :goto_14

    :cond_11
    const/4 p1, 0x1

    .line 87
    iput p1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->state:I

    :goto_14
    const-wide/16 v2, -0x1

    .line 89
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->targetGranule:J

    .line 90
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->currentGranule:J

    return-void
.end method

.method public final seek(JJ)V
    .registers 7

    .line 97
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggPacket:Lio/bidmachine/media3/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ogg/OggPacket;->reset()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_13

    .line 99
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->seekMapSet:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->reset(Z)V

    return-void

    .line 101
    :cond_13
    iget p1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->state:I

    if-eqz p1, :cond_2d

    .line 102
    invoke-virtual {p0, p3, p4}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->targetGranule:J

    .line 103
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->oggSeeker:Lio/bidmachine/media3/extractor/ogg/OggSeeker;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/ogg/OggSeeker;

    iget-wide p2, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->targetGranule:J

    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/extractor/ogg/OggSeeker;->startSeek(J)V

    const/4 p1, 0x2

    .line 104
    iput p1, p0, Lio/bidmachine/media3/extractor/ogg/StreamReader;->state:I

    :cond_2d
    return-void
.end method

###### Class io.bidmachine.media3.extractor.ogg.StreamReader.AnonymousClass1 (io.bidmachine.media3.extractor.ogg.StreamReader$1)
.class public synthetic Lio/bidmachine/media3/extractor/ogg/StreamReader$1;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.ogg.StreamReader.SetupData (io.bidmachine.media3.extractor.ogg.StreamReader$SetupData)
.class public Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupData"
.end annotation


# instance fields
.field public format:Lio/bidmachine/media3/common/Format;

.field public oggSeeker:Lio/bidmachine/media3/extractor/ogg/OggSeeker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.ogg.StreamReader.UnseekableOggSeeker (io.bidmachine.media3.extractor.ogg.StreamReader$UnseekableOggSeeker)
.class public final Lio/bidmachine/media3/extractor/ogg/StreamReader$UnseekableOggSeeker;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/ogg/StreamReader$1;)V
    .registers 2

    .line 284
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>()V

    return-void
.end method


# virtual methods
.method public createSeekMap()Lio/bidmachine/media3/extractor/SeekMap;
    .registers 4

    .line 298
    new-instance v0, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;)J
    .registers 4

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public startSeek(J)V
    .registers 3

    .line 0
    return-void
.end method
