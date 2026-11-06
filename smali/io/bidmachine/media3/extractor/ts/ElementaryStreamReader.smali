###### Class io.bidmachine.media3.extractor.ts.ElementaryStreamReader (io.bidmachine.media3.extractor.ts.ElementaryStreamReader)
.class public interface abstract Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;
.super Ljava/lang/Object;
.source "ElementaryStreamReader.java"


# virtual methods
.method public abstract consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

.method public abstract packetFinished(Z)V
.end method

.method public abstract packetStarted(JI)V
.end method

.method public abstract seek()V
.end method
