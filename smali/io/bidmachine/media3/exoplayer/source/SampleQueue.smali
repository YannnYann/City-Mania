###### Class io.bidmachine.media3.exoplayer.source.SampleQueue (io.bidmachine.media3.exoplayer.source.SampleQueue)
.class public Lio/bidmachine/media3/exoplayer/source/SampleQueue;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;,
        Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;,
        Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# instance fields
.field public absoluteFirstIndex:I

.field public allSamplesAreSyncSamples:Z

.field public capacity:I

.field public cryptoDatas:[Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

.field public currentDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

.field public downstreamFormat:Lio/bidmachine/media3/common/Format;

.field public final drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

.field public final extrasHolder:Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

.field public flags:[I

.field public isLastSampleQueued:Z

.field public largestDiscardedTimestampUs:J

.field public largestQueuedTimestampUs:J

.field public length:I

.field public loggedUnexpectedNonSyncSample:Z

.field public offsets:[J

.field public pendingSplice:Z

.field public readPosition:I

.field public relativeFirstIndex:I

.field public final sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

.field public sampleOffsetUs:J

.field public final sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/source/SpannedData<",
            "Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public sizes:[I

.field public sourceIds:[J

.field public startTimeUs:J

.field public timesUs:[J

.field public unadjustedUpstreamFormat:Lio/bidmachine/media3/common/Format;

.field public upstreamFormat:Lio/bidmachine/media3/common/Format;

.field public upstreamFormatAdjustmentRequired:Z

.field public upstreamFormatChangeListener:Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

.field public upstreamFormatRequired:Z

.field public upstreamKeyframeRequired:Z

.field public upstreamSourceId:J


# direct methods
.method public static synthetic $r8$lambda$euolQZFuNtk07X78L96qAOZpGqg(Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;)V
    .registers 1

    .line 178
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->release()V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 4

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    .line 167
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 168
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    invoke-direct {p2, p1}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;-><init>(Lio/bidmachine/media3/exoplayer/upstream/Allocator;)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    .line 169
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->extrasHolder:Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    const/16 p1, 0x3e8

    .line 170
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->capacity:I

    .line 171
    new-array p2, p1, [J

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    .line 172
    new-array p2, p1, [J

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->offsets:[J

    .line 173
    new-array p2, p1, [J

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    .line 174
    new-array p2, p1, [I

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->flags:[I

    .line 175
    new-array p2, p1, [I

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sizes:[I

    .line 176
    new-array p1, p1, [Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    .line 177
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/SpannedData;

    new-instance p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/source/SpannedData;-><init>(Lio/bidmachine/media3/common/util/Consumer;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    const-wide/high16 p1, -0x8000000000000000L

    .line 179
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    .line 180
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 181
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    .line 183
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    .line 184
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z

    return-void
.end method

.method public static createWithDrm(Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Lio/bidmachine/media3/exoplayer/source/SampleQueue;
    .registers 4

    .line 138
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 140
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    .line 141
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;-><init>(Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-object v0
.end method

.method public static createWithoutDrm(Lio/bidmachine/media3/exoplayer/upstream/Allocator;)Lio/bidmachine/media3/exoplayer/source/SampleQueue;
    .registers 3

    .line 118
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;-><init>(Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized attemptSplice(J)Z
    .registers 8

    monitor-enter p0

    .line 881
    :try_start_1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    .line 882
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    cmp-long p1, p1, v3

    if-lez p1, :cond_e

    move v1, v2

    :cond_e
    monitor-exit p0

    return v1

    :catchall_10
    move-exception p1

    goto :goto_28

    .line 884
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v3
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_10

    cmp-long v0, v3, p1

    if-ltz v0, :cond_1c

    .line 885
    monitor-exit p0

    return v1

    .line 887
    :cond_1c
    :try_start_1c
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->countUnreadSamplesBefore(J)I

    move-result p1

    .line 888
    iget p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardUpstreamSampleMetadata(I)J
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_10

    .line 889
    monitor-exit p0

    return v2

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_10

    throw p1
.end method

.method public final declared-synchronized commitSample(JIJILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
    .registers 16

    monitor-enter p0

    .line 808
    :try_start_1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_24

    sub-int/2addr v0, v1

    .line 810
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 811
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    goto :goto_24

    :catchall_21
    move-exception p1

    goto/16 :goto_108

    :cond_24
    :goto_24
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v2

    .line 815
    :goto_2c
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    .line 816
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 818
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 819
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aput-wide p1, v3, v0

    .line 820
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->offsets:[J

    aput-wide p4, p1, v0

    .line 821
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sizes:[I

    aput p6, p1, v0

    .line 822
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->flags:[I

    aput p3, p1, v0

    .line 823
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    aput-object p7, p1, v0

    .line 824
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    iget-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamSourceId:J

    aput-wide p2, p1, v0

    .line 826
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/SpannedData;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_70

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    .line 827
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Lio/bidmachine/media3/common/Format;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    .line 828
    :cond_70
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Format;

    .line 830
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    if-eqz p2, :cond_83

    .line 831
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {p2, p3, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->preacquireSession(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    move-result-object p2

    goto :goto_85

    .line 832
    :cond_83
    sget-object p2, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    .line 834
    :goto_85
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    .line 835
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getWriteIndex()I

    move-result p4

    new-instance p5, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    const/4 p6, 0x0

    invoke-direct {p5, p1, p2, p6}, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;-><init>(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;Lio/bidmachine/media3/exoplayer/source/SampleQueue$1;)V

    .line 834
    invoke-virtual {p3, p4, p5}, Lio/bidmachine/media3/exoplayer/source/SpannedData;->appendSpan(ILjava/lang/Object;)V

    .line 838
    :cond_94
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr p1, v1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    .line 839
    iget p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne p1, p2, :cond_106

    add-int/lit16 p1, p2, 0x3e8

    .line 842
    new-array p3, p1, [J

    .line 843
    new-array p4, p1, [J

    .line 844
    new-array p5, p1, [J

    .line 845
    new-array p6, p1, [I

    .line 846
    new-array p7, p1, [I

    .line 847
    new-array v0, p1, [Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    .line 848
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    sub-int/2addr p2, v1

    .line 849
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->offsets:[J

    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->flags:[I

    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sizes:[I

    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 856
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->offsets:[J

    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->flags:[I

    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sizes:[I

    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 861
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 862
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->offsets:[J

    .line 863
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    .line 864
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->flags:[I

    .line 865
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sizes:[I

    .line 866
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    .line 867
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    .line 868
    iput v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 869
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->capacity:I
    :try_end_106
    .catchall {:try_start_1 .. :try_end_106} :catchall_21

    .line 871
    :cond_106
    monitor-exit p0

    return-void

    :goto_108
    :try_start_108
    monitor-exit p0
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_21

    throw p1
.end method

.method public final countUnreadSamplesBefore(J)I
    .registers 8

    .line 1032
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    add-int/lit8 v1, v0, -0x1

    .line 1033
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v1

    .line 1034
    :cond_8
    :goto_8
    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    if-le v0, v2, :cond_20

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v3, v2, v1

    cmp-long v2, v3, p1

    if-ltz v2, :cond_20

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 1038
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->capacity:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_20
    return v0
.end method

.method public final declared-synchronized discardSampleMetadataTo(JZZ)J
    .registers 15

    monitor-enter p0

    .line 767
    :try_start_1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_11

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v5, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v6, v3, v5
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_36

    cmp-long v3, p1, v6

    if-gez v3, :cond_13

    :cond_11
    move-object v4, p0

    goto :goto_39

    :cond_13
    if-eqz p4, :cond_1b

    .line 770
    :try_start_15
    iget p4, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_20

    if-eq p4, v0, :cond_1b

    add-int/lit8 v0, p4, 0x1

    :cond_1b
    move-object v4, p0

    move-wide v7, p1

    move v9, p3

    move v6, v0

    goto :goto_24

    :catchall_20
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto :goto_3b

    .line 771
    :goto_24
    :try_start_24
    invoke-virtual/range {v4 .. v9}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_33

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2d

    .line 773
    monitor-exit p0

    return-wide v1

    .line 775
    :cond_2d
    :try_start_2d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide p1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_33

    monitor-exit p0

    return-wide p1

    :catchall_33
    move-exception v0

    :goto_34
    move-object p1, v0

    goto :goto_3b

    :catchall_36
    move-exception v0

    move-object v4, p0

    goto :goto_34

    .line 768
    :goto_39
    monitor-exit p0

    return-wide v1

    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_33

    throw p1
.end method

.method public final declared-synchronized discardSampleMetadataToEnd()J
    .registers 3

    monitor-enter p0

    .line 786
    :try_start_1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_9

    .line 787
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 789
    :cond_9
    :try_start_9
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized discardSampleMetadataToRead()J
    .registers 3

    monitor-enter p0

    .line 779
    :try_start_1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_9

    .line 780
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 782
    :cond_9
    :try_start_9
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final discardSamples(I)J
    .registers 7

    .line 1052
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 1053
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 1054
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    .line 1055
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    .line 1056
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 1057
    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->capacity:I

    if-lt v1, v2, :cond_22

    sub-int/2addr v1, v2

    .line 1058
    iput v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 1060
    :cond_22
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    sub-int/2addr v1, p1

    iput v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    if-gez v1, :cond_2c

    const/4 p1, 0x0

    .line 1062
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 1064
    :cond_2c
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/SpannedData;->discardTo(I)V

    .line 1066
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    if-nez p1, :cond_48

    .line 1067
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    if-nez p1, :cond_3b

    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->capacity:I

    :cond_3b
    add-int/lit8 p1, p1, -0x1

    .line 1068
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    .line 1070
    :cond_48
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->offsets:[J

    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public final discardTo(JZZ)V
    .registers 6

    .line 546
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    .line 547
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardSampleMetadataTo(JZZ)J

    move-result-wide p1

    .line 546
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardToEnd()V
    .registers 4

    .line 557
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardSampleMetadataToEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardToRead()V
    .registers 4

    .line 552
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardSampleMetadataToRead()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardUpstreamFrom(J)V
    .registers 5

    .line 278
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    if-nez v0, :cond_5

    return-void

    .line 281
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 282
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->countUnreadSamplesBefore(J)I

    move-result p1

    .line 283
    iget p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardUpstreamSamples(I)V

    return-void
.end method

.method public final discardUpstreamSampleMetadata(I)J
    .registers 10

    .line 893
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_12

    .line 894
    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    iget v4, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v1

    :goto_13
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 895
    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v3, v0

    iput v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    .line 896
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    if-nez v0, :cond_2e

    .line 897
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v0, :cond_2e

    move v1, v2

    :cond_2e
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    .line 898
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/SpannedData;->discardFrom(I)V

    .line 899
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    if-eqz p1, :cond_49

    sub-int/2addr p1, v2

    .line 900
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    .line 901
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final discardUpstreamSamples(I)V
    .registers 5

    .line 267
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardUpstreamSampleMetadata(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->discardUpstreamSampleBytes(J)V

    return-void
.end method

.method public final findSampleAfter(IIJZ)I
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_17

    .line 1013
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v3, v2, p1

    cmp-long v2, v3, p3

    if-ltz v2, :cond_d

    return v1

    :cond_d
    add-int/lit8 p1, p1, 0x1

    .line 1017
    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne p1, v2, :cond_14

    move p1, v0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    if-eqz p5, :cond_1a

    return p2

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public final findSampleBefore(IIJZ)I
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, p2, :cond_27

    .line 979
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_27

    if-eqz p5, :cond_17

    .line 980
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->flags:[I

    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1d

    :cond_17
    cmp-long v0, v4, p3

    if-nez v0, :cond_1c

    return v2

    :cond_1c
    move v0, v2

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    .line 990
    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne p1, v3, :cond_24

    move p1, v1

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_27
    return v0
.end method

.method public final format(Lio/bidmachine/media3/common/Format;)V
    .registers 4

    .line 589
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getAdjustedUpstreamFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    move-result-object v0

    const/4 v1, 0x0

    .line 590
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    .line 591
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->unadjustedUpstreamFormat:Lio/bidmachine/media3/common/Format;

    .line 592
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->setUpstreamFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result p1

    .line 593
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormatChangeListener:Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz v1, :cond_16

    if-eqz p1, :cond_16

    .line 594
    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Lio/bidmachine/media3/common/Format;)V

    :cond_16
    return-void
.end method

.method public getAdjustedUpstreamFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;
    .registers 7

    .line 678
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    iget-wide v0, p1, Lio/bidmachine/media3/common/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 681
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-wide v1, p1, Lio/bidmachine/media3/common/Format;->subsampleOffsetUs:J

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    add-long/2addr v1, v3

    .line 682
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 683
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    :cond_24
    return-object p1
.end method

.method public final getFirstIndex()I
    .registers 2

    .line 310
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    return v0
.end method

.method public final declared-synchronized getFirstTimestampUs()J
    .registers 4

    monitor-enter p0

    .line 374
    :try_start_1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    if-nez v0, :cond_8

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_f

    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v1, v0, v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-wide v0, v1

    :goto_f
    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public final declared-synchronized getLargestQueuedTimestampUs()J
    .registers 3

    monitor-enter p0

    .line 346
    :try_start_1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized getLargestReadTimestampUs()J
    .registers 5

    monitor-enter p0

    .line 356
    :try_start_1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final getLargestTimestamp(I)J
    .registers 9

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_5

    return-wide v0

    :cond_5
    add-int/lit8 v2, p1, -0x1

    .line 1087
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p1, :cond_2b

    .line 1089
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1090
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1f

    return-wide v0

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_28

    .line 1095
    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->capacity:I

    add-int/lit8 v2, v2, -0x1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2b
    return-wide v0
.end method

.method public final getReadIndex()I
    .registers 3

    .line 315
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getRelativeIndex(I)I
    .registers 3

    .line 1107
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    .line 1108
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ge v0, p1, :cond_8

    return v0

    :cond_8
    sub-int/2addr v0, p1

    return v0
.end method

.method public final declared-synchronized getSkipCount(JZ)I
    .registers 12

    monitor-enter p0

    .line 509
    :try_start_1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 510
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_18

    :cond_16
    move-object v1, p0

    goto :goto_45

    .line 513
    :cond_18
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_42

    cmp-long v0, p1, v0

    if-lez v0, :cond_2b

    if-eqz p3, :cond_2b

    .line 514
    :try_start_20
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    iget p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_27

    sub-int/2addr p1, p2

    monitor-exit p0

    return p1

    :catchall_27
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_47

    .line 516
    :cond_2b
    :try_start_2b
    iget p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_42

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 517
    :try_start_34
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_3f

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3d

    .line 519
    monitor-exit p0

    return v7

    .line 521
    :cond_3d
    monitor-exit p0

    return p1

    :catchall_3f
    move-exception v0

    :goto_40
    move-object p1, v0

    goto :goto_47

    :catchall_42
    move-exception v0

    move-object v1, p0

    goto :goto_40

    .line 511
    :goto_45
    monitor-exit p0

    return v7

    :goto_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_3f

    throw p1
.end method

.method public final declared-synchronized getUpstreamFormat()Lio/bidmachine/media3/common/Format;
    .registers 2

    monitor-enter p0

    .line 332
    :try_start_1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormat:Lio/bidmachine/media3/common/Format;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :goto_9
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final getWriteIndex()I
    .registers 3

    .line 257
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final hasNextSample()Z
    .registers 3

    .line 907
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final invalidateUpstreamFormatAdjustment()V
    .registers 2

    const/4 v0, 0x1

    .line 663
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    return-void
.end method

.method public final declared-synchronized isLastSampleQueued()Z
    .registers 2

    monitor-enter p0

    .line 369
    :try_start_1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized isReady(Z)Z
    .registers 4

    monitor-enter p0

    .line 391
    :try_start_1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    if-nez p1, :cond_1a

    .line 392
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormat:Lio/bidmachine/media3/common/Format;

    if-eqz p1, :cond_19

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->downstreamFormat:Lio/bidmachine/media3/common/Format;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    if-eq p1, v0, :cond_19

    goto :goto_1a

    :catchall_17
    move-exception p1

    goto :goto_3c

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_1a
    monitor-exit p0

    return v1

    .line 396
    :cond_1c
    :try_start_1c
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/SpannedData;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Lio/bidmachine/media3/common/Format;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->downstreamFormat:Lio/bidmachine/media3/common/Format;
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_17

    if-eq p1, v0, :cond_30

    .line 398
    monitor-exit p0

    return v1

    .line 400
    :cond_30
    :try_start_30
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->mayReadSample(I)Z

    move-result p1
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_17

    monitor-exit p0

    return p1

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_17

    throw p1
.end method

.method public final mayReadSample(I)Z
    .registers 4

    .line 955
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_1f

    .line 956
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->flags:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_1d

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 958
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->playClearSamplesWithoutKeys()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    return p1

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    return p1
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto :goto_19

    .line 304
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getError()Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    throw v0

    :cond_19
    :goto_19
    return-void
.end method

.method public final onFormatResult(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/FormatHolder;)V
    .registers 7

    .line 918
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->downstreamFormat:Lio/bidmachine/media3/common/Format;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_d

    .line 920
    :cond_b
    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    .line 921
    :goto_d
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->downstreamFormat:Lio/bidmachine/media3/common/Format;

    .line 922
    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    .line 925
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    if-eqz v3, :cond_1e

    .line 926
    invoke-interface {v3, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->getCryptoType(Lio/bidmachine/media3/common/Format;)I

    move-result v3

    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format;->copyWithCryptoType(I)Lio/bidmachine/media3/common/Format;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, p1

    .line 927
    :goto_1f
    iput-object v3, p2, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    .line 928
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    iput-object v3, p2, Lio/bidmachine/media3/exoplayer/FormatHolder;->drmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 929
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    if-nez v3, :cond_2a

    goto :goto_48

    :cond_2a
    if-nez v1, :cond_33

    .line 933
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_48

    .line 939
    :cond_33
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 940
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v1, v2, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->acquireSession(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 941
    iput-object p1, p2, Lio/bidmachine/media3/exoplayer/FormatHolder;->drmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_48

    .line 944
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->release(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public final declared-synchronized peekSampleMetadata(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;ZZLio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)I
    .registers 11

    monitor-enter p0

    const/4 v0, 0x0

    .line 703
    :try_start_2
    iput-boolean v0, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z

    .line 704
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, -0x4

    const/4 v2, -0x3

    const/4 v3, -0x5

    if-nez v0, :cond_39

    if-nez p4, :cond_2f

    .line 705
    iget-boolean p4, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz p4, :cond_14

    goto :goto_2f

    .line 709
    :cond_14
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormat:Lio/bidmachine/media3/common/Format;

    if-eqz p2, :cond_2d

    if-nez p3, :cond_22

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->downstreamFormat:Lio/bidmachine/media3/common/Format;

    if-eq p2, p3, :cond_2d

    goto :goto_22

    :catchall_1f
    move-exception p1

    goto/16 :goto_97

    .line 710
    :cond_22
    :goto_22
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/common/Format;

    invoke-virtual {p0, p2, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->onFormatResult(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/FormatHolder;)V
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_1f

    .line 711
    monitor-exit p0

    return v3

    .line 713
    :cond_2d
    monitor-exit p0

    return v2

    :cond_2f
    :goto_2f
    const/4 p1, 0x4

    .line 706
    :try_start_30
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/decoder/Buffer;->setFlags(I)V

    const-wide/high16 p3, -0x8000000000000000L

    .line 707
    iput-wide p3, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_1f

    .line 708
    monitor-exit p0

    return v1

    .line 717
    :cond_39
    :try_start_39
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lio/bidmachine/media3/exoplayer/source/SpannedData;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Lio/bidmachine/media3/common/Format;

    if-nez p3, :cond_92

    .line 718
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->downstreamFormat:Lio/bidmachine/media3/common/Format;

    if-eq v0, p3, :cond_4e

    goto :goto_92

    .line 723
    :cond_4e
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    .line 724
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->mayReadSample(I)Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_5f

    .line 725
    iput-boolean v0, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z
    :try_end_5d
    .catchall {:try_start_39 .. :try_end_5d} :catchall_1f

    .line 726
    monitor-exit p0

    return v2

    .line 729
    :cond_5f
    :try_start_5f
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->flags:[I

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lio/bidmachine/media3/decoder/Buffer;->setFlags(I)V

    .line 730
    iget p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v2, v0

    if-ne p3, v2, :cond_78

    if-nez p4, :cond_73

    iget-boolean p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz p3, :cond_78

    :cond_73
    const/high16 p3, 0x20000000

    .line 731
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/decoder/Buffer;->addFlag(I)V

    .line 733
    :cond_78
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v2, p3, p1

    iput-wide v2, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 734
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget p2, p2, p1

    iput p2, p5, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 735
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide p3, p2, p1

    iput-wide p3, p5, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 736
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    aget-object p1, p2, p1

    iput-object p1, p5, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->cryptoData:Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;
    :try_end_90
    .catchall {:try_start_5f .. :try_end_90} :catchall_1f

    .line 738
    monitor-exit p0

    return v1

    .line 719
    :cond_92
    :goto_92
    :try_start_92
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->onFormatResult(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/FormatHolder;)V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_1f

    .line 720
    monitor-exit p0

    return v3

    :goto_97
    :try_start_97
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_1f

    throw p1
.end method

.method public final declared-synchronized peekSourceId()J
    .registers 3

    monitor-enter p0

    .line 325
    :try_start_1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 326
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    aget-wide v0, v1, v0

    goto :goto_16

    :catchall_12
    move-exception v0

    goto :goto_18

    :cond_14
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamSourceId:J
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_12

    :goto_16
    monitor-exit p0

    return-wide v0

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_12

    throw v0
.end method

.method public preRelease()V
    .registers 1

    .line 291
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    .line 292
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->releaseDrmSessionReferences()V

    return-void
.end method

.method public read(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;IZ)I
    .registers 14

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v6, v2

    goto :goto_9

    :cond_8
    move v6, v1

    .line 427
    :goto_9
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->extrasHolder:Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    .line 428
    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->peekSampleMetadata(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;ZZLio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_3d

    .line 434
    invoke-virtual {v5}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result p2

    if-nez p2, :cond_3d

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_21

    move v1, v2

    :cond_21
    and-int/lit8 p2, p3, 0x4

    if-nez p2, :cond_36

    if-eqz v1, :cond_2f

    .line 438
    iget-object p2, v3, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    iget-object p3, v3, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->extrasHolder:Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    invoke-virtual {p2, v5, p3}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->peekToBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)V

    goto :goto_36

    .line 440
    :cond_2f
    iget-object p2, v3, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    iget-object p3, v3, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->extrasHolder:Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    invoke-virtual {p2, v5, p3}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readToBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)V

    :cond_36
    :goto_36
    if-nez v1, :cond_3d

    .line 444
    iget p2, v3, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr p2, v2

    iput p2, v3, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    :cond_3d
    return p1
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->reset(Z)V

    .line 193
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->releaseDrmSessionReferences()V

    return-void
.end method

.method public final releaseDrmSessionReferences()V
    .registers 3

    .line 793
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_e

    .line 794
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->release(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    const/4 v0, 0x0

    .line 795
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->currentDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 798
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->downstreamFormat:Lio/bidmachine/media3/common/Format;

    :cond_e
    return-void
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .registers 6

    .line 211
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->reset()V

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    .line 213
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    .line 214
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 215
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    const/4 v1, 0x1

    .line 216
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 217
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    .line 218
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 219
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 220
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    .line 221
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SpannedData;->clear()V

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    .line 223
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->unadjustedUpstreamFormat:Lio/bidmachine/media3/common/Format;

    .line 224
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormat:Lio/bidmachine/media3/common/Format;

    .line 225
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    .line 226
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z

    :cond_2b
    return-void
.end method

.method public final declared-synchronized rewind()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 692
    :try_start_2
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 693
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->rewind()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 694
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final sampleData(Lio/bidmachine/media3/common/DataReader;IZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {p4, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public final sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V
    .registers 4

    .line 608
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {p3, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
    .registers 18

    .line 618
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    if-eqz v1, :cond_f

    .line 619
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->unadjustedUpstreamFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/Format;

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->format(Lio/bidmachine/media3/common/Format;)V

    :cond_f
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    move v4, v3

    goto :goto_18

    :cond_17
    move v4, v2

    .line 623
    :goto_18
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    if-eqz v5, :cond_21

    if-nez v4, :cond_1f

    goto :goto_64

    .line 627
    :cond_1f
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    .line 630
    :cond_21
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    add-long/2addr v5, p1

    .line 631
    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z

    if-eqz v7, :cond_53

    .line 632
    iget-wide v7, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_2f

    goto :goto_64

    :cond_2f
    if-nez v1, :cond_53

    .line 640
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    if-nez v1, :cond_4f

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "SampleQueue"

    invoke-static {v7, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    :cond_4f
    or-int/lit8 v1, p3, 0x1

    move v3, v1

    goto :goto_54

    :cond_53
    move v3, p3

    .line 647
    :goto_54
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->pendingSplice:Z

    if-eqz v1, :cond_65

    if-eqz v4, :cond_64

    .line 648
    invoke-virtual {p0, v5, v6}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->attemptSplice(J)Z

    move-result v1

    if-nez v1, :cond_61

    goto :goto_64

    .line 651
    :cond_61
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->pendingSplice:Z

    goto :goto_65

    :cond_64
    :goto_64
    return-void

    .line 654
    :cond_65
    :goto_65
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->getTotalBytesWritten()J

    move-result-wide v1

    int-to-long v7, p4

    sub-long/2addr v1, v7

    move/from16 v7, p5

    int-to-long v7, v7

    sub-long/2addr v1, v7

    move-wide v9, v5

    move-wide v4, v1

    move-wide v1, v9

    move-object v0, p0

    move v6, p4

    move-object/from16 v7, p6

    .line 655
    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->commitSample(JIJILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public final declared-synchronized seekTo(I)Z
    .registers 5

    monitor-enter p0

    .line 457
    :try_start_1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->rewind()V

    .line 458
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    if-lt p1, v0, :cond_1a

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr v1, v0

    if-le p1, v1, :cond_e

    goto :goto_1a

    :cond_e
    const-wide/high16 v1, -0x8000000000000000L

    .line 461
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    sub-int/2addr p1, v0

    .line 462
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    .line 463
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_18
    move-exception p1

    goto :goto_1d

    .line 459
    :cond_1a
    :goto_1a
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_18

    throw p1
.end method

.method public final declared-synchronized seekTo(JZ)Z
    .registers 12

    monitor-enter p0

    .line 478
    :try_start_1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->rewind()V

    .line 479
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 480
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_21

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_23

    if-nez p3, :cond_23

    :cond_21
    move-object v1, p0

    goto :goto_57

    .line 486
    :cond_23
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z

    if-eqz v0, :cond_3b

    .line 487
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_38

    sub-int v3, v0, v1

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    :try_start_30
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->findSampleAfter(IIJZ)I

    move-result p1

    goto :goto_48

    :catchall_35
    move-exception v0

    :goto_36
    move-object p1, v0

    goto :goto_59

    :catchall_38
    move-exception v0

    move-object v1, p0

    goto :goto_36

    :cond_3b
    move-object v1, p0

    move-wide v4, p1

    .line 489
    iget p1, v1, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    iget p2, v1, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    sub-int v3, p1, p2

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_35

    :goto_48
    const/4 p2, -0x1

    if-ne p1, p2, :cond_4d

    .line 492
    monitor-exit p0

    return v7

    .line 494
    :cond_4d
    :try_start_4d
    iput-wide v4, v1, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    .line 495
    iget p2, v1, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr p2, p1

    iput p2, v1, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_35

    .line 496
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 483
    :goto_57
    monitor-exit p0

    return v7

    :goto_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_35

    throw p1
.end method

.method public final setSampleOffsetUs(J)V
    .registers 5

    .line 569
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_b

    .line 570
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    .line 571
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->invalidateUpstreamFormatAdjustment()V

    :cond_b
    return-void
.end method

.method public final setStartTimeUs(J)V
    .registers 3

    .line 238
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    return-void
.end method

.method public final declared-synchronized setUpstreamFormat(Lio/bidmachine/media3/common/Format;)Z
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 742
    :try_start_2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    .line 743
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_33

    if-eqz v1, :cond_e

    .line 747
    monitor-exit p0

    return v0

    .line 750
    :cond_e
    :try_start_e
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/SpannedData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    .line 751
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 755
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lio/bidmachine/media3/exoplayer/source/SpannedData;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Lio/bidmachine/media3/common/Format;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormat:Lio/bidmachine/media3/common/Format;

    goto :goto_37

    :catchall_33
    move-exception p1

    goto :goto_4b

    .line 757
    :cond_35
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormat:Lio/bidmachine/media3/common/Format;

    .line 759
    :goto_37
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormat:Lio/bidmachine/media3/common/Format;

    iget-object v2, v1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, v1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 760
    invoke-static {v2, v1}, Lio/bidmachine/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->allSamplesAreSyncSamples:Z

    .line 761
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z
    :try_end_48
    .catchall {:try_start_e .. :try_end_48} :catchall_33

    .line 762
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_33

    throw p1
.end method

.method public final setUpstreamFormatChangeListener(Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamFormatChangeListener:Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    return-void
.end method

.method public final declared-synchronized skip(I)V
    .registers 4

    monitor-enter p0

    if-ltz p1, :cond_e

    .line 531
    :try_start_3
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->length:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :catchall_c
    move-exception p1

    goto :goto_19

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 532
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_c

    .line 533
    monitor-exit p0

    return-void

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_c

    throw p1
.end method

.method public final sourceId(J)V
    .registers 3

    .line 247
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->upstreamSourceId:J

    return-void
.end method

.method public final splice()V
    .registers 2

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->pendingSplice:Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.SampleQueue.AnonymousClass1 (io.bidmachine.media3.exoplayer.source.SampleQueue$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/source/SampleQueue$1;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.source.SampleQueue.SampleExtrasHolder (io.bidmachine.media3.exoplayer.source.SampleQueue$SampleExtrasHolder)
.class public final Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleExtrasHolder"
.end annotation


# instance fields
.field public cryptoData:Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

.field public offset:J

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.SampleQueue.SharedSampleMetadata (io.bidmachine.media3.exoplayer.source.SampleQueue$SharedSampleMetadata)
.class public final Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedSampleMetadata"
.end annotation


# instance fields
.field public final drmSessionReference:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

.field public final format:Lio/bidmachine/media3/common/Format;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;)V
    .registers 3

    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Lio/bidmachine/media3/common/Format;

    .line 1126
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;Lio/bidmachine/media3/exoplayer/source/SampleQueue$1;)V
    .registers 4

    .line 1120
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;-><init>(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.SampleQueue.UpstreamFormatChangedListener (io.bidmachine.media3.exoplayer.source.SampleQueue$UpstreamFormatChangedListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpstreamFormatChangedListener"
.end annotation


# virtual methods
.method public abstract onUpstreamFormatChanged(Lio/bidmachine/media3/common/Format;)V
.end method

###### Class io.bidmachine.media3.exoplayer.source.SampleQueue$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.source.SampleQueue$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/SampleQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->$r8$lambda$euolQZFuNtk07X78L96qAOZpGqg(Lio/bidmachine/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;)V

    return-void
.end method
