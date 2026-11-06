###### Class io.bidmachine.media3.exoplayer.source.SampleStream (io.bidmachine.media3.exoplayer.source.SampleStream)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/SampleStream;
.super Ljava/lang/Object;
.source "SampleStream.java"


# virtual methods
.method public abstract isReady()Z
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readData(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
.end method

.method public abstract skipData(J)I
.end method
