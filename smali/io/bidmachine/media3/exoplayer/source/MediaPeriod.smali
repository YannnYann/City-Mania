###### Class io.bidmachine.media3.exoplayer.source.MediaPeriod (io.bidmachine.media3.exoplayer.source.MediaPeriod)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
.super Ljava/lang/Object;
.source "MediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;
    }
.end annotation


# virtual methods
.method public abstract continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
.end method

.method public abstract discardBuffer(JZ)V
.end method

.method public abstract getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public abstract getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
.end method

.method public abstract isLoading()Z
.end method

.method public abstract maybeThrowPrepareError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V
.end method

.method public abstract readDiscontinuity()J
.end method

.method public abstract reevaluateBuffer(J)V
.end method

.method public abstract seekToUs(J)J
.end method

.method public abstract selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaPeriod.Callback (io.bidmachine.media3.exoplayer.source.MediaPeriod$Callback)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;
.super Ljava/lang/Object;
.source "MediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback<",
        "Lio/bidmachine/media3/exoplayer/source/MediaPeriod;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
.end method
