###### Class io.bidmachine.media3.exoplayer.source.MaskingMediaPeriod (io.bidmachine.media3.exoplayer.source.MaskingMediaPeriod)
.class public final Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;
.super Ljava/lang/Object;
.source "MaskingMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;
    }
.end annotation


# instance fields
.field public final allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

.field public callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

.field public final id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public listener:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;

.field public mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

.field public mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

.field public notifiedPrepareError:Z

.field public preparePositionOverrideUs:J

.field public final preparePositionUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)V
    .registers 5

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 80
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    .line 81
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 82
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method


# virtual methods
.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 3

    .line 229
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 6

    .line 130
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide v0

    .line 131
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    invoke-interface {v2, p1, v3, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 132
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    if-eqz v2, :cond_1d

    .line 133
    invoke-interface {p1, p0, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V

    :cond_1d
    return-void
.end method

.method public discardBuffer(JZ)V
    .registers 5

    .line 194
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 5

    .line 214
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 204
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 219
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreparePositionOverrideUs()J
    .registers 3

    .line 113
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-wide v0
.end method

.method public getPreparePositionUs()J
    .registers 3

    .line 98
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    return-wide v0
.end method

.method public final getPreparePositionWithOverride(J)J
    .registers 7

    .line 253
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    return-wide v0

    :cond_c
    return-wide p1
.end method

.method public getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 174
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 234
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    if-eqz v0, :cond_a

    .line 157
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void

    :catch_8
    move-exception v0

    goto :goto_12

    .line 158
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    if-eqz v0, :cond_22

    .line 159
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->maybeThrowSourceInfoRefreshError()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_8

    return-void

    .line 162
    :goto_12
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->listener:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;

    if-eqz v1, :cond_23

    .line 165
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->notifiedPrepareError:Z

    if-nez v2, :cond_22

    const/4 v2, 0x1

    .line 166
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->notifiedPrepareError:Z

    .line 167
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, v2, v0}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;->onPrepareError(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    :cond_22
    return-void

    .line 163
    :cond_23
    throw v0
.end method

.method public onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 2

    .line 239
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V
    .registers 2

    .line 40
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 3

    .line 246
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    .line 247
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->listener:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;

    if-eqz p1, :cond_14

    .line 248
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;->onPrepareComplete(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    :cond_14
    return-void
.end method

.method public overridePreparePositionUs(J)V
    .registers 3

    .line 108
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method public prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .registers 4

    .line 146
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    .line 147
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    if-eqz p1, :cond_f

    .line 148
    iget-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    .line 149
    invoke-virtual {p0, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide p2

    .line 148
    invoke-interface {p1, p0, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V

    :cond_f
    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 199
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 4

    .line 224
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public releasePeriod()V
    .registers 3

    .line 139
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    if-eqz v0, :cond_11

    .line 140
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    :cond_11
    return-void
.end method

.method public seekToUs(J)J
    .registers 4

    .line 209
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J
    .registers 19

    .line 184
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    cmp-long v4, p5, v4

    if-nez v4, :cond_13

    move-wide v10, v0

    goto :goto_15

    :cond_13
    move-wide/from16 v10, p5

    .line 187
    :goto_15
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    .line 188
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    .line 189
    invoke-interface/range {v5 .. v11}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public setMediaSource(Lio/bidmachine/media3/exoplayer/source/MediaSource;)V
    .registers 3

    .line 118
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 119
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MaskingMediaPeriod.PrepareListener (io.bidmachine.media3.exoplayer.source.MaskingMediaPeriod$PrepareListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;
.super Ljava/lang/Object;
.source "MaskingMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PrepareListener"
.end annotation


# virtual methods
.method public abstract onPrepareComplete(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
.end method

.method public abstract onPrepareError(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
.end method
