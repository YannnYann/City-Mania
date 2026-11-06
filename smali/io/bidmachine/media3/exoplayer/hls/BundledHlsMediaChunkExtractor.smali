###### Class io.bidmachine.media3.exoplayer.hls.BundledHlsMediaChunkExtractor (io.bidmachine.media3.exoplayer.hls.BundledHlsMediaChunkExtractor)
.class public final Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;
.super Ljava/lang/Object;
.source "BundledHlsMediaChunkExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;


# static fields
.field public static final POSITION_HOLDER:Lio/bidmachine/media3/extractor/PositionHolder;


# instance fields
.field public final extractor:Lio/bidmachine/media3/extractor/Extractor;

.field public final multivariantPlaylistFormat:Lio/bidmachine/media3/common/Format;

.field public final parseSubtitlesDuringExtraction:Z

.field public final subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

.field public final timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lio/bidmachine/media3/extractor/PositionHolder;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/PositionHolder;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->POSITION_HOLDER:Lio/bidmachine/media3/extractor/PositionHolder;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/Extractor;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Z)V
    .registers 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    .line 89
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Lio/bidmachine/media3/common/Format;

    .line 90
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    .line 91
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 92
    iput-boolean p5, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->parseSubtitlesDuringExtraction:Z

    return-void
.end method


# virtual methods
.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/Extractor;->init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V

    return-void
.end method

.method public isPackedAudioExtractor()Z
    .registers 3

    .line 107
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/Extractor;->getUnderlyingImplementation()Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    .line 108
    instance-of v1, v0, Lio/bidmachine/media3/extractor/ts/AdtsExtractor;

    if-nez v1, :cond_19

    instance-of v1, v0, Lio/bidmachine/media3/extractor/ts/Ac3Extractor;

    if-nez v1, :cond_19

    instance-of v1, v0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;

    if-nez v1, :cond_19

    instance-of v0, v0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method public isReusable()Z
    .registers 3

    .line 116
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/Extractor;->getUnderlyingImplementation()Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    .line 117
    instance-of v1, v0, Lio/bidmachine/media3/extractor/ts/TsExtractor;

    if-nez v1, :cond_11

    instance-of v0, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method public onTruncatedSegmentParsed()V
    .registers 4

    .line 159
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v1, v2}, Lio/bidmachine/media3/extractor/Extractor;->seek(JJ)V

    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    sget-object v1, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->POSITION_HOLDER:Lio/bidmachine/media3/extractor/PositionHolder;

    invoke-interface {v0, p1, v1}, Lio/bidmachine/media3/extractor/Extractor;->read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public recreate()Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;
    .registers 8

    .line 123
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->isReusable()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 124
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    .line 125
    invoke-interface {v0}, Lio/bidmachine/media3/extractor/Extractor;->getUnderlyingImplementation()Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    if-ne v0, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t recreate wrapped extractors. Outer type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    .line 126
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    instance-of v1, v0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;

    if-eqz v1, :cond_46

    .line 130
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Lio/bidmachine/media3/common/Format;

    iget-object v1, v1, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->parseSubtitlesDuringExtraction:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Z)V

    :goto_44
    move-object v2, v0

    goto :goto_6e

    .line 136
    :cond_46
    instance-of v1, v0, Lio/bidmachine/media3/extractor/ts/AdtsExtractor;

    if-eqz v1, :cond_50

    .line 137
    new-instance v0, Lio/bidmachine/media3/extractor/ts/AdtsExtractor;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ts/AdtsExtractor;-><init>()V

    goto :goto_44

    .line 138
    :cond_50
    instance-of v1, v0, Lio/bidmachine/media3/extractor/ts/Ac3Extractor;

    if-eqz v1, :cond_5a

    .line 139
    new-instance v0, Lio/bidmachine/media3/extractor/ts/Ac3Extractor;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ts/Ac3Extractor;-><init>()V

    goto :goto_44

    .line 140
    :cond_5a
    instance-of v1, v0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;

    if-eqz v1, :cond_64

    .line 141
    new-instance v0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;-><init>()V

    goto :goto_44

    .line 142
    :cond_64
    instance-of v0, v0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;

    if-eqz v0, :cond_7c

    .line 143
    new-instance v0, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;-><init>()V

    goto :goto_44

    .line 149
    :goto_6e
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Lio/bidmachine/media3/common/Format;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v6, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->parseSubtitlesDuringExtraction:Z

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Lio/bidmachine/media3/extractor/Extractor;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Z)V

    return-object v1

    .line 145
    :cond_7c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected extractor type for recreation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
