###### Class io.bidmachine.media3.exoplayer.hls.WebvttExtractor (io.bidmachine.media3.exoplayer.hls.WebvttExtractor)
.class public final Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# static fields
.field public static final LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

.field public static final MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;


# instance fields
.field public final language:Ljava/lang/String;

.field public output:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public final parseSubtitlesDuringExtraction:Z

.field public sampleData:[B

.field public final sampleDataWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public sampleSize:I

.field public final subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

.field public final timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-string v0, "LOCAL:([^,]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    .line 56
    const-string v0, "MPEGTS:(-?\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Z)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->language:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    .line 91
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 p1, 0x400

    .line 92
    new-array p1, p1, [B

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    .line 93
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 94
    iput-boolean p4, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->parseSubtitlesDuringExtraction:Z

    return-void
.end method


# virtual methods
.method public final buildTrackOutput(J)Lio/bidmachine/media3/extractor/TrackOutput;
    .registers 6

    .line 225
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    .line 226
    new-instance v1, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v2, "text/vtt"

    .line 228
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->language:Ljava/lang/String;

    .line 229
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {v1, p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 226
    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 232
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    return-object v0
.end method

.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 5

    .line 121
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->parseSubtitlesDuringExtraction:Z

    if-eqz v0, :cond_c

    .line 122
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    .line 123
    :cond_c
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 124
    new-instance v0, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void
.end method

.method public final processSample()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 168
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 171
    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 178
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    .line 179
    :goto_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_8c

    .line 181
    const-string v8, "X-TIMESTAMP-MAP"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 182
    sget-object v4, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->LOCAL_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 183
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_71

    .line 187
    sget-object v5, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->MEDIA_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 188
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 194
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    invoke-static {v1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v6

    .line 197
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 196
    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide v4

    goto :goto_87

    .line 189
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 184
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 180
    :cond_87
    :goto_87
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 202
    :cond_8c
    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->findNextCueHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_96

    .line 205
    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->buildTrackOutput(J)Lio/bidmachine/media3/extractor/TrackOutput;

    return-void

    .line 210
    :cond_96
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v0

    .line 211
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    add-long/2addr v4, v0

    sub-long/2addr v4, v6

    .line 213
    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->usToWrappedPts(J)J

    move-result-wide v3

    .line 212
    invoke-virtual {v2, v3, v4}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 216
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->buildTrackOutput(J)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v5

    .line 218
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    iget v2, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 219
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    invoke-interface {v5, v0, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 220
    iget v9, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    long-to-int p2, v0

    .line 145
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_21

    if-eq p2, v3, :cond_16

    move v0, p2

    goto :goto_17

    .line 149
    :cond_16
    array-length v0, v1

    :goto_17
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 147
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    .line 153
    :cond_21
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    iget v1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->read([BII)I

    move-result p1

    if-eq p1, v3, :cond_38

    .line 155
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleSize:I

    if-eq p2, v3, :cond_36

    if-eq v0, p2, :cond_38

    :cond_36
    const/4 p1, 0x0

    return p1

    .line 162
    :cond_38
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->processSample()V

    return v3
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public seek(JJ)V
    .registers 5

    .line 130
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-interface {p1, v0, v1, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 104
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    invoke-virtual {v0, v3, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 105
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p1, 0x1

    return p1

    .line 109
    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    const/4 v3, 0x3

    invoke-interface {p1, v0, v2, v3, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 114
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleData:[B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 115
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;->sampleDataWrapper:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttParserUtil;->isWebvttHeaderLine(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result p1

    return p1
.end method
