###### Class io.bidmachine.media3.exoplayer.source.chunk.ChunkSampleStream (io.bidmachine.media3.exoplayer.source.chunk.ChunkSampleStream)
.class public Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SampleStream;
.implements Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,
        Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/source/SampleStream;",
        "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
        "Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;",
        ">;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# instance fields
.field public final callback:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback<",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public canReportInitialDiscontinuity:Z

.field public canceledMediaChunk:Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

.field public final chunkOutput:Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

.field public final chunkSource:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

.field public final embeddedTrackFormats:[Lio/bidmachine/media3/common/Format;

.field public final embeddedTrackTypes:[I

.field public final embeddedTracksSelected:[Z

.field public hasInitialDiscontinuity:Z

.field public lastSeekPositionUs:J

.field public final loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

.field public loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

.field public loadingFinished:Z

.field public final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final nextChunkHolder:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;

.field public nextNotifyPrimaryFormatMediaChunkIndex:I

.field public pendingResetPositionUs:J

.field public primaryDownstreamTrackFormat:Lio/bidmachine/media3/common/Format;

.field public final primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

.field public final primaryTrackType:I

.field public final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field public releaseCallback:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[I[Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;Lio/bidmachine/media3/exoplayer/upstream/Allocator;JLio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;ZLio/bidmachine/media3/exoplayer/util/ReleasableExecutor;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Lio/bidmachine/media3/common/Format;",
            "TT;",
            "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback<",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "TT;>;>;",
            "Lio/bidmachine/media3/exoplayer/upstream/Allocator;",
            "J",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            "Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;",
            "Z",
            "Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    const/4 v0, 0x0

    if-nez p2, :cond_a

    .line 141
    new-array p2, v0, [I

    :cond_a
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    if-nez p3, :cond_10

    .line 142
    new-array p3, v0, [Lio/bidmachine/media3/common/Format;

    :cond_10
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Lio/bidmachine/media3/common/Format;

    .line 143
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    .line 144
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->callback:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;

    .line 145
    iput-object p12, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 146
    iput-object p11, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 147
    iput-boolean p13, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->canReportInitialDiscontinuity:Z

    .line 149
    new-instance p3, Lio/bidmachine/media3/exoplayer/upstream/Loader;

    if-eqz p14, :cond_24

    invoke-direct {p3, p14}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;)V

    goto :goto_29

    :cond_24
    const-string p4, "ChunkSampleStream"

    invoke-direct {p3, p4}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_29
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 150
    new-instance p3, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;

    invoke-direct {p3}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;-><init>()V

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextChunkHolder:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;

    .line 151
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 152
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 154
    array-length p2, p2

    .line 155
    new-array p3, p2, [Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 156
    new-array p3, p2, [Z

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    add-int/lit8 p3, p2, 0x1

    .line 157
    new-array p4, p3, [I

    .line 158
    new-array p3, p3, [Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 161
    invoke-static {p6, p9, p10}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->createWithDrm(Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    move-result-object p5

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 162
    aput p1, p4, v0

    .line 163
    aput-object p5, p3, v0

    :goto_58
    if-ge v0, p2, :cond_6e

    .line 166
    invoke-static {p6}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->createWithoutDrm(Lio/bidmachine/media3/exoplayer/upstream/Allocator;)Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    move-result-object p1

    .line 167
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aput-object p1, p5, v0

    add-int/lit8 p5, v0, 0x1

    .line 168
    aput-object p1, p3, p5

    .line 169
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    aget p1, p1, v0

    aput p1, p4, p5

    move v0, p5

    goto :goto_58

    .line 172
    :cond_6e
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    invoke-direct {p1, p4, p3}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;-><init>([I[Lio/bidmachine/media3/exoplayer/source/SampleQueue;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkOutput:Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    .line 173
    iput-wide p7, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 174
    iput-wide p7, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;
    .registers 1

    .line 60
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)[Z
    .registers 1

    .line 60
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)[I
    .registers 1

    .line 60
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)[Lio/bidmachine/media3/common/Format;
    .registers 1

    .line 60
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Lio/bidmachine/media3/common/Format;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)J
    .registers 3

    .line 60
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    return-wide v0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .registers 1

    .line 60
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    return-object p0
.end method

.method private discardUpstream(I)V
    .registers 9

    .line 759
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 761
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_11
    const/4 v1, -0x1

    if-ge p1, v0, :cond_1e

    .line 764
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_1f

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_1e
    move p1, v1

    :goto_1f
    if-ne p1, v1, :cond_22

    return-void

    .line 775
    :cond_22
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget-wide v5, v0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    .line 776
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object p1

    .line 777
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 778
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    :cond_38
    const/4 v0, 0x0

    .line 780
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 781
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    return-void
.end method

.method private isMediaChunk(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)Z
    .registers 2

    .line 786
    instance-of p1, p1, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    return p1
.end method

.method private resetSampleQueues()V
    .registers 5

    .line 790
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->reset()V

    .line 791
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 792
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method


# virtual methods
.method public consumeInitialDiscontinuity()Z
    .registers 3

    const/4 v0, 0x0

    .line 719
    :try_start_1
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->hasInitialDiscontinuity:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6

    .line 721
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->hasInitialDiscontinuity:Z

    return v1

    :catchall_6
    move-exception v1

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->hasInitialDiscontinuity:Z

    .line 722
    throw v1
.end method

.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 13

    .line 605
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_b2

    .line 609
    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 613
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 614
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    :goto_21
    move-object v9, v2

    move-wide v7, v3

    goto :goto_2d

    .line 616
    :cond_24
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 617
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v3

    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    goto :goto_21

    .line 619
    :goto_2d
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextChunkHolder:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;

    move-object v6, p1

    invoke-interface/range {v5 .. v10}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;->getNextChunk(Lio/bidmachine/media3/exoplayer/LoadingInfo;JLjava/util/List;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;)V

    .line 620
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextChunkHolder:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;

    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;->endOfStream:Z

    .line 621
    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;->chunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    .line 622
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;->clear()V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p1, 0x1

    if-eqz v2, :cond_4b

    .line 625
    iput-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 626
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    return p1

    :cond_4b
    if-nez v3, :cond_4e

    return v1

    .line 634
    :cond_4e
    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    .line 635
    invoke-direct {p0, v3}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isMediaChunk(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 636
    move-object v2, v3

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    if-eqz v0, :cond_8d

    .line 642
    iget-wide v6, v2, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_89

    .line 643
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0, v8, v9}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->setStartTimeUs(J)V

    .line 644
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v6, v0

    move v7, v1

    :goto_6c
    if-ge v7, v6, :cond_78

    aget-object v8, v0, v7

    .line 645
    iget-wide v9, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    invoke-virtual {v8, v9, v10}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->setStartTimeUs(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 647
    :cond_78
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->canReportInitialDiscontinuity:Z

    if-eqz v0, :cond_89

    .line 649
    iget-object v0, v2, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget-object v6, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 650
    invoke-static {v6, v0}, Lio/bidmachine/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, p1

    .line 652
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->hasInitialDiscontinuity:Z

    .line 657
    :cond_89
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->canReportInitialDiscontinuity:Z

    .line 658
    iput-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 660
    :cond_8d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkOutput:Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->init(Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)V

    .line 661
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 662
    :cond_98
    instance-of v0, v3, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;

    if-eqz v0, :cond_a4

    .line 663
    move-object v0, v3

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkOutput:Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->init(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;)V

    .line 665
    :cond_a4
    :goto_a4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v2, v3, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    .line 666
    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v1

    .line 665
    invoke-virtual {v0, v3, p0, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->startLoading(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;I)J

    return p1

    :cond_b2
    :goto_b2
    return v1
.end method

.method public discardBuffer(JZ)V
    .registers 8

    .line 185
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 188
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getFirstIndex()I

    move-result v0

    .line 189
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardTo(JZZ)V

    .line 190
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getFirstIndex()I

    move-result p1

    if-le p1, v0, :cond_33

    .line 192
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getFirstTimestampUs()J

    move-result-wide v0

    const/4 p2, 0x0

    .line 193
    :goto_22
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v3, v2

    if-ge p2, v3, :cond_33

    .line 194
    aget-object v2, v2, p2

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v2, v0, v1, p3, v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_22

    .line 197
    :cond_33
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->discardDownstreamMediaChunks(I)V

    return-void
.end method

.method public final discardDownstreamMediaChunks(I)V
    .registers 4

    const/4 v0, 0x0

    .line 816
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result p1

    .line 818
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 819
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_17

    .line 821
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v1, v0, p1}, Lio/bidmachine/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    .line 822
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    :cond_17
    return-void
.end method

.method public final discardUpstreamMediaChunksFromIndex(I)Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;
    .registers 5

    .line 883
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 884
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lio/bidmachine/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    .line 885
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 886
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 887
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardUpstreamSamples(I)V

    .line 888
    :goto_29
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v2, p1

    if-ge v1, v2, :cond_3a

    .line 889
    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardUpstreamSamples(I)V

    goto :goto_29

    :cond_3a
    return-object v0
.end method

.method public discardUpstreamSamplesForClippedDuration(J)V
    .registers 10

    .line 732
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 733
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_5b

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_5b

    .line 736
    :cond_23
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v2

    .line 738
    iget-wide v3, v2, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->clippedEndTimeUs:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_2e

    goto :goto_30

    .line 740
    :cond_2e
    iget-wide v3, v2, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    :goto_30
    cmp-long v0, v3, p1

    if-gtz v0, :cond_35

    goto :goto_5b

    .line 745
    :cond_35
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v5

    cmp-long v0, v5, p1

    if-gtz v0, :cond_40

    goto :goto_5b

    .line 750
    :cond_40
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardUpstreamFrom(J)V

    .line 751
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_49
    if-ge v2, v1, :cond_53

    aget-object v3, v0, v2

    .line 752
    invoke-virtual {v3, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardUpstreamFrom(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 754
    :cond_53
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    move-wide v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 5

    .line 263
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;->getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 5

    .line 236
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 238
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 239
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    .line 241
    :cond_10
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 242
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v2

    .line 244
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_36

    .line 246
    :cond_1d
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_35

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    if-eqz v2, :cond_3e

    .line 248
    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 250
    :cond_3e
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChunkSource()Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    return-object v0
.end method

.method public final getLastMediaChunk()Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;
    .registers 3

    .line 872
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 677
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 678
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    .line 680
    :cond_9
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_10

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    return-wide v0
.end method

.method public final haveReadFromMediaChunk(I)Z
    .registers 7

    .line 798
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 799
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_17

    return v3

    :cond_17
    move v0, v1

    .line 802
    :cond_18
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v4, v2

    if-ge v0, v4, :cond_2c

    .line 803
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    if-le v2, v4, :cond_18

    return v3

    :cond_2c
    return v1
.end method

.method public isLoading()Z
    .registers 2

    .line 672
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPendingReset()Z
    .registers 5

    .line 811
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .registers 3

    .line 381
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final maybeNotifyPrimaryTrackFormatChanged()V
    .registers 4

    .line 827
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v0

    .line 828
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    add-int/lit8 v1, v1, -0x1

    .line 829
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v0

    .line 831
    :goto_e
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    if-gt v1, v0, :cond_1a

    add-int/lit8 v2, v1, 0x1

    .line 832
    iput v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged(I)V

    goto :goto_e

    :cond_1a
    return-void
.end method

.method public final maybeNotifyPrimaryTrackFormatChanged(I)V
    .registers 9

    .line 837
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 838
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    .line 839
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 840
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILio/bidmachine/media3/common/Format;ILjava/lang/Object;J)V

    .line 847
    :cond_1f
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lio/bidmachine/media3/common/Format;

    return-void
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    .line 387
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->maybeThrowError()V

    .line 388
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_17

    .line 389
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;->maybeThrowError()V

    :cond_17
    return-void
.end method

.method public onLoadCanceled(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJZ)V
    .registers 20

    const/4 v0, 0x0

    .line 487
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    .line 488
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 489
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 493
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 494
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 497
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 498
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    move-object v2, v1

    .line 499
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v5, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v6, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v7, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v8, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    iget-wide v10, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v1 .. v11}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_66

    .line 509
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 510
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->resetSampleQueues()V

    goto :goto_61

    .line 511
    :cond_44
    invoke-direct/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isMediaChunk(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 513
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 514
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 515
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 518
    :cond_61
    :goto_61
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->callback:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    :cond_66
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .registers 7

    .line 59
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJ)V
    .registers 19

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    .line 461
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;->onChunkLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)V

    .line 462
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 466
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 467
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 470
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 471
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    move-object v2, v1

    .line 472
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v5, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v6, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v7, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v8, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    iget-wide v10, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v1 .. v11}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 481
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->callback:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .registers 6

    .line 59
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->onLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 529
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v12

    .line 530
    invoke-direct/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isMediaChunk(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)Z

    move-result v14

    .line 531
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_26

    if-eqz v14, :cond_26

    .line 533
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_26

    :cond_24
    move v3, v4

    goto :goto_27

    :cond_26
    :goto_26
    move v3, v15

    .line 534
    :goto_27
    new-instance v17, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    move v6, v3

    move v5, v4

    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    move v7, v5

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    move v8, v6

    .line 538
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v6

    move v9, v7

    .line 539
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    move-wide/from16 v10, p4

    move v15, v2

    move-object/from16 v2, v17

    move/from16 v17, v14

    move v14, v8

    move-wide/from16 v8, p2

    invoke-direct/range {v2 .. v13}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 543
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget v4, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v5, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v7, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    .line 550
    invoke-static {v9, v10}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v11, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    .line 551
    invoke-static {v11, v12}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v11

    invoke-direct/range {v3 .. v12}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 552
    new-instance v4, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct {v4, v2, v3, v5, v6}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 556
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v3, v1, v14, v4, v6}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;->onChunkLoadError(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;ZLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Z

    move-result v3

    if-eqz v3, :cond_9b

    if-eqz v14, :cond_94

    .line 559
    sget-object v3, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    if-eqz v17, :cond_9c

    .line 561
    invoke-virtual {v0, v15}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v7

    if-ne v7, v1, :cond_83

    const/4 v15, 0x1

    goto :goto_84

    :cond_83
    const/4 v15, 0x0

    .line 562
    :goto_84
    invoke-static {v15}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 563
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 564
    iget-wide v7, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v7, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_9c

    .line 568
    :cond_94
    const-string v3, "ChunkSampleStream"

    const-string v7, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v3, v7}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b
    const/4 v3, 0x0

    :cond_9c
    :goto_9c
    if-nez v3, :cond_b5

    .line 574
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v3

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v7

    if-eqz v7, :cond_b3

    const/4 v9, 0x0

    .line 577
    invoke-static {v9, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->createRetryAction(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v3

    goto :goto_b5

    .line 578
    :cond_b3
    sget-object v3, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 581
    :cond_b5
    :goto_b5
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v4

    xor-int/lit8 v28, v4, 0x1

    .line 582
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v8, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v9, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v10, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v11, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v13, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    move-object/from16 v16, v7

    iget-wide v6, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    move-object/from16 v17, v2

    move-object/from16 v27, v5

    move-wide/from16 v25, v6

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v22, v12

    move-wide/from16 v23, v13

    invoke-virtual/range {v16 .. v28}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v4, :cond_f3

    const/4 v2, 0x0

    .line 594
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    .line 595
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v2, v4, v5}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 596
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->callback:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;

    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    :cond_f3
    return-object v3
.end method

.method public bridge synthetic onLoadError(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 8

    .line 59
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p7}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->onLoadError(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadStarted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJI)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p6, :cond_13

    .line 437
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;J)V

    move-object v5, v2

    goto :goto_2d

    .line 438
    :cond_13
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 441
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 442
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 445
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v5, v3

    .line 446
    :goto_2d
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v6, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v7, v0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v9, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v10, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v11, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    iget-wide v13, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    move/from16 v15, p6

    invoke-virtual/range {v4 .. v15}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public bridge synthetic onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .registers 7

    .line 59
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->onLoadStarted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJI)V

    return-void
.end method

.method public onLoaderReleased()V
    .registers 5

    .line 367
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->release()V

    .line 368
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 369
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 371
    :cond_13
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;->release()V

    .line 372
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->releaseCallback:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;

    if-eqz v0, :cond_1f

    .line 373
    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;->onSampleStreamReleased(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)V

    :cond_1f
    return-void
.end method

.method public final primarySampleIndexToMediaChunkIndex(II)I
    .registers 5

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 863
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1c

    .line 864
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 868
    :cond_1c
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public readData(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .registers 7

    .line 396
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_8

    return v1

    .line 399
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    .line 400
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 401
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v2

    if-gt v0, v2, :cond_1a

    return v1

    .line 406
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    .line 408
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->read(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public reevaluateBuffer(J)V
    .registers 6

    .line 686
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_61

    .line 690
    :cond_f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 691
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    .line 692
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isMediaChunk(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 693
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_61

    .line 697
    :cond_34
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0, v2}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;->shouldCancelLoad(JLio/bidmachine/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 698
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->cancelLoading()V

    .line 699
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isMediaChunk(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 700
    check-cast v0, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    return-void

    .line 706
    :cond_4e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->chunkSource:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result p1

    .line 707
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_61

    .line 708
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->discardUpstream(I)V

    :cond_61
    :goto_61
    return-void
.end method

.method public release(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 356
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->releaseCallback:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;

    .line 358
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->preRelease()V

    .line 359
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    .line 360
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->preRelease()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 362
    :cond_15
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1, p0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->release(Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    return-void
.end method

.method public seekToUs(J)V
    .registers 11

    .line 272
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->canReportInitialDiscontinuity:Z

    .line 274
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 276
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-void

    :cond_e
    move v1, v0

    .line 282
    :goto_f
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 283
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    .line 284
    iget-wide v3, v2, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_31

    .line 285
    iget-wide v4, v2, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->clippedStartTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_31

    goto :goto_38

    :cond_31
    if-lez v3, :cond_34

    goto :goto_37

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_37
    :goto_37
    const/4 v2, 0x0

    :goto_38
    const/4 v1, 0x1

    if-eqz v2, :cond_46

    .line 300
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->seekTo(I)Z

    move-result v2

    goto :goto_57

    .line 302
    :cond_46
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 304
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->getNextLoadPositionUs()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_52

    move v3, v1

    goto :goto_53

    :cond_52
    move v3, v0

    .line 303
    :goto_53
    invoke-virtual {v2, p1, p2, v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result v2

    :goto_57
    if-eqz v2, :cond_73

    .line 309
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 311
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v2

    .line 310
    invoke-virtual {p0, v2, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v2

    iput v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 313
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v3, v2

    :goto_68
    if-ge v0, v3, :cond_72

    aget-object v4, v2, v0

    .line 314
    invoke-virtual {v4, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_72
    return-void

    .line 318
    :cond_73
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 319
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 320
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 321
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 322
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 324
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    .line 325
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length p2, p1

    :goto_8e
    if-ge v0, p2, :cond_98

    aget-object v1, p1, v0

    .line 326
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 328
    :cond_98
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->cancelLoading()V

    return-void

    .line 330
    :cond_9e
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->clearFatalError()V

    .line 331
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->resetSampleQueues()V

    return-void
.end method

.method public selectEmbeddedTrack(JI)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "TT;>.EmbeddedSampleStream;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 211
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 212
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_2a

    .line 213
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 214
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aput-boolean v1, p3, v0

    .line 215
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    .line 216
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;-><init>(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;Lio/bidmachine/media3/exoplayer/source/SampleQueue;I)V

    return-object p1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public skipData(J)I
    .registers 6

    .line 413
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 416
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getSkipCount(JZ)I

    move-result p1

    .line 417
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    if-eqz p2, :cond_23

    .line 421
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result p2

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 422
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v0

    sub-int/2addr p2, v0

    .line 423
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 425
    :cond_23
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primarySampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->skip(I)V

    .line 426
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.source.chunk.ChunkSampleStream.EmbeddedSampleStream (io.bidmachine.media3.exoplayer.source.chunk.ChunkSampleStream$EmbeddedSampleStream)
.class public final Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmbeddedSampleStream"
.end annotation


# instance fields
.field public final index:I

.field public notifiedDownstreamFormat:Z

.field public final parent:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;Lio/bidmachine/media3/exoplayer/source/SampleQueue;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "TT;>;",
            "Lio/bidmachine/media3/exoplayer/source/SampleQueue;",
            "I)V"
        }
    .end annotation

    .line 904
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 906
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 907
    iput p4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    return-void
.end method

.method private maybeNotifyDownstreamFormat()V
    .registers 9

    .line 964
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->notifiedDownstreamFormat:Z

    if-nez v0, :cond_2c

    .line 965
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->access$500(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 966
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->access$200(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)[I

    move-result-object v0

    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget v2, v0, v2

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 967
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->access$300(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)[Lio/bidmachine/media3/common/Format;

    move-result-object v0

    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-object v3, v0, v3

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 970
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->access$400(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 965
    invoke-virtual/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILio/bidmachine/media3/common/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 971
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->notifiedDownstreamFormat:Z

    :cond_2c
    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 3

    .line 912
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public maybeThrowError()V
    .registers 1

    .line 0
    return-void
.end method

.method public readData(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .registers 7

    .line 944
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_a

    return v1

    .line 947
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->access$000(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 948
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->access$000(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 949
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v2

    if-gt v0, v2, :cond_29

    return v1

    .line 954
    :cond_29
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->maybeNotifyDownstreamFormat()V

    .line 955
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->read(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public release()V
    .registers 4

    .line 959
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->access$100(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 960
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->access$100(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public skipData(J)I
    .registers 5

    .line 917
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 920
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getSkipCount(JZ)I

    move-result p1

    .line 921
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->access$000(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 924
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 925
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->access$000(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;

    move-result-object p2

    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result p2

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 926
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v0

    sub-int/2addr p2, v0

    .line 927
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 929
    :cond_35
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->skip(I)V

    if-lez p1, :cond_3f

    .line 931
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->maybeNotifyDownstreamFormat()V

    :cond_3f
    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.source.chunk.ChunkSampleStream.ReleaseCallback (io.bidmachine.media3.exoplayer.source.chunk.ChunkSampleStream$ReleaseCallback)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReleaseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onSampleStreamReleased(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "TT;>;)V"
        }
    .end annotation
.end method
