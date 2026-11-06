###### Class io.bidmachine.media3.exoplayer.source.chunk.ChunkExtractor (io.bidmachine.media3.exoplayer.source.chunk.ChunkExtractor)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;
.super Ljava/lang/Object;
.source "ChunkExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;,
        Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
    }
.end annotation


# virtual methods
.method public abstract getChunkIndex()Lio/bidmachine/media3/extractor/ChunkIndex;
.end method

.method public abstract getSampleFormats()[Lio/bidmachine/media3/common/Format;
.end method

.method public abstract init(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V
.end method

.method public abstract read(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

###### Class io.bidmachine.media3.exoplayer.source.chunk.ChunkExtractor.Factory (io.bidmachine.media3.exoplayer.source.chunk.ChunkExtractor$Factory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
.super Ljava/lang/Object;
.source "ChunkExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createProgressiveMediaExtractor(ILio/bidmachine/media3/common/Format;ZLjava/util/List;Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/Format;",
            "Z",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Lio/bidmachine/media3/extractor/TrackOutput;",
            "Lio/bidmachine/media3/exoplayer/analytics/PlayerId;",
            ")",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;"
        }
    .end annotation
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
    .registers 2

    .line 0
    return-object p0
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
    .registers 2

    .line 0
    return-object p0
.end method

.method public getOutputTextFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;
    .registers 2

    .line 0
    return-object p1
.end method

.method public setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
    .registers 2

    .line 0
    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.source.chunk.ChunkExtractor.TrackOutputProvider (io.bidmachine.media3.exoplayer.source.chunk.ChunkExtractor$TrackOutputProvider)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;
.super Ljava/lang/Object;
.source "ChunkExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrackOutputProvider"
.end annotation


# virtual methods
.method public abstract track(II)Lio/bidmachine/media3/extractor/TrackOutput;
.end method
