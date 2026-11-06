###### Class io.bidmachine.media3.extractor.wav.WavExtractor (io.bidmachine.media3.extractor.wav.WavExtractor)
.class public final Lio/bidmachine/media3/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;,
        Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;,
        Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;
    }
.end annotation


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;


# instance fields
.field public dataEndPosition:J

.field public dataStartPosition:I

.field public extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public outputWriter:Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;

.field public rf64SampleDataSize:J

.field public state:I

.field public trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;


# direct methods
.method public static synthetic $r8$lambda$3ewufOl9l8H9-Zay9ezcTGv3wHk()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 63
    new-instance v0, Lio/bidmachine/media3/extractor/wav/WavExtractor;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/wav/WavExtractor;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->state:I

    const-wide/16 v0, -0x1

    .line 94
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const/4 v2, -0x1

    .line 95
    iput v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 96
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    return-void
.end method

.method private assertInitialized()V
    .registers 2

    .line 150
    iget-object v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 4

    .line 106
    iput-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 107
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 108
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/wav/WavExtractor;->assertInitialized()V

    .line 128
    iget p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->state:I

    const/4 v0, 0x0

    if-eqz p2, :cond_2b

    const/4 v1, 0x1

    if-eq p2, v1, :cond_27

    const/4 v1, 0x2

    if-eq p2, v1, :cond_23

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1f

    const/4 v0, 0x4

    if-ne p2, v0, :cond_19

    .line 142
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/wav/WavExtractor;->readSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 144
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 139
    :cond_1f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/wav/WavExtractor;->skipToSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v0

    .line 136
    :cond_23
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/wav/WavExtractor;->readFormat(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v0

    .line 133
    :cond_27
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/wav/WavExtractor;->readRf64SampleDataSize(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v0

    .line 130
    :cond_2b
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/wav/WavExtractor;->readFileType(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v0
.end method

.method public final readFileType(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 156
    iget v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1d

    .line 157
    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x4

    .line 158
    iput p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->state:I

    return-void

    .line 161
    :cond_1d
    invoke-static {p1}, Lio/bidmachine/media3/extractor/wav/WavHeaderReader;->checkFileType(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 166
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 167
    iput v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->state:I

    return-void

    .line 163
    :cond_33
    const-string p1, "Unsupported or unrecognized wav file type."

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final readFormat(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-static {p1}, Lio/bidmachine/media3/extractor/wav/WavHeaderReader;->readFormat(Lio/bidmachine/media3/extractor/ExtractorInput;)Lio/bidmachine/media3/extractor/wav/WavFormat;

    move-result-object v3

    .line 178
    iget p1, v3, Lio/bidmachine/media3/extractor/wav/WavFormat;->formatType:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_16

    .line 179
    new-instance p1, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-direct {p1, v0, v1, v3}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;-><init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/wav/WavFormat;)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->outputWriter:Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_4f

    :cond_16
    const/4 v0, 0x6

    if-ne p1, v0, :cond_28

    .line 181
    new-instance v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    const-string v4, "audio/g711-alaw"

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->outputWriter:Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_4f

    :cond_28
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3a

    .line 189
    new-instance v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    const-string v4, "audio/g711-mlaw"

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->outputWriter:Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_4f

    .line 198
    :cond_3a
    iget v0, v3, Lio/bidmachine/media3/extractor/wav/WavFormat;->bitsPerSample:I

    .line 199
    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/WavUtil;->getPcmEncodingForType(II)I

    move-result v5

    if-eqz v5, :cond_53

    .line 204
    new-instance v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    const-string v4, "audio/raw"

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->outputWriter:Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;

    :goto_4f
    const/4 p1, 0x3

    .line 208
    iput p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->state:I

    return-void

    .line 201
    :cond_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported WAV format type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lio/bidmachine/media3/extractor/wav/WavFormat;->formatType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final readRf64SampleDataSize(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-static {p1}, Lio/bidmachine/media3/extractor/wav/WavHeaderReader;->readRf64SampleDataSize(Lio/bidmachine/media3/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const/4 p1, 0x2

    .line 172
    iput p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->state:I

    return-void
.end method

.method public final readSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 232
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 233
    iget-object v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->outputWriter:Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-interface {v0, p1, v2, v3}, Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;->sampleData(Lio/bidmachine/media3/extractor/ExtractorInput;J)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, -0x1

    return p1

    :cond_26
    return v1
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public seek(JJ)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_9

    :cond_8
    const/4 p1, 0x4

    .line 113
    :goto_9
    iput p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->state:I

    .line 114
    iget-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->outputWriter:Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;

    if-eqz p1, :cond_12

    .line 115
    invoke-interface {p1, p3, p4}, Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;->reset(J)V

    :cond_12
    return-void
.end method

.method public final skipToSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-static {p1}, Lio/bidmachine/media3/extractor/wav/WavHeaderReader;->skipToSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;)Landroid/util/Pair;

    move-result-object v0

    .line 213
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 214
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 215
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_28

    const-wide v6, 0xffffffffL

    cmp-long v6, v0, v6

    if-nez v6, :cond_28

    move-wide v0, v2

    .line 220
    :cond_28
    iget v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 221
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_5e

    .line 222
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_5e

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data exceeds input length: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WavExtractor"

    invoke-static {v2, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 226
    :cond_5e
    iget-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->outputWriter:Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;

    iget v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataStartPosition:I

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1, v0, v1, v2}, Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;->init(IJ)V

    const/4 p1, 0x4

    .line 227
    iput p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor;->state:I

    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-static {p1}, Lio/bidmachine/media3/extractor/wav/WavHeaderReader;->checkFileType(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.extractor.wav.WavExtractor.ImaAdPcmOutputWriter (io.bidmachine.media3.extractor.wav.WavExtractor$ImaAdPcmOutputWriter)
.class public final Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImaAdPcmOutputWriter"
.end annotation


# static fields
.field public static final INDEX_TABLE:[I

.field public static final STEP_TABLE:[I


# instance fields
.field public final decodedData:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public final format:Lio/bidmachine/media3/common/Format;

.field public final framesPerBlock:I

.field public final inputData:[B

.field public outputFrameCount:J

.field public pendingInputBytes:I

.field public pendingOutputBytes:I

.field public startTimeUs:J

.field public final targetSampleSizeFrames:I

.field public final trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 388
    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    const/16 v0, 0x59

    .line 392
    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_38
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/wav/WavFormat;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 443
    iput-object p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 444
    iput-object p3, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    .line 445
    iget p1, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->frameRateHz:I

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    .line 447
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v1, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->extraData:[B

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 448
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 449
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    .line 451
    iget v1, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->numChannels:I

    .line 456
    iget v2, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/lit8 v3, v1, 0x4

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x8

    iget v3, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int/2addr v3, v1

    div-int/2addr v2, v3

    add-int/2addr v2, p2

    if-ne v0, v2, :cond_86

    .line 468
    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Util;->ceilDivide(II)I

    move-result p2

    .line 469
    iget v2, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    .line 470
    new-instance v2, Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 472
    invoke-static {v0, v1}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result v3

    mul-int/2addr p2, v3

    invoke-direct {v2, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 476
    iget p2, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->frameRateHz:I

    iget v2, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr p2, v2

    mul-int/lit8 p2, p2, 0x8

    div-int/2addr p2, v0

    .line 477
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v2, "audio/raw"

    .line 479
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 480
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 481
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 482
    invoke-static {p1, v1}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result p1

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/Format$Builder;->setMaxInputSize(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget p2, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->numChannels:I

    .line 483
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget p2, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->frameRateHz:I

    .line 484
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 485
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setPcmEncoding(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 486
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Lio/bidmachine/media3/common/Format;

    return-void

    .line 461
    :cond_86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected frames per block: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; got: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public static numOutputFramesToBytes(II)I
    .registers 2

    .line 0
    mul-int/lit8 p0, p0, 0x2

    mul-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final decode([BILio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_18

    move v2, v0

    .line 579
    :goto_5
    iget-object v3, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    iget v3, v3, Lio/bidmachine/media3/extractor/wav/WavFormat;->numChannels:I

    if-ge v2, v3, :cond_15

    .line 580
    invoke-virtual {p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodeBlockForChannel([BII[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 583
    :cond_18
    iget p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(I)I

    move-result p1

    .line 584
    invoke-virtual {p3, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 585
    invoke-virtual {p3, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method public final decodeBlockForChannel([BII[B)V
    .registers 15

    .line 590
    iget-object v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    iget v1, v0, Lio/bidmachine/media3/extractor/wav/WavFormat;->blockSize:I

    .line 591
    iget v0, v0, Lio/bidmachine/media3/extractor/wav/WavFormat;->numChannels:I

    mul-int v2, p2, v1

    mul-int/lit8 v3, p3, 0x4

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v2

    .line 603
    div-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v4, v2, 0x1

    .line 607
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-short v4, v4

    add-int/lit8 v2, v2, 0x2

    .line 609
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x58

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 610
    sget-object v5, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    aget v5, v5, v2

    .line 613
    iget v6, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    mul-int/2addr p2, v6

    mul-int/2addr p2, v0

    add-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x2

    and-int/lit16 p3, v4, 0xff

    int-to-byte p3, p3

    .line 614
    aput-byte p3, p4, p2

    add-int/lit8 p3, p2, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    .line 615
    aput-byte v6, p4, p3

    const/4 p3, 0x0

    move v6, p3

    :goto_44
    mul-int/lit8 v7, v1, 0x2

    if-ge v6, v7, :cond_99

    .line 619
    div-int/lit8 v7, v6, 0x8

    .line 620
    div-int/lit8 v8, v6, 0x2

    rem-int/lit8 v8, v8, 0x4

    mul-int/2addr v7, v0

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v3

    add-int/2addr v7, v8

    .line 623
    aget-byte v7, p1, v7

    and-int/lit16 v8, v7, 0xff

    .line 624
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_5e

    and-int/lit8 v7, v7, 0xf

    goto :goto_60

    :cond_5e
    shr-int/lit8 v7, v8, 0x4

    :goto_60
    and-int/lit8 v8, v7, 0x7

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v8, v5

    shr-int/lit8 v5, v8, 0x3

    and-int/lit8 v8, v7, 0x8

    if-eqz v8, :cond_6e

    neg-int v5, v5

    :cond_6e
    add-int/2addr v4, v5

    const/16 v5, -0x8000

    const/16 v8, 0x7fff

    .line 638
    invoke-static {v4, v5, v8}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr p2, v5

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    .line 642
    aput-byte v5, p4, p2

    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    .line 643
    aput-byte v8, p4, v5

    .line 645
    sget-object v5, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    aget v5, v5, v7

    add-int/2addr v2, v5

    .line 646
    sget-object v5, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    invoke-static {v2, p3, v7}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result v2

    .line 647
    aget v5, v5, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_99
    return-void
.end method

.method public init(IJ)V
    .registers 11

    .line 499
    new-instance v0, Lio/bidmachine/media3/extractor/wav/WavSeekMap;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    iget v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    int-to-long v3, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/extractor/wav/WavSeekMap;-><init>(Lio/bidmachine/media3/extractor/wav/WavFormat;IJJ)V

    .line 501
    iget-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 502
    iget-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Lio/bidmachine/media3/common/Format;

    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 503
    iget-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/wav/WavSeekMap;->getDurationUs()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    return-void
.end method

.method public final numOutputBytesToFrames(I)I
    .registers 3

    .line 652
    iget-object v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    iget v0, v0, Lio/bidmachine/media3/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr p1, v0

    return p1
.end method

.method public final numOutputFramesToBytes(I)I
    .registers 3

    .line 656
    iget-object v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    iget v0, v0, Lio/bidmachine/media3/extractor/wav/WavFormat;->numChannels:I

    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(II)I

    move-result p1

    return p1
.end method

.method public reset(J)V
    .registers 4

    const/4 v0, 0x0

    .line 491
    iput v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 492
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    .line 493
    iput v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    .line 494
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    return-void
.end method

.method public sampleData(Lio/bidmachine/media3/extractor/ExtractorInput;J)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    iget v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    iget v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 511
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 513
    iget v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->ceilDivide(II)I

    move-result v0

    .line 514
    iget-object v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    iget v1, v1, Lio/bidmachine/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v0, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    const/4 v2, 0x1

    if-nez v1, :cond_1d

    :goto_1b
    move v1, v2

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-nez v1, :cond_3e

    .line 518
    iget v3, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    if-ge v3, v0, :cond_3e

    sub-int v3, v0, v3

    int-to-long v3, v3

    .line 519
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 520
    iget-object v4, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget v5, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    invoke-interface {p1, v4, v5, v3}, Lio/bidmachine/media3/extractor/ExtractorInput;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_38

    goto :goto_1b

    .line 524
    :cond_38
    iget v4, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    add-int/2addr v4, v3

    iput v4, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    goto :goto_1e

    .line 528
    :cond_3e
    iget p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    iget p2, p2, Lio/bidmachine/media3/extractor/wav/WavFormat;->blockSize:I

    div-int/2addr p1, p2

    if-lez p1, :cond_75

    .line 531
    iget-object p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    iget-object p3, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, p2, p1, p3}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decode([BILio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 532
    iget p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget-object p3, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    iget p3, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr p1, p3

    sub-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    .line 535
    iget-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p1

    .line 536
    iget-object p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object p3, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {p2, p3, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 537
    iget p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    .line 540
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result p1

    .line 541
    iget p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    if-lt p1, p2, :cond_75

    .line 542
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    :cond_75
    if-eqz v1, :cond_82

    .line 548
    iget p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputBytesToFrames(I)I

    move-result p1

    if-lez p1, :cond_82

    .line 550
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    :cond_82
    return v1
.end method

.method public final writeSampleMetadata(I)V
    .registers 13

    .line 558
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    iget-object v4, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    iget v4, v4, Lio/bidmachine/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v6, v4

    const-wide/32 v4, 0xf4240

    .line 560
    invoke-static/range {v2 .. v7}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    add-long v5, v0, v2

    .line 562
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->numOutputFramesToBytes(I)I

    move-result v8

    .line 563
    iget v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int v9, v0, v8

    .line 564
    iget-object v4, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 566
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    .line 567
    iget p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int/2addr p1, v8

    iput p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.wav.WavExtractor.OutputWriter (io.bidmachine.media3.extractor.wav.WavExtractor$OutputWriter)
.class public interface abstract Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OutputWriter"
.end annotation


# virtual methods
.method public abstract init(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract reset(J)V
.end method

.method public abstract sampleData(Lio/bidmachine/media3/extractor/ExtractorInput;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.extractor.wav.WavExtractor.PassthroughOutputWriter (io.bidmachine.media3.extractor.wav.WavExtractor$PassthroughOutputWriter)
.class public final Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/wav/WavExtractor$OutputWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PassthroughOutputWriter"
.end annotation


# instance fields
.field public final extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public final format:Lio/bidmachine/media3/common/Format;

.field public outputFrameCount:J

.field public pendingOutputBytes:I

.field public startTimeUs:J

.field public final targetSampleSizeBytes:I

.field public final trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/wav/WavFormat;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 307
    iput-object p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 308
    iput-object p3, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    .line 310
    iget p1, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->numChannels:I

    iget p2, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 312
    iget p2, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->blockSize:I

    if-ne p2, p1, :cond_55

    .line 318
    iget p2, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->frameRateHz:I

    mul-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x8

    mul-int/2addr p2, p1

    .line 319
    div-int/lit8 p2, p2, 0xa

    .line 320
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    .line 321
    new-instance p2, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p2}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v1, "audio/wav"

    .line 323
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 324
    invoke-virtual {p2, p4}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 325
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 326
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 327
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/Format$Builder;->setMaxInputSize(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget p2, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->numChannels:I

    .line 328
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget p2, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->frameRateHz:I

    .line 329
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 330
    invoke-virtual {p1, p5}, Lio/bidmachine/media3/common/Format$Builder;->setPcmEncoding(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Lio/bidmachine/media3/common/Format;

    return-void

    .line 313
    :cond_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Expected block size: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lio/bidmachine/media3/extractor/wav/WavFormat;->blockSize:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public init(IJ)V
    .registers 11

    .line 343
    new-instance v0, Lio/bidmachine/media3/extractor/wav/WavSeekMap;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    const/4 v2, 0x1

    int-to-long v3, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/extractor/wav/WavSeekMap;-><init>(Lio/bidmachine/media3/extractor/wav/WavFormat;IJJ)V

    .line 345
    iget-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 346
    iget-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Lio/bidmachine/media3/common/Format;

    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 347
    iget-object p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/wav/WavSeekMap;->getDurationUs()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    return-void
.end method

.method public reset(J)V
    .registers 3

    .line 336
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    const/4 p1, 0x0

    .line 337
    iput p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    .line 338
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    return-void
.end method

.method public sampleData(Lio/bidmachine/media3/extractor/ExtractorInput;J)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_4
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_2d

    .line 353
    iget v7, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    iget v8, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    if-ge v7, v8, :cond_2d

    sub-int/2addr v8, v7

    int-to-long v7, v8

    .line 354
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    .line 355
    iget-object v7, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v5, v6}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_25

    move-wide v1, v3

    goto :goto_4

    .line 359
    :cond_25
    iget v3, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    add-int/2addr v3, v5

    iput v3, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_4

    .line 367
    :cond_2d
    iget-object v1, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lio/bidmachine/media3/extractor/wav/WavFormat;

    iget v2, v1, Lio/bidmachine/media3/extractor/wav/WavFormat;->blockSize:I

    .line 368
    iget v3, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    div-int/2addr v3, v2

    if-lez v3, :cond_5e

    .line 370
    iget-wide v7, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    iget-wide v9, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    iget v1, v1, Lio/bidmachine/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v13, v1

    const-wide/32 v11, 0xf4240

    .line 372
    invoke-static/range {v9 .. v14}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v3, v2

    .line 375
    iget v1, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    sub-int v16, v1, v15

    .line 376
    iget-object v11, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    const/4 v14, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v11 .. v17}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    move/from16 v1, v16

    .line 378
    iget-wide v7, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    int-to-long v2, v3

    add-long/2addr v7, v2

    iput-wide v7, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    .line 379
    iput v1, v0, Lio/bidmachine/media3/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    :cond_5e
    if-gtz v5, :cond_61

    return v6

    :cond_61
    const/4 v1, 0x0

    return v1
.end method

###### Class io.bidmachine.media3.extractor.wav.WavExtractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.wav.WavExtractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;
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
    invoke-static {}, Lio/bidmachine/media3/extractor/wav/WavExtractor;->$r8$lambda$3ewufOl9l8H9-Zay9ezcTGv3wHk()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
