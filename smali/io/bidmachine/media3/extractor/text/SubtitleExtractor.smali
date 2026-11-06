###### Class io.bidmachine.media3.extractor.text.SubtitleExtractor (io.bidmachine.media3.extractor.text.SubtitleExtractor)
.class public Lio/bidmachine/media3/extractor/text/SubtitleExtractor;
.super Ljava/lang/Object;
.source "SubtitleExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;
    }
.end annotation


# instance fields
.field public bytesRead:I

.field public final cueEncoder:Lio/bidmachine/media3/extractor/text/CueEncoder;

.field public final format:Lio/bidmachine/media3/common/Format;

.field public final samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;",
            ">;"
        }
    .end annotation
.end field

.field public final scratchSampleArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public seekTimeUs:J

.field public state:I

.field public subtitleData:[B

.field public final subtitleParser:Lio/bidmachine/media3/extractor/text/SubtitleParser;

.field public timestamps:[J

.field public trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;


# direct methods
.method public static synthetic $r8$lambda$o1pep9CDg3xmmLfDKYshYz1fEWQ(Lio/bidmachine/media3/extractor/text/SubtitleExtractor;Lio/bidmachine/media3/extractor/text/CuesWithTiming;)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;

    iget-wide v1, p1, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->cueEncoder:Lio/bidmachine/media3/extractor/text/CueEncoder;

    iget-object v4, p1, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->cues:Lcom/google/common/collect/ImmutableList;

    iget-wide v5, p1, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->durationUs:J

    .line 260
    invoke-virtual {v3, v4, v5, v6}, Lio/bidmachine/media3/extractor/text/CueEncoder;->encode(Ljava/util/List;J)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;-><init>(J[BLio/bidmachine/media3/extractor/text/SubtitleExtractor$1;)V

    .line 261
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-wide v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->seekTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2d

    iget-wide v3, p1, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    cmp-long p1, v3, v1

    if-ltz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    return-void

    .line 263
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->writeToOutput(Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/text/SubtitleParser;Lio/bidmachine/media3/common/Format;)V
    .registers 5

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->subtitleParser:Lio/bidmachine/media3/extractor/text/SubtitleParser;

    .line 113
    new-instance v0, Lio/bidmachine/media3/extractor/text/CueEncoder;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/CueEncoder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->cueEncoder:Lio/bidmachine/media3/extractor/text/CueEncoder;

    .line 114
    sget-object v0, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->subtitleData:[B

    .line 115
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->scratchSampleArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    if-eqz p2, :cond_36

    .line 121
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-media3-cues"

    .line 122
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object p2, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 124
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/text/SubtitleParser;->getCueReplacementBehavior()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/Format$Builder;->setCueReplacementBehavior(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    .line 126
    :goto_37
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->format:Lio/bidmachine/media3/common/Format;

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->samples:Ljava/util/List;

    const/4 p1, 0x0

    .line 128
    iput p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    .line 129
    sget-object p1, Lio/bidmachine/media3/common/util/Util;->EMPTY_LONG_ARRAY:[J

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->timestamps:[J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 130
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->seekTimeUs:J

    return-void
.end method


# virtual methods
.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 9

    .line 143
    iget v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x3

    .line 144
    invoke-interface {p1, v1, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 145
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->format:Lio/bidmachine/media3/common/Format;

    if-eqz v3, :cond_34

    .line 146
    invoke-interface {v0, v3}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 147
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    .line 148
    new-instance v0, Lio/bidmachine/media3/extractor/IndexSeekMap;

    const-wide/16 v3, 0x0

    new-array v5, v2, [J

    aput-wide v3, v5, v1

    new-array v6, v2, [J

    aput-wide v3, v6, v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v5, v6, v3, v4}, Lio/bidmachine/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 154
    :cond_34
    iput v2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    return-void
.end method

.method public final parseAndWriteToOutput()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    :try_start_0
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->seekTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    .line 249
    invoke-static {v0, v1}, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->cuesAfterThenRemainingCuesBefore(J)Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;

    move-result-object v0

    :goto_f
    move-object v5, v0

    goto :goto_18

    :catch_11
    move-exception v0

    goto :goto_57

    .line 250
    :cond_13
    invoke-static {}, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->allCues()Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;

    move-result-object v0

    goto :goto_f

    .line 251
    :goto_18
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->subtitleParser:Lio/bidmachine/media3/extractor/text/SubtitleParser;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->subtitleData:[B

    iget v4, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->bytesRead:I

    new-instance v6, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleExtractor;)V

    const/4 v3, 0x0

    invoke-interface/range {v1 .. v6}, Lio/bidmachine/media3/extractor/text/SubtitleParser;->parse([BIILio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V

    .line 266
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 267
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->timestamps:[J

    const/4 v0, 0x0

    .line 268
    :goto_37
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 269
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->timestamps:[J

    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;

    invoke-static {v2}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;->access$000(Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 271
    :cond_52
    sget-object v0, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->subtitleData:[B
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_56} :catch_11

    return-void

    .line 273
    :goto_57
    const-string v1, "SubtitleParser failed."

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    const/4 v2, 0x5

    if-eq p2, v2, :cond_b

    move p2, v0

    goto :goto_c

    :cond_b
    move p2, v1

    :goto_c
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 160
    iget p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    const/4 v2, 0x2

    if-ne p2, v0, :cond_36

    .line 162
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p2, v3, v5

    if-eqz p2, :cond_27

    .line 163
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p2

    goto :goto_29

    :cond_27
    const/16 p2, 0x400

    .line 165
    :goto_29
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->subtitleData:[B

    array-length v0, v0

    if-le p2, v0, :cond_32

    .line 166
    new-array p2, p2, [B

    iput-object p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->subtitleData:[B

    .line 168
    :cond_32
    iput v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->bytesRead:I

    .line 169
    iput v2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    .line 171
    :cond_36
    iget p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    const/4 v0, 0x4

    if-ne p2, v2, :cond_46

    .line 172
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->readFromInput(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 174
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->parseAndWriteToOutput()V

    .line 175
    iput v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    .line 178
    :cond_46
    iget p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_56

    .line 179
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->skipInput(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p1

    if-eqz p1, :cond_56

    .line 181
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->writeToOutput()V

    .line 182
    iput v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    .line 185
    :cond_56
    iget p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    if-ne p1, v0, :cond_5c

    const/4 p1, -0x1

    return p1

    :cond_5c
    return v1
.end method

.method public final readFromInput(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->subtitleData:[B

    array-length v1, v0

    iget v2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->bytesRead:I

    if-ne v1, v2, :cond_10

    .line 225
    array-length v1, v0

    add-int/lit16 v1, v1, 0x400

    .line 226
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->subtitleData:[B

    .line 228
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->subtitleData:[B

    iget v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->bytesRead:I

    array-length v2, v0

    sub-int/2addr v2, v1

    .line 229
    invoke-interface {p1, v0, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 232
    iget v2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->bytesRead:I

    .line 234
    :cond_22
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_33

    .line 235
    iget p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->bytesRead:I

    int-to-long v4, p1

    cmp-long p1, v4, v2

    if-eqz p1, :cond_35

    :cond_33
    if-ne v0, v1, :cond_37

    :cond_35
    const/4 p1, 0x1

    return p1

    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .registers 3

    .line 206
    iget v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    return-void

    .line 209
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->subtitleParser:Lio/bidmachine/media3/extractor/text/SubtitleParser;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/text/SubtitleParser;->reset()V

    .line 210
    iput v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    return-void
.end method

.method public seek(JJ)V
    .registers 6

    .line 193
    iget p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    const/4 p2, 0x1

    if-eqz p1, :cond_a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    move p1, p2

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 194
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->seekTimeUs:J

    .line 195
    iget p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_17

    .line 196
    iput p2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    .line 198
    :cond_17
    iget p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1f

    const/4 p1, 0x3

    .line 199
    iput p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->state:I

    :cond_1f
    return-void
.end method

.method public final skipInput(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 217
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    goto :goto_15

    :cond_13
    const/16 v0, 0x400

    .line 215
    :goto_15
    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skip(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public final writeToOutput()V
    .registers 5

    .line 279
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->seekTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_14

    .line 281
    :cond_d
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->timestamps:[J

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3, v3}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 283
    :goto_14
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 284
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->writeToOutput(Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2a
    return-void
.end method

.method public final writeToOutput(Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;)V
    .registers 10

    .line 289
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;->access$100(Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;)[B

    move-result-object v0

    array-length v5, v0

    .line 291
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->scratchSampleArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;->access$100(Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([B)V

    .line 292
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->scratchSampleArray:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v0, v1, v5}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 293
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 294
    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;->access$000(Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;)J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 293
    invoke-interface/range {v1 .. v7}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.SubtitleExtractor.AnonymousClass1 (io.bidmachine.media3.extractor.text.SubtitleExtractor$1)
.class public synthetic Lio/bidmachine/media3/extractor/text/SubtitleExtractor$1;
.super Ljava/lang/Object;
.source "SubtitleExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/SubtitleExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.text.SubtitleExtractor.Sample (io.bidmachine.media3.extractor.text.SubtitleExtractor$Sample)
.class public Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;
.super Ljava/lang/Object;
.source "SubtitleExtractor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/SubtitleExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sample"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;",
        ">;"
    }
.end annotation


# instance fields
.field public final data:[B

.field public final timeUs:J


# direct methods
.method public constructor <init>(J[B)V
    .registers 4

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;->timeUs:J

    .line 307
    iput-object p3, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;->data:[B

    return-void
.end method

.method public synthetic constructor <init>(J[BLio/bidmachine/media3/extractor/text/SubtitleExtractor$1;)V
    .registers 5

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;-><init>(J[B)V

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;)J
    .registers 3

    .line 301
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;->timeUs:J

    return-wide v0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;)[B
    .registers 1

    .line 301
    iget-object p0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;->data:[B

    return-object p0
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;)I
    .registers 6

    .line 312
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;->timeUs:J

    iget-wide v2, p1, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;->timeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 301
    check-cast p1, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;->compareTo(Lio/bidmachine/media3/extractor/text/SubtitleExtractor$Sample;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.extractor.text.SubtitleExtractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.text.SubtitleExtractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/text/SubtitleExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/extractor/text/SubtitleExtractor;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/text/SubtitleExtractor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/text/SubtitleExtractor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/SubtitleExtractor$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/text/SubtitleExtractor;

    check-cast p1, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    invoke-static {v0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;->$r8$lambda$o1pep9CDg3xmmLfDKYshYz1fEWQ(Lio/bidmachine/media3/extractor/text/SubtitleExtractor;Lio/bidmachine/media3/extractor/text/CuesWithTiming;)V

    return-void
.end method
