###### Class io.bidmachine.media3.exoplayer.source.chunk.ChunkSource (io.bidmachine.media3.exoplayer.source.chunk.ChunkSource)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;
.super Ljava/lang/Object;
.source "ChunkSource.java"


# virtual methods
.method public abstract getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
.end method

.method public abstract getNextChunk(Lio/bidmachine/media3/exoplayer/LoadingInfo;JLjava/util/List;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/LoadingInfo;",
            "J",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getPreferredQueueSize(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onChunkLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)V
.end method

.method public abstract onChunkLoadError(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;ZLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Z
.end method

.method public abstract release()V
.end method

.method public abstract shouldCancelLoad(JLio/bidmachine/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation
.end method
