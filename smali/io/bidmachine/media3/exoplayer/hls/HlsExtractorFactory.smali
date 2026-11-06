###### Class io.bidmachine.media3.exoplayer.hls.HlsExtractorFactory (io.bidmachine.media3.exoplayer.hls.HlsExtractorFactory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;
.super Ljava/lang/Object;
.source "HlsExtractorFactory.java"


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;->DEFAULT:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    return-void
.end method


# virtual methods
.method public abstract createExtractor(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/common/util/TimestampAdjuster;Ljava/util/Map;Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Lio/bidmachine/media3/common/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lio/bidmachine/media3/extractor/ExtractorInput;",
            "Lio/bidmachine/media3/exoplayer/analytics/PlayerId;",
            ")",
            "Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;
    .registers 2

    .line 0
    return-object p0
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;
    .registers 2

    .line 0
    return-object p0
.end method

.method public getOutputTextFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;
    .registers 2

    .line 0
    return-object p1
.end method

.method public setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;
    .registers 2

    .line 0
    return-object p0
.end method
