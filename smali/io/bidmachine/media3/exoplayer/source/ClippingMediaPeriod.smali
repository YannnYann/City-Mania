###### Class io.bidmachine.media3.exoplayer.source.ClippingMediaPeriod (io.bidmachine.media3.exoplayer.source.ClippingMediaPeriod)
.class public final Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;
    }
.end annotation


# instance fields
.field public callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

.field public clippingError:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field public endUs:J

.field public final mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

.field public pendingInitialDiscontinuityPositionUs:J

.field public sampleStreams:[Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

.field public startUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;ZJJ)V
    .registers 7

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    const/4 p1, 0x0

    .line 73
    new-array p1, p1, [Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    if-eqz p2, :cond_e

    move-wide p1, p3

    goto :goto_13

    :cond_e
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    :goto_13
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 75
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    .line 76
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    return-void
.end method

.method public static enforceClippingRange(JJJ)J
    .registers 6

    .line 305
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/high16 p2, -0x8000000000000000L

    cmp-long p2, p4, p2

    if-eqz p2, :cond_e

    .line 307
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_e
    return-wide p0
.end method

.method public static shouldKeepInitialDiscontinuity(JJ[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)Z
    .registers 7

    cmp-long p2, p0, p2

    const/4 p3, 0x1

    if-gez p2, :cond_6

    return p3

    :cond_6
    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    const/4 p1, 0x0

    if-eqz p0, :cond_27

    .line 290
    array-length p0, p4

    move p2, p1

    :goto_f
    if-ge p2, p0, :cond_27

    aget-object v0, p4, p2

    if-eqz v0, :cond_24

    .line 292
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    .line 293
    iget-object v1, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    return p3

    :cond_24
    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_27
    return p1
.end method


# virtual methods
.method public final clipSeekParameters(JLio/bidmachine/media3/exoplayer/SeekParameters;)Lio/bidmachine/media3/exoplayer/SeekParameters;
    .registers 12

    .line 256
    iget-wide v0, p3, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, p1, v2

    const-wide/16 v2, 0x0

    .line 257
    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 259
    iget-wide v2, p3, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    .line 263
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_1d

    const-wide p1, 0x7fffffffffffffffL

    :goto_1b
    move-wide v6, p1

    goto :goto_20

    :cond_1d
    sub-long p1, v4, p1

    goto :goto_1b

    :goto_20
    const-wide/16 v4, 0x0

    .line 260
    invoke-static/range {v2 .. v7}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    .line 264
    iget-wide v2, p3, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_33

    iget-wide v2, p3, Lio/bidmachine/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_33

    return-object p3

    .line 268
    :cond_33
    new-instance p3, Lio/bidmachine/media3/exoplayer/SeekParameters;

    invoke-direct {p3, v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/SeekParameters;-><init>(JJ)V

    return-object p3
.end method

.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 3

    .line 228
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 5

    .line 161
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 7

    .line 208
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-wide v0

    .line 212
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->clipSeekParameters(JLio/bidmachine/media3/exoplayer/SeekParameters;)Lio/bidmachine/media3/exoplayer/SeekParameters;

    move-result-object p3

    .line 213
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 8

    .line 187
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 188
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v4, v0, v4

    if-ltz v4, :cond_17

    goto :goto_18

    :cond_17
    return-wide v0

    :cond_18
    :goto_18
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .registers 8

    .line 218
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 219
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v4, v0, v4

    if-ltz v4, :cond_17

    goto :goto_18

    :cond_17
    return-wide v0

    :cond_18
    :goto_18
    return-wide v2
.end method

.method public getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 122
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 233
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPendingInitialDiscontinuity()Z
    .registers 5

    .line 252
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->clippingError:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_a

    .line 112
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void

    .line 110
    :cond_a
    throw v0
.end method

.method public onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 2

    .line 248
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V
    .registers 2

    .line 43
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 2

    .line 240
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->clippingError:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_5

    return-void

    .line 243
    :cond_5
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .registers 4

    .line 103
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    .line 104
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p1, p0, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .registers 10

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_19

    .line 172
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 173
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 175
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->readDiscontinuity()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_18

    return-wide v5

    :cond_18
    return-wide v3

    .line 178
    :cond_19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_24

    return-wide v1

    .line 182
    :cond_24
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    iget-wide v7, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    invoke-static/range {v3 .. v8}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->enforceClippingRange(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 4

    .line 166
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .registers 10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 197
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 198
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    if-eqz v3, :cond_14

    .line 200
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->clearSentEos()V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 203
    :cond_17
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v1

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    invoke-static/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->enforceClippingRange(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 132
    array-length v2, v1

    new-array v2, v2, [Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 133
    array-length v2, v1

    new-array v6, v2, [Lio/bidmachine/media3/exoplayer/source/SampleStream;

    const/4 v2, 0x0

    move v3, v2

    .line 134
    :goto_e
    array-length v4, v1

    const/4 v10, 0x0

    if-ge v3, v4, :cond_23

    .line 135
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v5, v1, v3

    check-cast v5, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v5, v4, v3

    if-eqz v5, :cond_1e

    .line 136
    iget-object v10, v5, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    :cond_1e
    aput-object v10, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 138
    :cond_23
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    .line 139
    invoke-interface/range {v3 .. v9}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v11

    .line 141
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    move-wide/from16 v13, p5

    move-wide v15, v3

    .line 142
    invoke-static/range {v11 .. v16}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->enforceClippingRange(JJJ)J

    move-result-wide v3

    .line 144
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v5

    if-eqz v5, :cond_4c

    move-object/from16 v5, p1

    move-wide/from16 v13, p5

    .line 145
    invoke-static {v11, v12, v13, v14, v5}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->shouldKeepInitialDiscontinuity(JJ[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)Z

    move-result v5

    if-eqz v5, :cond_4c

    move-wide v7, v3

    goto :goto_51

    :cond_4c
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 147
    :goto_51
    iput-wide v7, v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 148
    :goto_53
    array-length v5, v1

    if-ge v2, v5, :cond_79

    .line 149
    aget-object v5, v6, v2

    if-nez v5, :cond_5f

    .line 150
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v10, v5, v2

    goto :goto_70

    .line 151
    :cond_5f
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v8, v7, v2

    if-eqz v8, :cond_69

    iget-object v8, v8, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    if-eq v8, v5, :cond_70

    .line 152
    :cond_69
    new-instance v8, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    invoke-direct {v8, v0, v5}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;-><init>(Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;Lio/bidmachine/media3/exoplayer/source/SampleStream;)V

    aput-object v8, v7, v2

    .line 154
    :cond_70
    :goto_70
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v5, v5, v2

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_79
    return-wide v3
.end method

.method public setClippingError(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->clippingError:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    return-void
.end method

.method public updateClipping(JJ)V
    .registers 5

    .line 87
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    .line 88
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.ClippingMediaPeriod.ClippingSampleStream (io.bidmachine.media3.exoplayer.source.ClippingMediaPeriod$ClippingSampleStream)
.class public final Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field public final childStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

.field public sentEos:Z

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;Lio/bidmachine/media3/exoplayer/source/SampleStream;)V
    .registers 3

    .line 319
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    return-void
.end method


# virtual methods
.method public clearSentEos()V
    .registers 2

    const/4 v0, 0x0

    .line 324
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return-void
.end method

.method public isReady()Z
    .registers 2

    .line 329
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SampleStream;->isReady()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public readData(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .registers 16

    .line 340
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_a

    return v1

    .line 343
    :cond_a
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_14

    .line 344
    invoke-virtual {p2, v2}, Lio/bidmachine/media3/decoder/Buffer;->setFlags(I)V

    return v3

    .line 347
    :cond_14
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v4

    .line 348
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/SampleStream;->readData(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v6, -0x8000000000000000L

    if-ne p3, v0, :cond_5d

    .line 350
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/common/Format;

    .line 351
    iget p3, p2, Lio/bidmachine/media3/common/Format;->encoderDelay:I

    if-nez p3, :cond_35

    iget v1, p2, Lio/bidmachine/media3/common/Format;->encoderPadding:I

    if-eqz v1, :cond_5c

    .line 353
    :cond_35
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_41

    move p3, v3

    .line 354
    :cond_41
    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_48

    goto :goto_4a

    :cond_48
    iget v3, p2, Lio/bidmachine/media3/common/Format;->encoderPadding:I

    .line 357
    :goto_4a
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 358
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/Format$Builder;->setEncoderDelay(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 359
    invoke-virtual {p2, v3}, Lio/bidmachine/media3/common/Format$Builder;->setEncoderPadding(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 360
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p2

    iput-object p2, p1, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    :cond_5c
    return v0

    .line 364
    :cond_5d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v8, p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long p1, v8, v6

    if-eqz p1, :cond_81

    if-ne p3, v3, :cond_6d

    iget-wide v10, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long p1, v10, v8

    if-gez p1, :cond_77

    :cond_6d
    if-ne p3, v1, :cond_81

    cmp-long p1, v4, v6

    if-nez p1, :cond_81

    iget-boolean p1, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z

    if-nez p1, :cond_81

    .line 369
    :cond_77
    invoke-virtual {p2}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 370
    invoke-virtual {p2, v2}, Lio/bidmachine/media3/decoder/Buffer;->setFlags(I)V

    const/4 p1, 0x1

    .line 371
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return v3

    :cond_81
    return p3
.end method

.method public skipData(J)I
    .registers 4

    .line 379
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, -0x3

    return p1

    .line 382
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lio/bidmachine/media3/exoplayer/source/SampleStream;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method
