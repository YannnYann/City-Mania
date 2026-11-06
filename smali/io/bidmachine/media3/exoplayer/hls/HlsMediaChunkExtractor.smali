###### Class io.bidmachine.media3.exoplayer.hls.HlsMediaChunkExtractor (io.bidmachine.media3.exoplayer.hls.HlsMediaChunkExtractor)
.class public interface abstract Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;
.super Ljava/lang/Object;
.source "HlsMediaChunkExtractor.java"


# virtual methods
.method public abstract init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
.end method

.method public abstract isPackedAudioExtractor()Z
.end method

.method public abstract isReusable()Z
.end method

.method public abstract onTruncatedSegmentParsed()V
.end method

.method public abstract read(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract recreate()Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;
.end method
