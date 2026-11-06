###### Class io.bidmachine.media3.extractor.ogg.OggSeeker (io.bidmachine.media3.extractor.ogg.OggSeeker)
.class public interface abstract Lio/bidmachine/media3/extractor/ogg/OggSeeker;
.super Ljava/lang/Object;
.source "OggSeeker.java"


# virtual methods
.method public abstract createSeekMap()Lio/bidmachine/media3/extractor/SeekMap;
.end method

.method public abstract read(Lio/bidmachine/media3/extractor/ExtractorInput;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startSeek(J)V
.end method
