###### Class io.bidmachine.media3.exoplayer.source.MergingMediaPeriod (io.bidmachine.media3.exoplayer.source.MergingMediaPeriod)
.class public final Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;
    }
.end annotation


# instance fields
.field public callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

.field public final childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "Lio/bidmachine/media3/common/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final childrenPendingPreparation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/source/MediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field public compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

.field public final compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field public enabledPeriods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

.field public final periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

.field public final periodsWithTimeOffsets:[Z

.field public final streamPeriodIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lio/bidmachine/media3/exoplayer/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;


# direct methods
.method public static synthetic $r8$lambda$yl944v6-SJBDuyYzYP-r9TXCrQA(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)Ljava/util/List;
    .registers 1

    .line 180
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->getTrackTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public varargs constructor <init>(Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[J[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 9

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 60
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 63
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->empty()Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    .line 64
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    const/4 p1, 0x0

    .line 65
    new-array v0, p1, [Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 66
    array-length v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periodsWithTimeOffsets:[Z

    .line 67
    :goto_2c
    array-length v0, p3

    if-ge p1, v0, :cond_4a

    .line 68
    aget-wide v0, p2, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_47

    .line 69
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periodsWithTimeOffsets:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 70
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    new-instance v3, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;

    aget-object v4, p3, p1

    invoke-direct {v3, v4, v0, v1}, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;J)V

    aput-object v3, v2, p1

    :cond_47
    add-int/lit8 p1, p1, 0x1

    goto :goto_2c

    :cond_4a
    return-void
.end method


# virtual methods
.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 6

    .line 198
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 200
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_20

    .line 202
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v3, p1}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_20
    return v1

    .line 206
    :cond_21
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 8

    .line 186
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 187
    invoke-interface {v3, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 7

    .line 269
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_9

    aget-object v0, v0, v2

    goto :goto_d

    :cond_9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    aget-object v0, v0, v2

    .line 270
    :goto_d
    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 252
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildPeriod(I)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 3

    .line 81
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periodsWithTimeOffsets:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_11

    .line 82
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    aget-object p1, v0, p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/TimeOffsetMediaPeriod;->getWrappedMediaPeriod()Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    return-object p1

    .line 83
    :cond_11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 217
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 104
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 212
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 98
    invoke-interface {v3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 2

    .line 313
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V
    .registers 2

    .line 41
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 15

    .line 277
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    .line 282
    :cond_e
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_14
    if-ge v2, v0, :cond_22

    aget-object v4, p1, v2

    .line 283
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v4

    iget v4, v4, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 285
    :cond_22
    new-array p1, v3, [Lio/bidmachine/media3/common/TrackGroup;

    move v0, v1

    move v2, v0

    .line 287
    :goto_26
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    array-length v4, v3

    if-ge v0, v4, :cond_9b

    .line 288
    aget-object v3, v3, v0

    invoke-interface {v3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v3

    .line 289
    iget v4, v3, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    move v5, v1

    :goto_34
    if-ge v5, v4, :cond_98

    .line 291
    invoke-virtual {v3, v5}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v6

    .line 292
    iget v7, v6, Lio/bidmachine/media3/common/TrackGroup;->length:I

    new-array v7, v7, [Lio/bidmachine/media3/common/Format;

    move v8, v1

    .line 293
    :goto_3f
    iget v9, v6, Lio/bidmachine/media3/common/TrackGroup;->length:I

    const-string v10, ":"

    if-ge v8, v9, :cond_72

    .line 294
    invoke-virtual {v6, v8}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v9

    .line 297
    invoke-virtual {v9}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v9, v9, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    if-nez v9, :cond_5e

    const-string v9, ""

    :cond_5e
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v9

    .line 299
    invoke-virtual {v9}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    .line 301
    :cond_72
    new-instance v8, Lio/bidmachine/media3/common/TrackGroup;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lio/bidmachine/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    .line 303
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    .line 304
    aput-object v8, p1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_34

    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 307
    :cond_9b
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;-><init>([Lio/bidmachine/media3/common/TrackGroup;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 308
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .registers 7

    .line 88
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    .line 89
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    .line 91
    invoke-interface {v2, p0, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public readDiscontinuity()J
    .registers 16

    .line 223
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    array-length v1, v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    :goto_b
    if-ge v5, v1, :cond_5e

    aget-object v8, v0, v5

    .line 224
    invoke-interface {v8}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v9

    cmp-long v11, v9, v2

    .line 225
    const-string v12, "Unexpected child seekToUs result."

    if-eqz v11, :cond_48

    cmp-long v11, v6, v2

    if-nez v11, :cond_3b

    .line 229
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    array-length v7, v6

    move v11, v4

    :goto_21
    if-ge v11, v7, :cond_39

    aget-object v13, v6, v11

    if-ne v13, v8, :cond_28

    goto :goto_39

    .line 233
    :cond_28
    invoke-interface {v13, v9, v10}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-nez v13, :cond_33

    add-int/lit8 v11, v11, 0x1

    goto :goto_21

    .line 234
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    :goto_39
    move-wide v6, v9

    goto :goto_5b

    :cond_3b
    cmp-long v8, v9, v6

    if-nez v8, :cond_40

    goto :goto_5b

    .line 238
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Conflicting discontinuities."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    cmp-long v9, v6, v2

    if-eqz v9, :cond_5b

    .line 242
    invoke-interface {v8, v6, v7}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-nez v8, :cond_55

    goto :goto_5b

    .line 243
    :cond_55
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_5e
    return-wide v6
.end method

.method public reevaluateBuffer(J)V
    .registers 4

    .line 193
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .registers 6

    .line 257
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    const/4 v0, 0x1

    .line 259
    :goto_a
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    array-length v2, v1

    if-ge v0, v2, :cond_24

    .line 260
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 261
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected child seekToUs result."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    return-wide p1
.end method

.method public selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 115
    array-length v3, v1

    new-array v3, v3, [I

    .line 116
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v5, 0x0

    move v6, v5

    .line 117
    :goto_e
    array-length v7, v1

    if-ge v6, v7, :cond_4b

    .line 118
    aget-object v7, v2, v6

    if-nez v7, :cond_17

    const/4 v8, 0x0

    goto :goto_20

    :cond_17
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    :goto_20
    const/4 v7, -0x1

    if-nez v8, :cond_25

    move v8, v7

    goto :goto_29

    .line 119
    :cond_25
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_29
    aput v8, v3, v6

    .line 120
    aget-object v8, v1, v6

    if-eqz v8, :cond_46

    .line 121
    invoke-interface {v8}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v7

    .line 123
    iget-object v7, v7, Lio/bidmachine/media3/common/TrackGroup;->id:Ljava/lang/String;

    const-string v8, ":"

    .line 124
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v4, v6

    goto :goto_48

    .line 126
    :cond_46
    aput v7, v4, v6

    :goto_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 129
    :cond_4b
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 131
    array-length v6, v1

    new-array v7, v6, [Lio/bidmachine/media3/exoplayer/source/SampleStream;

    .line 132
    array-length v9, v1

    new-array v13, v9, [Lio/bidmachine/media3/exoplayer/source/SampleStream;

    .line 133
    array-length v9, v1

    new-array v11, v9, [Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 134
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    array-length v10, v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v15, p5

    move v10, v5

    .line 135
    :goto_64
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    array-length v12, v12

    if-ge v10, v12, :cond_108

    move v12, v5

    .line 136
    :goto_6a
    array-length v14, v1

    if-ge v12, v14, :cond_a7

    .line 137
    aget v14, v3, v12

    if-ne v14, v10, :cond_74

    aget-object v14, v2, v12

    goto :goto_75

    :cond_74
    const/4 v14, 0x0

    :goto_75
    aput-object v14, v13, v12

    .line 138
    aget v14, v4, v12

    if-ne v14, v10, :cond_9f

    .line 139
    aget-object v14, v1, v12

    invoke-static {v14}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    const/16 v17, 0x0

    .line 140
    invoke-interface {v14}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v8

    .line 141
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 142
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/common/TrackGroup;

    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/common/TrackGroup;

    .line 143
    new-instance v8, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;

    invoke-direct {v8, v14, v5}, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;-><init>(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;Lio/bidmachine/media3/common/TrackGroup;)V

    aput-object v8, v11, v12

    goto :goto_a3

    :cond_9f
    const/16 v17, 0x0

    .line 145
    aput-object v17, v11, v12

    :goto_a3
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_6a

    :cond_a7
    const/16 v17, 0x0

    .line 148
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    aget-object v5, v5, v10

    move v12, v10

    move-object v10, v5

    move v5, v12

    move-object/from16 v12, p2

    move-object/from16 v14, p4

    .line 149
    invoke-interface/range {v10 .. v16}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v18

    if-nez v5, :cond_bd

    move-wide/from16 v15, v18

    goto :goto_c1

    :cond_bd
    cmp-long v8, v18, v15

    if-nez v8, :cond_100

    :goto_c1
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 157
    :goto_c3
    array-length v12, v1

    if-ge v8, v12, :cond_f2

    .line 158
    aget v12, v4, v8

    if-ne v12, v5, :cond_e1

    .line 160
    aget-object v10, v13, v8

    invoke-static {v10}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/bidmachine/media3/exoplayer/source/SampleStream;

    .line 161
    aget-object v12, v13, v8

    aput-object v12, v7, v8

    .line 163
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v10, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_ef

    .line 164
    :cond_e1
    aget v12, v3, v8

    if-ne v12, v5, :cond_ef

    .line 166
    aget-object v12, v13, v8

    if-nez v12, :cond_eb

    const/4 v14, 0x1

    goto :goto_ec

    :cond_eb
    const/4 v14, 0x0

    :goto_ec
    invoke-static {v14}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    :cond_ef
    :goto_ef
    add-int/lit8 v8, v8, 0x1

    goto :goto_c3

    :cond_f2
    if-eqz v10, :cond_fb

    .line 170
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->periods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    aget-object v8, v8, v5

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fb
    add-int/lit8 v10, v5, 0x1

    const/4 v5, 0x0

    goto/16 :goto_64

    .line 154
    :cond_100
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_108
    move v1, v5

    .line 174
    invoke-static {v7, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    new-array v1, v1, [Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 177
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    new-instance v2, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$$ExternalSyntheticLambda0;-><init>()V

    .line 180
    invoke-static {v9, v2}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v2

    .line 178
    invoke-interface {v1, v9, v2}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->create(Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    return-wide v15
.end method

###### Class io.bidmachine.media3.exoplayer.source.MergingMediaPeriod.ForwardingTrackSelection (io.bidmachine.media3.exoplayer.source.MergingMediaPeriod$ForwardingTrackSelection)
.class public final Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForwardingTrackSelection"
.end annotation


# instance fields
.field public final trackGroup:Lio/bidmachine/media3/common/TrackGroup;

.field public final trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;Lio/bidmachine/media3/common/TrackGroup;)V
    .registers 3

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 323
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    .line 368
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->disable()V

    return-void
.end method

.method public enable()V
    .registers 2

    .line 363
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->enable()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 459
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 462
    :cond_a
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;

    .line 463
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v0

    :cond_21
    return v2
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result p1

    return p1
.end method

.method public excludeTrack(IJ)Z
    .registers 5

    .line 441
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->excludeTrack(IJ)Z

    move-result p1

    return p1
.end method

.method public getFormat(I)Lio/bidmachine/media3/common/Format;
    .registers 4

    .line 343
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v1, p1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

.method public getIndexInTrackGroup(I)I
    .registers 3

    .line 348
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result p1

    return p1
.end method

.method public getSelectedFormat()Lio/bidmachine/media3/common/Format;
    .registers 3

    .line 373
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .registers 2

    .line 383
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedIndexInTrackGroup()I
    .registers 2

    .line 378
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    .line 394
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    .line 388
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v0

    return v0
.end method

.method public getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;
    .registers 2

    .line 333
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 469
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/TrackGroup;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 470
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public indexOf(I)I
    .registers 3

    .line 358
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    move-result p1

    return p1
.end method

.method public indexOf(Lio/bidmachine/media3/common/Format;)I
    .registers 4

    .line 353
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/common/TrackGroup;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result p1

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    move-result p1

    return p1
.end method

.method public isTrackExcluded(IJ)Z
    .registers 5

    .line 446
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->isTrackExcluded(IJ)Z

    move-result p1

    return p1
.end method

.method public length()I
    .registers 2

    .line 338
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v0

    return v0
.end method

.method public onDiscontinuity()V
    .registers 2

    .line 404
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->onDiscontinuity()V

    return-void
.end method

.method public onPlayWhenReadyChanged(Z)V
    .registers 3

    .line 414
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .registers 3

    .line 399
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    return-void
.end method

.method public onRebuffer()V
    .registers 2

    .line 409
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->onRebuffer()V

    return-void
.end method

.method public shouldCancelChunkLoad(JLio/bidmachine/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .registers 6
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

    .line 436
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->shouldCancelChunkLoad(JLio/bidmachine/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .registers 18
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

    .line 424
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MergingMediaPeriod$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.source.MergingMediaPeriod$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->$r8$lambda$yl944v6-SJBDuyYzYP-r9TXCrQA(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
