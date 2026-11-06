###### Class io.bidmachine.media3.exoplayer.trackselection.ExoTrackSelection (io.bidmachine.media3.exoplayer.trackselection.ExoTrackSelection)
.class public interface abstract Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;,
        Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    }
.end annotation


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract evaluateQueueSize(JLjava/util/List;)I
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

.method public abstract excludeTrack(IJ)Z
.end method

.method public abstract getSelectedFormat()Lio/bidmachine/media3/common/Format;
.end method

.method public abstract getSelectedIndex()I
.end method

.method public abstract getSelectedIndexInTrackGroup()I
.end method

.method public abstract getSelectionData()Ljava/lang/Object;
.end method

.method public abstract getSelectionReason()I
.end method

.method public abstract isTrackExcluded(IJ)Z
.end method

.method public onDiscontinuity()V
    .registers 1

    .line 0
    return-void
.end method

.method public onPlayWhenReadyChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract onPlaybackSpeed(F)V
.end method

.method public onRebuffer()V
    .registers 1

    .line 0
    return-void
.end method

.method public shouldCancelChunkLoad(JLio/bidmachine/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .registers 5
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

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract updateSelectedTrack(JJJLjava/util/List;[Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;[",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.ExoTrackSelection.Definition (io.bidmachine.media3.exoplayer.trackselection.ExoTrackSelection$Definition)
.class public final Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Definition"
.end annotation


# instance fields
.field public final group:Lio/bidmachine/media3/common/TrackGroup;

.field public final tracks:[I

.field public final type:I


# direct methods
.method public varargs constructor <init>(Lio/bidmachine/media3/common/TrackGroup;[I)V
    .registers 4

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;-><init>(Lio/bidmachine/media3/common/TrackGroup;[II)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/TrackGroup;[II)V
    .registers 7

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    array-length v0, p2

    if-nez v0, :cond_12

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v1, "ETSDefinition"

    const-string v2, "Empty tracks are not allowed"

    invoke-static {v1, v2, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_12
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Lio/bidmachine/media3/common/TrackGroup;

    .line 76
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    .line 77
    iput p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->type:I

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.trackselection.ExoTrackSelection.Factory (io.bidmachine.media3.exoplayer.trackselection.ExoTrackSelection$Factory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Factory;
.super Ljava/lang/Object;
.source "ExoTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createTrackSelections([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;
.end method
