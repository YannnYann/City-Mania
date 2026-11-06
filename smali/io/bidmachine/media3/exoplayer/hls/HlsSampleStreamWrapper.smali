###### Class io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper (io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;
.implements Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;
.implements Lio/bidmachine/media3/extractor/ExtractorOutput;
.implements Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;,
        Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;,
        Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
        "Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;",
        ">;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;",
        "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;",
        "Lio/bidmachine/media3/extractor/ExtractorOutput;",
        "Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field public static final MAPPABLE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

.field public final callback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

.field public final chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

.field public downstreamTrackFormat:Lio/bidmachine/media3/common/Format;

.field public final drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public drmInitData:Lio/bidmachine/media3/common/DrmInitData;

.field public final drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

.field public emsgUnwrappingTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public enabledTrackGroupCount:I

.field public final handler:Landroid/os/Handler;

.field public haveAudioVideoSampleQueues:Z

.field public final hlsSampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;",
            ">;"
        }
    .end annotation
.end field

.field public lastSeekPositionUs:J

.field public final loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

.field public loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

.field public loadingFinished:Z

.field public final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field public final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final metadataType:I

.field public final muxedAudioFormat:Lio/bidmachine/media3/common/Format;

.field public final nextChunkHolder:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;

.field public final onTracksEndedRunnable:Ljava/lang/Runnable;

.field public optionalTrackGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/media3/common/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final overridingDrmInitData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field public pendingResetPositionUs:J

.field public pendingResetUpstreamFormats:Z

.field public prepared:Z

.field public primarySampleQueueIndex:I

.field public primarySampleQueueType:I

.field public primaryTrackGroupIndex:I

.field public final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field public released:Z

.field public sampleOffsetUs:J

.field public sampleQueueIndicesByType:Landroid/util/SparseIntArray;

