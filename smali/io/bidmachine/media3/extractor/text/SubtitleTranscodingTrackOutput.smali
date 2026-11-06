###### Class io.bidmachine.media3.extractor.text.SubtitleTranscodingTrackOutput (io.bidmachine.media3.extractor.text.SubtitleTranscodingTrackOutput)
.class public final Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;
.super Ljava/lang/Object;
.source "SubtitleTranscodingTrackOutput.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/TrackOutput;


# instance fields
.field public final cueEncoder:Lio/bidmachine/media3/extractor/text/CueEncoder;

.field public currentFormat:Lio/bidmachine/media3/common/Format;

.field public currentSubtitleParser:Lio/bidmachine/media3/extractor/text/SubtitleParser;

.field public final delegate:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final parsableScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public sampleData:[B

.field public sampleDataEnd:I

.field public sampleDataStart:I

.field public shouldSuppressParsingErrors:Z

.field public final subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public static synthetic $r8$lambda$AkUmUe9WoRVbkIKvxj07b3dH-cM(Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;JILio/bidmachine/media3/extractor/text/CuesWithTiming;)V
    .registers 5

    .line 166
    invoke-virtual {p0, p4, p1, p2, p3}, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->outputSample(Lio/bidmachine/media3/extractor/text/CuesWithTiming;JI)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 61
    iput-object p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 62
    new-instance p1, Lio/bidmachine/media3/extractor/text/CueEncoder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/text/CueEncoder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->cueEncoder:Lio/bidmachine/media3/extractor/text/CueEncoder;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    .line 64
    iput p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    .line 65
    sget-object p1, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    .line 66
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->parsableScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final ensureSampleDataCapacity(I)V
    .registers 6

    .line 216
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    array-length v0, v0

    iget v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_9

    return-void

    .line 219
    :cond_9
    iget v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    sub-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr p1, v1

    .line 223
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 224
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    array-length v2, v0

    if-gt p1, v2, :cond_1a

    move-object p1, v0

    goto :goto_1c

    :cond_1a
    new-array p1, p1, [B

    .line 225
    :goto_1c
    iget v2, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iput v3, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    .line 227
    iput v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    .line 228
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    return-void
.end method

.method public format(Lio/bidmachine/media3/common/Format;)V
    .registers 6

    .line 89
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 91
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 92
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentFormat:Lio/bidmachine/media3/common/Format;

    .line 94
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->supportsFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 95
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->create(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/text/SubtitleParser;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 96
    :goto_2e
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Lio/bidmachine/media3/extractor/text/SubtitleParser;

    .line 98
    :cond_30
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Lio/bidmachine/media3/extractor/text/SubtitleParser;

    if-nez v0, :cond_3a

    .line 99
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    return-void

    .line 101
    :cond_3a
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 103
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    const-string v2, "application/x-media3-cues"

    .line 104
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 105
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    .line 108
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 109
    invoke-interface {v2, p1}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->getCueReplacementBehavior(Lio/bidmachine/media3/common/Format;)I

    move-result p1

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/common/Format$Builder;->setCueReplacementBehavior(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 101
    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

.method public final outputSample(Lio/bidmachine/media3/extractor/text/CuesWithTiming;JI)V
    .registers 16

    .line 184
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->cueEncoder:Lio/bidmachine/media3/extractor/text/CueEncoder;

    iget-object v1, p1, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->cues:Lcom/google/common/collect/ImmutableList;

    iget-wide v2, p1, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->durationUs:J

    .line 186
    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/media3/extractor/text/CueEncoder;->encode(Ljava/util/List;J)[B

    move-result-object v0

    .line 187
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->parsableScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([B)V

    .line 188
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->parsableScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    array-length v3, v0

    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 190
    iget-wide v1, p1, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    const/4 v3, 0x1

    const-wide v4, 0x7fffffffffffffffL

    if-nez p1, :cond_3d

    .line 191
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentFormat:Lio/bidmachine/media3/common/Format;

    iget-wide v1, p1, Lio/bidmachine/media3/common/Format;->subsampleOffsetUs:J

    cmp-long p1, v1, v4

    if-nez p1, :cond_37

    move p1, v3

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    :goto_38
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    :goto_3b
    move-wide v5, p2

    goto :goto_4a

    .line 193
    :cond_3d
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentFormat:Lio/bidmachine/media3/common/Format;

    iget-wide v6, p1, Lio/bidmachine/media3/common/Format;->subsampleOffsetUs:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_47

    add-long/2addr p2, v1

    goto :goto_3b

    :cond_47
    add-long p2, v1, v6

    goto :goto_3b

    .line 198
    :goto_4a
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    or-int/lit8 v7, p4, 0x1

    array-length v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public sampleData(Lio/bidmachine/media3/common/DataReader;IZI)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Lio/bidmachine/media3/extractor/text/SubtitleParser;

    if-nez v0, :cond_b

    .line 119
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZI)I

    move-result p1

    return p1

    .line 121
    :cond_b
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->ensureSampleDataCapacity(I)V

    .line 122
    iget-object p4, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    iget v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    invoke-interface {p1, p4, v0, p2}, Lio/bidmachine/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_22

    if-eqz p3, :cond_1c

    return p2

    .line 127
    :cond_1c
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 130
    :cond_22
    iget p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    return p1
.end method

.method public sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V
    .registers 5

    .line 137
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Lio/bidmachine/media3/extractor/text/SubtitleParser;

    if-nez v0, :cond_a

    .line 138
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V

    return-void

    .line 141
    :cond_a
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->ensureSampleDataCapacity(I)V

    .line 142
    iget-object p3, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    iget v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    invoke-virtual {p1, p3, v0, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 143
    iget p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    add-int/2addr p1, p2

    iput p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    return-void
.end method

.method public sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
    .registers 15

    .line 153
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Lio/bidmachine/media3/extractor/text/SubtitleParser;

    if-nez v0, :cond_f

    .line 154
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    return-void

    :cond_f
    move-wide v2, p1

    move v4, p3

    move v6, p5

    move-object v7, p6

    const/4 v1, 0x0

    if-nez v7, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    move p1, v1

    .line 157
    :goto_19
    const-string p2, "DRM on subtitles is not supported"

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 159
    iget p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    sub-int/2addr p1, v6

    sub-int p3, p1, p4

    .line 161
    :try_start_23
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->currentSubtitleParser:Lio/bidmachine/media3/extractor/text/SubtitleParser;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleData:[B

    .line 165
    invoke-static {}, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->allCues()Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;

    move-result-object p5

    new-instance p6, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;

    invoke-direct {p6, p0, v2, v3, v4}, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;JI)V

    .line 161
    invoke-interface/range {p1 .. p6}, Lio/bidmachine/media3/extractor/text/SubtitleParser;->parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_33} :catch_34

    goto :goto_41

    :catch_34
    move-exception v0

    move-object p1, v0

    .line 168
    iget-boolean p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->shouldSuppressParsingErrors:Z

    if-eqz p2, :cond_4d

    .line 170
    const-string p2, "SubtitleTranscodingTO"

    const-string p5, "Parsing subtitles failed, ignoring sample."

    invoke-static {p2, p5, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_41
    add-int/2addr p3, p4

    .line 175
    iput p3, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    .line 176
    iget p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    if-ne p3, p1, :cond_4c

    .line 178
    iput v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataStart:I

    .line 179
    iput v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->sampleDataEnd:I

    :cond_4c
    return-void

    .line 172
    :cond_4d
    throw p1
.end method

.method public shouldSuppressParsingErrors(Z)V
    .registers 2

    .line 82
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->shouldSuppressParsingErrors:Z

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.text.SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;JI)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;

    iput-wide p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$1:J

    iget v3, p0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;->$r8$lambda$AkUmUe9WoRVbkIKvxj07b3dH-cM(Lio/bidmachine/media3/extractor/text/SubtitleTranscodingTrackOutput;JILio/bidmachine/media3/extractor/text/CuesWithTiming;)V

    return-void
.end method