.field public sampleQueueIsAudioVideoFlags:[Z

.field public sampleQueueMappingDoneByType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public sampleQueueTrackIds:[I

.field public sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

.field public sampleQueuesBuilt:Z

.field public sampleQueuesEnabledStates:[Z

.field public seenFirstTrackSelection:Z

.field public sourceChunk:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

.field public trackGroupToSampleQueueIndex:[I

.field public trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

.field public final trackType:I

.field public tracksEnded:Z

.field public final uid:Ljava/lang/String;

.field public upstreamTrackFormat:Lio/bidmachine/media3/common/Format;


# direct methods
.method public static synthetic $r8$lambda$DJxH5lBTkJYndAhhwouz8tzEgyc(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->onTracksEnded()V

    return-void
.end method

.method public static synthetic $r8$lambda$oPfReGWs77rVfMsLGdvGT1ShaoI(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method public static synthetic $r8$lambda$uOKrVUOVth0A8BIlXZC2dGnUqSg(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)V
    .registers 2

    .line 553
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->callback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    .line 553
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;->onPlaylistRefreshRequired(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 131
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 132
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;Ljava/util/Map;Lio/bidmachine/media3/exoplayer/upstream/Allocator;JLio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;",
            "Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/upstream/Allocator;",
            "J",
            "Lio/bidmachine/media3/common/Format;",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            "Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;",
            "I)V"
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->uid:Ljava/lang/String;

    .line 232
    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackType:I

    .line 233
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->callback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    .line 234
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    .line 235
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    .line 236
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    .line 237
    iput-object p9, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lio/bidmachine/media3/common/Format;

    .line 238
    iput-object p10, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    .line 239
    iput-object p11, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 240
    iput-object p12, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 241
    iput-object p13, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 242
    iput p14, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->metadataType:I

    .line 243
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 244
    new-instance p1, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;

    const/4 p1, 0x0

    .line 245
    new-array p2, p1, [I

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 246
    new-instance p2, Ljava/util/HashSet;

    sget-object p3, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    .line 247
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    .line 248
    new-array p2, p1, [Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 249
    new-array p2, p1, [Z

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 250
    new-array p1, p1, [Z

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 251
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 252
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 253
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    .line 256
    new-instance p1, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)V

    .line 257
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 259
    new-instance p1, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)V

    .line 260
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    .line 261
    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    .line 262
    iput-wide p7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 263
    iput-wide p7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-void
.end method

.method public static createDiscardingTrackOutput(II)Lio/bidmachine/media3/extractor/DiscardingTrackOutput;
    .registers 4

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    new-instance p0, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p0}, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;-><init>()V

    return-object p0
.end method

.method public static deriveFormat(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;Z)Lio/bidmachine/media3/common/Format;
    .registers 10

    if-nez p0, :cond_3

    return-object p1

    .line 1589
    :cond_3
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 1592
    iget-object v1, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 1595
    iget-object v1, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1596
    invoke-static {v1}, Lio/bidmachine/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    .line 1601
    :cond_1d
    iget-object v1, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1602
    invoke-static {v1, v3}, Lio/bidmachine/media3/common/MimeTypes;->getCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1604
    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1609
    :goto_27
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    .line 1610
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    .line 1611
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    .line 1612
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    .line 1613
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget v5, p0, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    .line 1614
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget v5, p0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    .line 1615
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz p2, :cond_55

    .line 1616
    iget v6, p0, Lio/bidmachine/media3/common/Format;->averageBitrate:I

    goto :goto_56

    :cond_55
    move v6, v5

    :goto_56
    invoke-virtual {v4, v6}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    if-eqz p2, :cond_5f

    .line 1617
    iget p2, p0, Lio/bidmachine/media3/common/Format;->peakBitrate:I

    goto :goto_60

    :cond_5f
    move p2, v5

    :goto_60
    invoke-virtual {v4, p2}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 1618
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7c

    .line 1621
    iget v1, p0, Lio/bidmachine/media3/common/Format;->width:I

    .line 1622
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget v4, p0, Lio/bidmachine/media3/common/Format;->height:I

    .line 1623
    invoke-virtual {v1, v4}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget v4, p0, Lio/bidmachine/media3/common/Format;->frameRate:F

    .line 1624
    invoke-virtual {v1, v4}, Lio/bidmachine/media3/common/Format$Builder;->setFrameRate(F)Lio/bidmachine/media3/common/Format$Builder;

    :cond_7c
    if-eqz v3, :cond_81

    .line 1628
    invoke-virtual {p2, v3}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    .line 1631
    :cond_81
    iget v1, p0, Lio/bidmachine/media3/common/Format;->channelCount:I

    if-eq v1, v5, :cond_8a

    if-ne v0, v2, :cond_8a

    .line 1632
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 1635
    :cond_8a
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    if-eqz p0, :cond_99

    .line 1637
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    if-eqz p1, :cond_96

    .line 1638
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntriesFrom(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Metadata;

    move-result-object p0

    .line 1640
    :cond_96
    invoke-virtual {p2, p0}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    .line 1643
    :cond_99
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public static formatsMatch(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;)Z
    .registers 8

    .line 1651
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1652
    iget-object v1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1653
    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_15

    .line 1655
    invoke-static {v1}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_14

    return v5

    :cond_14
    return v4

    .line 1656
    :cond_15
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v4

    .line 1659
    :cond_1c
    const-string v1, "application/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "application/cea-708"

    .line 1660
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2e

    :cond_2d
    return v5

    .line 1661
    :cond_2e
    :goto_2e
    iget p0, p0, Lio/bidmachine/media3/common/Format;->accessibilityChannel:I

    iget p1, p1, Lio/bidmachine/media3/common/Format;->accessibilityChannel:I

    if-ne p0, p1, :cond_35

    return v5

    :cond_35
    return v4
.end method

.method public static getTrackTypeScore(I)I
    .registers 4

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_d

    const/4 v2, 0x3

    if-eq p0, v0, :cond_c

    if-eq p0, v2, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v1

    :cond_c
    return v2

    :cond_d
    return v0
.end method

.method public static isMediaChunk(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)Z
    .registers 1

    .line 1647
    instance-of p0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    return p0
.end method

.method private isPendingReset()Z
    .registers 5

    .line 1504
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final assertIsPrepared()V
    .registers 2

    .line 1543
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepared:Z

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1544
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bindSampleQueueToSampleStream(I)I
    .registers 5

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 312
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-ne v0, v1, :cond_21

    .line 316
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, -0x3

    return p1

    :cond_20
    return v2

    .line 320
    :cond_21
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_28

    return v2

    :cond_28
    const/4 v1, 0x1

    .line 324
    aput-boolean v1, p1, v0

    return v0
.end method

.method public final buildTracksFromSampleStreams()V
    .registers 16

    .line 1410
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v1

    move v6, v2

    move v4, v3

    :goto_9
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_4a

    .line 1413
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v9, v9, v4

    .line 1414
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v9

    invoke-static {v9}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/media3/common/Format;

    iget-object v9, v9, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1416
    invoke-static {v9}, Lio/bidmachine/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_24

    goto :goto_35

    .line 1418
    :cond_24
    invoke-static {v9}, Lio/bidmachine/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    move v7, v8

    goto :goto_35

    .line 1420
    :cond_2c
    invoke-static {v9}, Lio/bidmachine/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    const/4 v7, 0x3

    goto :goto_35

    :cond_34
    move v7, v1

    .line 1425
    :goto_35
    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v8

    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v9

    if-le v8, v9, :cond_42

    move v6, v4

    move v5, v7

    goto :goto_47

    :cond_42
    if-ne v7, v5, :cond_47

    if-eq v6, v2, :cond_47

    move v6, v2

    :cond_47
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1436
    :cond_4a
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v1

    .line 1437
    iget v4, v1, Lio/bidmachine/media3/common/TrackGroup;->length:I

    .line 1440
    iput v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 1441
    new-array v2, v0, [I

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    move v2, v3

    :goto_59
    if-ge v2, v0, :cond_62

    .line 1443
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v2, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 1447
    :cond_62
    new-array v2, v0, [Lio/bidmachine/media3/common/TrackGroup;

    move v9, v3

    :goto_65
    if-ge v9, v0, :cond_e2

    .line 1449
    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v10

    invoke-static {v10}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/bidmachine/media3/common/Format;

    if-ne v9, v6, :cond_a6

    .line 1451
    new-array v11, v4, [Lio/bidmachine/media3/common/Format;

    move v12, v3

    :goto_7a
    if-ge v12, v4, :cond_9a

    .line 1453
    invoke-virtual {v1, v12}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v13

    if-ne v5, v8, :cond_8a

    .line 1454
    iget-object v14, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lio/bidmachine/media3/common/Format;

    if-eqz v14, :cond_8a

    .line 1455
    invoke-virtual {v13, v14}, Lio/bidmachine/media3/common/Format;->withManifestFormatInfo(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    move-result-object v13

    :cond_8a
    if-ne v4, v8, :cond_91

    .line 1462
    invoke-virtual {v10, v13}, Lio/bidmachine/media3/common/Format;->withManifestFormatInfo(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    move-result-object v13

    goto :goto_95

    .line 1463
    :cond_91
    invoke-static {v13, v10, v8}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->deriveFormat(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;Z)Lio/bidmachine/media3/common/Format;

    move-result-object v13

    :goto_95
    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7a

    .line 1465
    :cond_9a
    new-instance v10, Lio/bidmachine/media3/common/TrackGroup;

    iget-object v12, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->uid:Ljava/lang/String;

    invoke-direct {v10, v12, v11}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    aput-object v10, v2, v9

    .line 1466
    iput v9, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    goto :goto_df

    :cond_a6
    if-ne v5, v7, :cond_b3

    .line 1471
    iget-object v11, v10, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v11}, Lio/bidmachine/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b3

    .line 1472
    iget-object v11, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lio/bidmachine/media3/common/Format;

    goto :goto_b4

    :cond_b3
    const/4 v11, 0x0

    .line 1474
    :goto_b4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->uid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":muxed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v9, v6, :cond_c7

    move v13, v9

    goto :goto_c9

    :cond_c7
    add-int/lit8 v13, v9, -0x1

    :goto_c9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1475
    new-instance v13, Lio/bidmachine/media3/common/TrackGroup;

    .line 1478
    invoke-static {v11, v10, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->deriveFormat(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;Z)Lio/bidmachine/media3/common/Format;

    move-result-object v10

    filled-new-array {v10}, [Lio/bidmachine/media3/common/Format;

    move-result-object v10

    invoke-direct {v13, v12, v10}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    aput-object v13, v2, v9

    :goto_df
    add-int/lit8 v9, v9, 0x1

    goto :goto_65

    .line 1481
    :cond_e2
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->createTrackGroupArrayWithDrmInfo([Lio/bidmachine/media3/common/TrackGroup;)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 1482
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    if-nez v0, :cond_ed

    move v3, v8

    :cond_ed
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1483
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    return-void
.end method

.method public final canDiscardUpstreamMediaChunksFromIndex(I)Z
    .registers 6

    move v0, p1

    .line 1289
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1a

    .line 1290
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->shouldSpliceIn:Z

    if-eqz v1, :cond_17

    return v2

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1297
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    move v0, v2

    .line 1298
    :goto_23
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_3a

    .line 1299
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    .line 1300
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v3

    if-le v3, v1, :cond_37

    return v2

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_3a
    const/4 p1, 0x1

    return p1
.end method

.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 13

    .line 764
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a2

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_a2

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_a2

    .line 770
    :cond_17
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 771
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 772
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 773
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v5, v4

    move v6, v1

    :goto_25
    if-ge v6, v5, :cond_31

    aget-object v7, v4, v6

    .line 774
    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    invoke-virtual {v7, v8, v9}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->setStartTimeUs(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_31
    :goto_31
    move-object v8, v0

    move-wide v6, v2

    goto :goto_4c

    .line 777
    :cond_34
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 778
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object v2

    .line 780
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 781
    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    goto :goto_31

    .line 782
    :cond_43
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iget-wide v5, v2, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_31

    .line 784
    :goto_4c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    .line 785
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepared:Z

    const/4 v2, 0x1

    if-nez v0, :cond_61

    .line 789
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_61

    :cond_5f
    move v9, v1

    goto :goto_62

    :cond_61
    :goto_61
    move v9, v2

    :goto_62
    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;

    move-object v5, p1

    .line 785
    invoke-virtual/range {v4 .. v10}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getNextChunk(Lio/bidmachine/media3/exoplayer/LoadingInfo;JLjava/util/List;ZLio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;)V

    .line 791
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;

    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 792
    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    .line 793
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    if-eqz v0, :cond_7c

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 796
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 797
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    return v2

    :cond_7c
    if-nez v3, :cond_86

    if-eqz p1, :cond_85

    .line 803
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->callback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;->onPlaylistRefreshRequired(Landroid/net/Uri;)V

    :cond_85
    return v1

    .line 808
    :cond_86
    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isMediaChunk(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 809
    move-object p1, v3

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->initMediaChunkLoad(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)V

    .line 811
    :cond_92
    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    .line 812
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v1, v3, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    .line 813
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v0

    .line 812
    invoke-virtual {p1, v3, p0, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->startLoading(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;I)J

    return v2

    :cond_a2
    :goto_a2
    return v1
.end method

.method public continuePreparing()V
    .registers 4

    .line 267
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v0, :cond_16

    .line 268
    new-instance v0, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->build()Lio/bidmachine/media3/exoplayer/LoadingInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    :cond_16
    return-void
.end method

.method public final createSampleQueue(II)Lio/bidmachine/media3/exoplayer/source/SampleQueue;
    .registers 11

    .line 1161
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_b

    const/4 v2, 0x2

    if-ne p2, v2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    .line 1164
    :cond_b
    :goto_b
    new-instance v2, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;-><init>(Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$1;)V

    .line 1166
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->setStartTimeUs(J)V

    if-eqz v1, :cond_25

    .line 1168
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)V

    .line 1170
    :cond_25
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    invoke-virtual {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->setSampleOffsetUs(J)V

    .line 1171
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sourceChunk:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    if-eqz v3, :cond_31

    .line 1172
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setSourceChunk(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)V

    .line 1174
    :cond_31
    invoke-virtual {v2, p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->setUpstreamFormatChangeListener(Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 1175
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 1176
    aput p1, v3, v0

    .line 1177
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    invoke-static {p1, v2}, Lio/bidmachine/media3/common/util/Util;->nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1178
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 1179
    aput-boolean v1, p1, v0

    .line 1180
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    .line 1181
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1182
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1183
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result p1

    iget v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v1

    if-le p1, v1, :cond_77

    .line 1184
    iput v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    .line 1185
    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    .line 1187
    :cond_77
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    return-object v2
.end method

.method public final createTrackGroupArrayWithDrmInfo([Lio/bidmachine/media3/common/TrackGroup;)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 1487
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_2f

    .line 1488
    aget-object v2, p1, v1

    .line 1489
    iget v3, v2, Lio/bidmachine/media3/common/TrackGroup;->length:I

    new-array v3, v3, [Lio/bidmachine/media3/common/Format;

    move v4, v0

    .line 1490
    :goto_c
    iget v5, v2, Lio/bidmachine/media3/common/TrackGroup;->length:I

    if-ge v4, v5, :cond_23

    .line 1491
    invoke-virtual {v2, v4}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v5

    .line 1492
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v6, v5}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->getCryptoType(Lio/bidmachine/media3/common/Format;)I

    move-result v6

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/Format;->copyWithCryptoType(I)Lio/bidmachine/media3/common/Format;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1494
    :cond_23
    new-instance v4, Lio/bidmachine/media3/common/TrackGroup;

    iget-object v2, v2, Lio/bidmachine/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1496
    :cond_2f
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;-><init>([Lio/bidmachine/media3/common/TrackGroup;)V

    return-object v0
.end method

.method public discardBuffer(JZ)V
    .registers 8

    .line 480
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1f

    .line 483
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1f

    .line 485
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final discardUpstream(I)V
    .registers 9

    .line 1068
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1071
    :goto_b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-ge p1, v0, :cond_1e

    .line 1072
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->canDiscardUpstreamMediaChunksFromIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1f

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_1e
    move p1, v1

    :goto_1f
    if-ne p1, v1, :cond_22

    return-void

    .line 1081
    :cond_22
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object v0

    iget-wide v5, v0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    .line 1082
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->discardUpstreamMediaChunksFromIndex(I)Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object p1

    .line 1083
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1084
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_44

    .line 1086
    :cond_39
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->invalidateExtractor()V

    :goto_44
    const/4 v0, 0x0

    .line 1088
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 1090
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    return-void
.end method

.method public final discardUpstreamMediaChunksFromIndex(I)Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;
    .registers 5

    .line 1311
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    .line 1312
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lio/bidmachine/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    const/4 p1, 0x0

    .line 1313
    :goto_12
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v1

    if-ge p1, v1, :cond_25

    .line 1314
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    .line 1315
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardUpstreamSamples(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_25
    return-object v0
.end method

.method public endTracks()V
    .registers 3

    const/4 v0, 0x1

    .line 1193
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    .line 1194
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final finishedReadingChunk(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)Z
    .registers 9

    .line 1278
    iget p1, p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->uid:I

    .line 1279
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_20

    .line 1281
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->peekSourceId()J

    move-result-wide v3

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 5

    .line 630
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 8

    .line 730
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 732
    :cond_7
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 733
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 735
    :cond_10
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 736
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object v2

    .line 738
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_36

    .line 740
    :cond_1d
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_35

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    if-eqz v2, :cond_3e

    .line 742
    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 744
    :cond_3e
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v2, :cond_55

    .line 745
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_46
    if-ge v4, v3, :cond_55

    aget-object v5, v2, v4

    .line 746
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_55
    return-wide v0
.end method

.method public final getLastMediaChunk()Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;
    .registers 3

    .line 1500
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    return-object v0
.end method

.method public final getMappedTrackOutput(II)Lio/bidmachine/media3/extractor/TrackOutput;
    .registers 6

    .line 1146
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1147
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_18

    const/4 p1, 0x0

    return-object p1

    .line 1152
    :cond_18
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1153
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aput p1, v1, v0

    .line 1155
    :cond_28
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_33

    .line 1156
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object p1, p1, v0

    return-object p1

    .line 1157
    :cond_33
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->createDiscardingTrackOutput(II)Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    move-result-object p1

    return-object p1
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 755
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 756
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    .line 758
    :cond_9
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_10

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object v0

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    return-wide v0
.end method

.method public getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 303
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public final initMediaChunkLoad(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)V
    .registers 8

    .line 1050
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sourceChunk:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    .line 1051
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Lio/bidmachine/media3/common/Format;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1052
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 1053
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 1055
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_2d

    aget-object v5, v1, v4

    .line 1056
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getWriteIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 1058
    :cond_2d
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->init(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;Lcom/google/common/collect/ImmutableList;)V

    .line 1059
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    :goto_37
    if-ge v3, v1, :cond_48

    aget-object v2, v0, v3

    .line 1060
    invoke-virtual {v2, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setSourceChunk(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)V

    .line 1061
    iget-boolean v4, p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->shouldSpliceIn:Z

    if-eqz v4, :cond_45

    .line 1062
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->splice()V

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_48
    return-void
.end method

.method public isLoading()Z
    .registers 2

    .line 819
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isReady(I)Z
    .registers 3

    .line 636
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isReady(Z)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public isVideoSampleStream()Z
    .registers 3

    .line 619
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final mapSampleQueuesToMatchTrackGroups()V
    .registers 7

    .line 1356
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    .line 1357
    new-array v1, v0, [I

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    const/4 v2, -0x1

    .line 1358
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_3d

    move v3, v1

    .line 1360
    :goto_11
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v5, v4

    if-ge v3, v5, :cond_3a

    .line 1361
    aget-object v4, v4, v3

    .line 1362
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/common/Format;

    .line 1363
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v5, v2}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v5

    invoke-static {v4, v5}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->formatsMatch(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1364
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aput v3, v4, v2

    goto :goto_3a

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1369
    :cond_3d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;

    .line 1370
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->bindSampleQueue()V

    goto :goto_43

    :cond_53
    return-void
.end method

.method public final maybeFinishPrepare()V
    .registers 5

    .line 1333
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->released:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-nez v0, :cond_d

    goto :goto_32

    .line 1336
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    .line 1337
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v3

    if-nez v3, :cond_1c

    goto :goto_32

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1341
    :cond_1f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    if-eqz v0, :cond_27

    .line 1344
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mapSampleQueuesToMatchTrackGroups()V

    return-void

    .line 1347
    :cond_27
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->buildTracksFromSampleStreams()V

    .line 1348
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->setIsPrepared()V

    .line 1349
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->callback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    :cond_32
    :goto_32
    return-void
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    .line 646
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->maybeThrowError()V

    return-void
.end method

.method public maybeThrowError(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    .line 641
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->maybeThrowError()V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    .line 295
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz v0, :cond_c

    goto :goto_14

    .line 296
    :cond_c
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_14
    :goto_14
    return-void
.end method

.method public onLoadCanceled(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJZ)V
    .registers 20

    const/4 v0, 0x0

    .line 913
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    .line 914
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 918
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 919
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 922
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 923
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    move-object v2, v1

    .line 924
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v5, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v6, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v7, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v8, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    iget-wide v10, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v1 .. v11}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_4e

    .line 934
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result p1

    if-nez p1, :cond_42

    iget p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-nez p1, :cond_45

    .line 935
    :cond_42
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    .line 937
    :cond_45
    iget p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-lez p1, :cond_4e

    .line 938
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->callback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    :cond_4e
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .registers 7

    .line 96
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJ)V
    .registers 19

    const/4 v0, 0x0

    .line 882
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    .line 883
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->onChunkLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)V

    .line 884
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 888
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 889
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 892
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 893
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    move-object v2, v1

    .line 894
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v5, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v6, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v7, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v8, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    iget-wide v10, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v1 .. v11}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 903
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez p1, :cond_52

    .line 904
    new-instance p1, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->build()Lio/bidmachine/media3/exoplayer/LoadingInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    return-void

    .line 906
    :cond_52
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->callback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .registers 6

    .line 96
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->onLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p6

    .line 950
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isMediaChunk(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 951
    move-object v3, v1

    check-cast v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    .line 952
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isPublished()Z

    move-result v3

    if-nez v3, :cond_29

    instance-of v3, v13, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_29

    .line 954
    move-object v3, v13

    check-cast v3, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_26

    const/16 v4, 0x194

    if-ne v3, v4, :cond_29

    .line 959
    :cond_26
    sget-object v1, Lio/bidmachine/media3/exoplayer/upstream/Loader;->RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object v1

    .line 962
    :cond_29
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v24

    .line 964
    new-instance v14, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 968
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v18

    .line 969
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v19

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    move-wide v15, v3

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v25}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 973
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget v4, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v5, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v7, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    .line 980
    invoke-static {v9, v10}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v11, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    .line 981
    invoke-static {v11, v12}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v11

    invoke-direct/range {v3 .. v12}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 982
    new-instance v4, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v5, p7

    invoke-direct {v4, v14, v3, v13, v5}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 986
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    .line 988
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getTrackSelection()Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    move-result-object v5

    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectionUtil;->createFallbackOptions(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v5

    .line 987
    invoke-interface {v3, v5, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_89

    .line 989
    iget v6, v3, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_89

    .line 991
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    iget-wide v7, v3, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    .line 992
    invoke-virtual {v6, v1, v7, v8}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->maybeExcludeTrack(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;J)Z

    move-result v3

    move v15, v3

    goto :goto_8a

    :cond_89
    move v15, v5

    :goto_8a
    if-eqz v15, :cond_c5

    if-eqz v2, :cond_c0

    const-wide/16 v2, 0x0

    cmp-long v2, v24, v2

    if-nez v2, :cond_c0

    .line 997
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    if-ne v2, v1, :cond_a5

    move v5, v4

    .line 998
    :cond_a5
    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 999
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 1000
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_c0

    .line 1002
    :cond_b5
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->invalidateExtractor()V

    .line 1005
    :cond_c0
    :goto_c0
    sget-object v2, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    :goto_c2
    move-object/from16 v16, v2

    goto :goto_dc

    .line 1007
    :cond_c5
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v2, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v6

    if-eqz v4, :cond_d9

    .line 1010
    invoke-static {v5, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->createRetryAction(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v2

    goto :goto_c2

    .line 1011
    :cond_d9
    sget-object v2, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    goto :goto_c2

    .line 1014
    :goto_dc
    invoke-virtual/range {v16 .. v16}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v17

    move-object v3, v14

    xor-int/lit8 v14, v17, 0x1

    .line 1015
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v4, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v5, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v7, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    iget-wide v11, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    invoke-virtual/range {v2 .. v14}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v17, :cond_102

    const/4 v2, 0x0

    .line 1027
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    .line 1028
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_102
    if-eqz v15, :cond_120

    .line 1032
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v1, :cond_11b

    .line 1033
    new-instance v1, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 1034
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->build()Lio/bidmachine/media3/exoplayer/LoadingInfo;

    move-result-object v1

    .line 1033
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    return-object v16

    .line 1036
    :cond_11b
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->callback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    :cond_120
    return-object v16
.end method

.method public bridge synthetic onLoadError(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 8

    .line 96
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p7}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->onLoadError(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadStarted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJI)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p6, :cond_13

    .line 859
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;J)V

    move-object v5, v2

    goto :goto_2d

    .line 860
    :cond_13
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 863
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 864
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 867
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v5, v3

    .line 868
    :goto_2d
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v6, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->type:I

    iget v7, v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackType:I

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

    .line 96
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->onLoadStarted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;JJI)V

    return-void
.end method

.method public onLoaderReleased()V
    .registers 5

    .line 578
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 579
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public onNewExtractor()V
    .registers 2

    .line 1213
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .registers 8

    .line 596
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->obtainsChunksForPlaylist(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p3, :cond_2b

    .line 603
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    .line 605
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getTrackSelection()Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectionUtil;->createFallbackOptions(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v0

    .line 604
    invoke-interface {p3, v0, p2}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object p2

    if-eqz p2, :cond_2b

    .line 606
    iget p3, p2, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2b

    .line 608
    iget-wide p2, p2, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    goto :goto_2c

    :cond_2b
    move-wide p2, v2

    .line 613
    :goto_2c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->onPlaylistError(Landroid/net/Uri;J)Z

    move-result p1

    if-eqz p1, :cond_39

    cmp-long p1, p2, v2

    if-eqz p1, :cond_39

    return v1

    :cond_39
    const/4 p1, 0x0

    return p1
.end method

.method public onPlaylistUpdated()V
    .registers 4

    .line 544
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3f

    .line 547
    :cond_9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    .line 549
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getChunkPublicationState(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 551
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->publish()V

    return-void

    :cond_1e
    if-nez v1, :cond_2b

    .line 553
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    new-instance v2, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2b
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3f

    .line 554
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 556
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 557
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->cancelLoading()V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final onTracksEnded()V
    .registers 2

    const/4 v0, 0x1

    .line 1328
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 1329
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method public onUpstreamFormatChanged(Lio/bidmachine/media3/common/Format;)V
    .registers 3

    .line 1206
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public varargs prepareWithMultivariantPlaylistInfo([Lio/bidmachine/media3/common/TrackGroup;I[I)V
    .registers 8

    .line 283
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->createTrackGroupArrayWithDrmInfo([Lio/bidmachine/media3/common/TrackGroup;)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 284
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    .line 285
    array-length p1, p3

    const/4 v0, 0x0

    :goto_f
    if-ge v0, p1, :cond_21

    aget v1, p3, v0

    .line 286
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v3, v1}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 288
    :cond_21
    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 289
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->callback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->setIsPrepared()V

    return-void
.end method

.method public readData(ILio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .registers 15

    .line 654
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_8

    return v1

    .line 659
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_53

    move v0, v2

    .line 661
    :goto_12
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2d

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 662
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->finishedReadingChunk(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)Z

    move-result v3

    if-eqz v3, :cond_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 665
    :cond_2d
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-static {v3, v2, v0}, Lio/bidmachine/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    .line 666
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    .line 667
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    .line 668
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v5, v3}, Lio/bidmachine/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 669
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackType:I

    iget v6, v0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v8, v0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    invoke-virtual/range {v3 .. v9}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILio/bidmachine/media3/common/Format;ILjava/lang/Object;J)V

    .line 676
    :cond_51
    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lio/bidmachine/media3/common/Format;

    .line 679
    :cond_53
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isPublished()Z

    move-result v0

    if-nez v0, :cond_6a

    return v1

    .line 684
    :cond_6a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 685
    invoke-virtual {v0, p2, p3, p4, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->read(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;IZ)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_c7

    .line 687
    iget-object p4, p2, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {p4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/bidmachine/media3/common/Format;

    .line 688
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    if-ne p1, v0, :cond_c5

    .line 690
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->peekSourceId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p1

    .line 692
    :goto_8f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a6

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->uid:I

    if-eq v0, p1, :cond_a6

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 696
    :cond_a6
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_b9

    .line 697
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    goto :goto_c1

    .line 698
    :cond_b9
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Format;

    .line 699
    :goto_c1
    invoke-virtual {p4, p1}, Lio/bidmachine/media3/common/Format;->withManifestFormatInfo(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    move-result-object p4

    .line 701
    :cond_c5
    iput-object p4, p2, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    :cond_c7
    return p3
.end method

.method public reevaluateBuffer(J)V
    .registers 7

    .line 824
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6a

    .line 828
    :cond_f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 829
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingChunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->shouldCancelLoad(JLio/bidmachine/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 831
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->cancelLoading()V

    return-void

    .line 836
    :cond_2e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_34
    if-lez v0, :cond_4c

    .line 837
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    .line 838
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getChunkPublicationState(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4c

    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    .line 842
    :cond_4c
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 843
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->discardUpstream(I)V

    .line 846
    :cond_57
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result p1

    .line 847
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_6a

    .line 848
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->discardUpstream(I)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public release()V
    .registers 5

    .line 562
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz v0, :cond_12

    .line 565
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 566
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->preRelease()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 569
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->reset()V

    .line 570
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0, p0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->release(Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    .line 571
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 572
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->released:Z

    .line 573
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final resetSampleQueues()V
    .registers 7

    .line 1321
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_11

    aget-object v4, v0, v3

    .line 1322
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    invoke-virtual {v4, v5}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->reset(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1324
    :cond_11
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    return-void
.end method

.method public final seekInsideBufferUs(JLio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)Z
    .registers 9

    .line 1516
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_2a

    .line 1518
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v3, v3, v2

    if-eqz p3, :cond_16

    .line 1521
    invoke-virtual {p3, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->seekTo(I)Z

    move-result v3

    goto :goto_1a

    .line 1523
    :cond_16
    invoke-virtual {v3, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result v3

    :goto_1a
    if-nez v3, :cond_27

    .line 1529
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_26

    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    if-nez v3, :cond_27

    :cond_26
    return v1

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2a
    const/4 p1, 0x1

    return p1
.end method

.method public seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 2

    .line 0
    return-void
.end method

.method public seekToUs(JZ)Z
    .registers 10

    .line 498
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 499
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 501
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return v1

    .line 507
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->hasIndependentSegments()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    move v0, v2

    .line 508
    :goto_16
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 509
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    .line 510
    iget-wide v4, v3, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_2d

    goto :goto_31

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_30
    const/4 v3, 0x0

    .line 519
    :goto_31
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_3e

    if-nez p3, :cond_3e

    invoke-virtual {p0, p1, p2, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->seekInsideBufferUs(JLio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)Z

    move-result p3

    if-eqz p3, :cond_3e

    return v2

    .line 524
    :cond_3e
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 525
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 526
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 527
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 528
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz p1, :cond_60

    .line 530
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length p2, p1

    :goto_56
    if-ge v2, p2, :cond_60

    aget-object p3, p1, v2

    .line 531
    invoke-virtual {p3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 534
    :cond_60
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->cancelLoading()V

    goto :goto_6e

    .line 536
    :cond_66
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->clearFatalError()V

    .line 537
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    :goto_6e
    return v1
.end method

.method public selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJZ)Z
    .registers 21

    move-object/from16 v0, p3

    move-wide/from16 v2, p5

    .line 360
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 361
    iget v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    const/4 v10, 0x0

    move v4, v10

    .line 363
    :goto_b
    array-length v5, p1

    const/4 v6, 0x0

    const/4 v11, 0x1

    if-ge v4, v5, :cond_2b

    .line 364
    aget-object v5, v0, v4

    check-cast v5, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;

    if-eqz v5, :cond_28

    .line 365
    aget-object v7, p1, v4

    if-eqz v7, :cond_1e

    aget-boolean v7, p2, v4

    if-nez v7, :cond_28

    .line 366
    :cond_1e
    iget v7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    sub-int/2addr v7, v11

    iput v7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 367
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->unbindSampleQueue()V

    .line 368
    aput-object v6, v0, v4

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_2b
    if-nez p7, :cond_3d

    .line 374
    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-eqz v4, :cond_34

    if-nez v1, :cond_3b

    goto :goto_3d

    :cond_34
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3b

    goto :goto_3d

    :cond_3b
    move v1, v10

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v1, v11

    .line 381
    :goto_3e
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getTrackSelection()Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    move-result-object v4

    move v12, v1

    move-object v5, v4

    move v1, v10

    .line 384
    :goto_47
    array-length v7, p1

    if-ge v1, v7, :cond_99

    .line 385
    aget-object v7, p1, v1

    if-nez v7, :cond_4f

    goto :goto_96

    .line 389
    :cond_4f
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-interface {v7}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->indexOf(Lio/bidmachine/media3/common/TrackGroup;)I

    move-result v8

    .line 390
    iget v9, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    if-ne v8, v9, :cond_63

    .line 392
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v5, v7}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->setTrackSelection(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)V

    move-object v5, v7

    .line 394
    :cond_63
    aget-object v7, v0, v1

    if-nez v7, :cond_96

    .line 395
    iget v7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    add-int/2addr v7, v11

    iput v7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 396
    new-instance v7, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;

    invoke-direct {v7, p0, v8}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;I)V

    aput-object v7, v0, v1

    .line 397
    aput-boolean v11, p4, v1

    .line 398
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-eqz v9, :cond_96

    .line 399
    invoke-virtual {v7}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;->bindSampleQueue()V

    if-nez v12, :cond_96

    .line 402
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget v8, v9, v8

    aget-object v7, v7, v8

    .line 407
    invoke-virtual {v7}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v8

    if-eqz v8, :cond_94

    .line 408
    invoke-virtual {v7, v2, v3, v11}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result v7

    if-nez v7, :cond_94

    move v7, v11

    goto :goto_95

    :cond_94
    move v7, v10

    :goto_95
    move v12, v7

    :cond_96
    :goto_96
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 414
    :cond_99
    iget p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-nez p1, :cond_ce

    .line 415
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->reset()V

    .line 416
    iput-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lio/bidmachine/media3/common/Format;

    .line 417
    iput-boolean v11, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    .line 418
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 419
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 420
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz p1, :cond_c4

    .line 422
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, p1

    :goto_ba
    if-ge v10, v1, :cond_c4

    aget-object v2, p1, v10

    .line 423
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_ba

    .line 426
    :cond_c4
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->cancelLoading()V

    goto :goto_127

    .line 428
    :cond_ca
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    goto :goto_127

    .line 431
    :cond_ce
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_114

    .line 432
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_114

    .line 436
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-nez p1, :cond_10f

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-gez p1, :cond_e7

    neg-long v6, v2

    .line 438
    :cond_e7
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object p1

    .line 439
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    .line 440
    invoke-virtual {v1, p1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->createMediaChunkIterators(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;J)[Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;

    move-result-object v9

    move-object v1, v5

    move-wide v4, v6

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 441
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    invoke-interface/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;)V

    .line 447
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v4

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v4, p1}, Lio/bidmachine/media3/common/TrackGroup;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result p1

    .line 448
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v1

    if-eq v1, p1, :cond_114

    .line 460
    :cond_10f
    iput-boolean v11, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    move p1, v11

    move v12, p1

    goto :goto_116

    :cond_114
    move/from16 p1, p7

    :goto_116
    if-eqz v12, :cond_127

    .line 464
    invoke-virtual {p0, v2, v3, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 466
    :goto_11b
    array-length p1, v0

    if-ge v10, p1, :cond_127

    .line 467
    aget-object p1, v0, v10

    if-eqz p1, :cond_124

    .line 468
    aput-boolean v11, p4, v10

    :cond_124
    add-int/lit8 v10, v10, 0x1

    goto :goto_11b

    .line 474
    :cond_127
    :goto_127
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->updateSampleStreams([Lio/bidmachine/media3/exoplayer/source/SampleStream;)V

    .line 475
    iput-boolean v11, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    return v12
.end method

.method public setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)V
    .registers 5

    .line 1256
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1257
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    const/4 v0, 0x0

    .line 1258
    :goto_b
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 1259
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1b

    .line 1260
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1e
    return-void
.end method

.method public final setIsPrepared()V
    .registers 2

    const/4 v0, 0x1

    .line 1538
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepared:Z

    return-void
.end method

.method public setIsPrimaryTimestampSource(Z)V
    .registers 3

    .line 584
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->chunkSource:Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->setIsPrimaryTimestampSource(Z)V

    return-void
.end method

.method public setSampleOffsetUs(J)V
    .registers 7

    .line 1223
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_16

    .line 1224
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    .line 1225
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 1226
    invoke-virtual {v3, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->setSampleOffsetUs(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method public skipData(IJ)I
    .registers 6

    .line 707
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 711
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v0, v0, p1

    .line 712
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    invoke-virtual {v0, p2, p3, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getSkipCount(JZ)I

    move-result p2

    .line 715
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    if-eqz p3, :cond_30

    .line 716
    invoke-virtual {p3}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isPublished()Z

    move-result v1

    if-nez v1, :cond_30

    .line 717
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v1

    .line 718
    invoke-virtual {p3, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result p1

    sub-int/2addr p1, v1

    .line 719
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 722
    :cond_30
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->skip(I)V

    return p2
.end method

.method public track(II)Lio/bidmachine/media3/extractor/TrackOutput;
    .registers 6

    .line 1099
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1101
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getMappedTrackOutput(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    goto :goto_24

    :cond_11
    const/4 v0, 0x0

    .line 1103
    :goto_12
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueues:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_23

    .line 1104
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_20

    .line 1105
    aget-object v0, v1, v0

    goto :goto_24

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-nez v0, :cond_33

    .line 1112
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_2f

    .line 1113
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->createDiscardingTrackOutput(II)Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    move-result-object p1

    return-object p1

    .line 1116
    :cond_2f
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->createSampleQueue(II)Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    move-result-object v0

    :cond_33
    const/4 p1, 0x5

    if-ne p2, p1, :cond_46

    .line 1121
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    if-nez p1, :cond_43

    .line 1122
    new-instance p1, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;

    iget p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->metadataType:I

    invoke-direct {p1, v0, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;-><init>(Lio/bidmachine/media3/extractor/TrackOutput;I)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 1124
    :cond_43
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    return-object p1

    :cond_46
    return-object v0
.end method

.method public unbindSampleQueue(I)V
    .registers 4

    .line 329
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    .line 330
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    aget p1, v0, p1

    .line 332
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 333
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    return-void
.end method

.method public final updateSampleStreams([Lio/bidmachine/media3/exoplayer/source/SampleStream;)V
    .registers 6

    .line 1269
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1270
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    if-eqz v2, :cond_14

    .line 1272
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStream;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper.AnonymousClass1 (io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$1;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper.Callback (io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$Callback)
.class public interface abstract Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback<",
        "Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onPlaylistRefreshRequired(Landroid/net/Uri;)V
.end method

.method public abstract onPrepared()V
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper.EmsgUnwrappingTrackOutput (io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput)
.class public Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmsgUnwrappingTrackOutput"
.end annotation


# static fields
.field public static final EMSG_FORMAT:Lio/bidmachine/media3/common/Format;

.field public static final ID3_FORMAT:Lio/bidmachine/media3/common/Format;


# instance fields
.field public buffer:[B

.field public bufferPosition:I

.field public final delegate:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final delegateFormat:Lio/bidmachine/media3/common/Format;

.field public final emsgDecoder:Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;

.field public format:Lio/bidmachine/media3/common/Format;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1814
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/id3"

    .line 1815
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->ID3_FORMAT:Lio/bidmachine/media3/common/Format;

    .line 1816
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    .line 1817
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->EMSG_FORMAT:Lio/bidmachine/media3/common/Format;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/TrackOutput;I)V
    .registers 5

    .line 1828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1829
    new-instance v0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->emsgDecoder:Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;

    .line 1830
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2e

    const/4 p1, 0x3

    if-ne p2, p1, :cond_17

    .line 1836
    sget-object p1, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->EMSG_FORMAT:Lio/bidmachine/media3/common/Format;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lio/bidmachine/media3/common/Format;

    goto :goto_32

    .line 1839
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown metadataType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1833
    :cond_2e
    sget-object p1, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->ID3_FORMAT:Lio/bidmachine/media3/common/Format;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lio/bidmachine/media3/common/Format;

    :goto_32
    const/4 p1, 0x0

    .line 1842
    new-array p2, p1, [B

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    .line 1843
    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    return-void
.end method


# virtual methods
.method public final emsgContainsExpectedWrappedFormat(Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)Z
    .registers 3

    .line 1914
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->getWrappedMetadataFormat()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 1915
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lio/bidmachine/media3/common/Format;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1916
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final ensureBufferCapacity(I)V
    .registers 4

    .line 1920
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    array-length v1, v0

    if-ge v1, p1, :cond_e

    .line 1921
    div-int/lit8 v1, p1, 0x2

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    :cond_e
    return-void
.end method

.method public format(Lio/bidmachine/media3/common/Format;)V
    .registers 3

    .line 1848
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->format:Lio/bidmachine/media3/common/Format;

    .line 1849
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lio/bidmachine/media3/common/Format;

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

.method public final getSampleAndTrimBuffer(II)Lio/bidmachine/media3/common/util/ParsableByteArray;
    .registers 6

    .line 1934
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    sub-int/2addr v0, p2

    sub-int p1, v0, p1

    .line 1937
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    invoke-static {v1, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 1938
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 1940
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1941
    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    return-object v1
.end method

.method public sampleData(Lio/bidmachine/media3/common/DataReader;IZI)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1856
    iget p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    add-int/2addr p4, p2

    invoke-virtual {p0, p4}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->ensureBufferCapacity(I)V

    .line 1857
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    invoke-interface {p1, p4, v0, p2}, Lio/bidmachine/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1a

    if-eqz p3, :cond_14

    return p2

    .line 1862
    :cond_14
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 1865
    :cond_1a
    iget p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    return p1
.end method

.method public sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V
    .registers 5

    .line 1871
    iget p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    add-int/2addr p3, p2

    invoke-virtual {p0, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->ensureBufferCapacity(I)V

    .line 1872
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    invoke-virtual {p1, p3, v0, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1873
    iget p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    add-int/2addr p1, p2

    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    return-void
.end method

.method public sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
    .registers 14

    .line 1883
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    invoke-virtual {p0, p4, p5}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->getSampleAndTrimBuffer(II)Lio/bidmachine/media3/common/util/ParsableByteArray;

    move-result-object p4

    .line 1886
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->format:Lio/bidmachine/media3/common/Format;

    iget-object p5, p5, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lio/bidmachine/media3/common/Format;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_18

    goto :goto_58

    .line 1889
    :cond_18
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->format:Lio/bidmachine/media3/common/Format;

    iget-object p5, p5, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/x-emsg"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const-string v0, "HlsSampleStreamWrapper"

    if-eqz p5, :cond_6b

    .line 1891
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->emsgDecoder:Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;

    invoke-virtual {p5, p4}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;->decode(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;

    move-result-object p4

    .line 1892
    invoke-virtual {p0, p4}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->emsgContainsExpectedWrappedFormat(Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)Z

    move-result p5

    if-nez p5, :cond_48

    .line 1893
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lio/bidmachine/media3/common/Format;

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1897
    invoke-virtual {p4}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->getWrappedMetadataFormat()Lio/bidmachine/media3/common/Format;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1895
    const-string p2, "Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1893
    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1900
    :cond_48
    new-instance p5, Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 1901
    invoke-virtual {p4}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->getWrappedMetadataBytes()[B

    move-result-object p4

    invoke-static {p4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    invoke-direct {p5, p4}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    move-object p4, p5

    .line 1907
    :goto_58
    invoke-virtual {p4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    .line 1909
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {p5, p4, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 1910
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegate:Lio/bidmachine/media3/extractor/TrackOutput;

    const/4 v5, 0x0

    move-wide v1, p1

    move v3, p3

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    return-void

    .line 1903
    :cond_6b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring sample for unsupported format: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->format:Lio/bidmachine/media3/common/Format;

    iget-object p2, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper.HlsSampleQueue (io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$HlsSampleQueue)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;
.super Lio/bidmachine/media3/exoplayer/source/SampleQueue;
.source "HlsSampleStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HlsSampleQueue"
.end annotation


# instance fields
.field public drmInitData:Lio/bidmachine/media3/common/DrmInitData;

.field public final overridingDrmInitData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/Allocator;",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 1712
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;-><init>(Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 1713
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->overridingDrmInitData:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$1;)V
    .registers 6

    .line 1682
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;-><init>(Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getAdjustedMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Metadata;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1764
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    const/4 v4, -0x1

    if-ge v3, v1, :cond_25

    .line 1767
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v5

    .line 1768
    instance-of v6, v5, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;

    if-eqz v6, :cond_22

    .line 1769
    check-cast v5, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;

    .line 1770
    const-string v6, "com.apple.streaming.transportStreamTimestamp"

    iget-object v5, v5, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_26

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_25
    move v3, v4

    :goto_26
    if-ne v3, v4, :cond_29

    return-object p1

    :cond_29
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2d

    return-object v0

    :cond_2d
    add-int/lit8 v0, v1, -0x1

    .line 1782
    new-array v0, v0, [Lio/bidmachine/media3/common/Metadata$Entry;

    :goto_31
    if-ge v2, v1, :cond_44

    if-eq v2, v3, :cond_41

    if-ge v2, v3, :cond_39

    move v4, v2

    goto :goto_3b

    :cond_39
    add-int/lit8 v4, v2, -0x1

    .line 1786
    :goto_3b
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v5

    aput-object v5, v0, v4

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1789
    :cond_44
    new-instance p1, Lio/bidmachine/media3/common/Metadata;

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    return-object p1
.end method

.method public getAdjustedUpstreamFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;
    .registers 5

    .line 1740
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    :goto_7
    if-eqz v0, :cond_16

    .line 1743
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->overridingDrmInitData:Ljava/util/Map;

    iget-object v2, v0, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/DrmInitData;

    if-eqz v1, :cond_16

    move-object v0, v1

    .line 1748
    :cond_16
    iget-object v1, p1, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->getAdjustedMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v1

    .line 1749
    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    if-ne v0, v2, :cond_24

    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    if-eq v1, v2, :cond_34

    .line 1750
    :cond_24
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 1752
    :cond_34
    invoke-super {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getAdjustedUpstreamFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

.method public sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
    .registers 7

    .line 1807
    invoke-super/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)V
    .registers 2

    .line 1732
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    .line 1733
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->invalidateUpstreamFormatAdjustment()V

    return-void
.end method

.method public setSourceChunk(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)V
    .registers 4

    .line 1717
    iget p1, p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->uid:I

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sourceId(J)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->$r8$lambda$uOKrVUOVth0A8BIlXZC2dGnUqSg(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->$r8$lambda$oPfReGWs77rVfMsLGdvGT1ShaoI(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.hls.HlsSampleStreamWrapper$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->$r8$lambda$DJxH5lBTkJYndAhhwouz8tzEgyc(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)V

    return-void
.end method
