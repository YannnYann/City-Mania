###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod (io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod)
.class public final Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
.implements Lio/bidmachine/media3/extractor/ExtractorOutput;
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;
.implements Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;,
        Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;,
        Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;,
        Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;,
        Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/source/MediaPeriod;",
        "Lio/bidmachine/media3/extractor/ExtractorOutput;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
        "Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;",
        ">;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;",
        "Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field public static final ICY_FORMAT:Lio/bidmachine/media3/common/Format;

.field public static final ICY_METADATA_HEADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

.field public callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

.field public final continueLoadingCheckIntervalBytes:J

.field public final customCacheKey:Ljava/lang/String;

.field public final dataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public dataType:I

.field public final drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

.field public durationUs:J

.field public enabledTrackCount:I

.field public extractedSamplesCountAtStartOfLoad:I

.field public final handler:Landroid/os/Handler;

.field public haveAudioVideoTracks:Z

.field public icyHeaders:Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

.field public isLengthKnown:Z

.field public isLive:Z

.field public isSingleSample:Z

.field public lastSeekPositionUs:J

.field public final listener:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

.field public final loadCondition:Lio/bidmachine/media3/common/util/ConditionVariable;

.field public final loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

.field public loadingFinished:Z

.field public final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field public final mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public notifyDiscontinuity:Z

.field public final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field public pendingDeferredRetry:Z

.field public pendingInitialDiscontinuity:Z

.field public pendingResetPositionUs:J

.field public prepared:Z

.field public final progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

.field public released:Z

.field public sampleQueueTrackIds:[Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

.field public sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

.field public sampleQueuesBuilt:Z

.field public seekMap:Lio/bidmachine/media3/extractor/SeekMap;

.field public seenFirstTrackSelection:Z

.field public final singleSampleDurationUs:J

.field public final singleTrackFormat:Lio/bidmachine/media3/common/Format;

.field public final singleTrackId:I

.field public trackState:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$1KASF1_AcEmVzJeVU-MGWZm52Ak(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V
    .registers 2

    const/4 v0, 0x1

    .line 798
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isLengthKnown:Z

    return-void
.end method

.method public static synthetic $r8$lambda$cHV7tloq_FbE1coKp6YlkjoyVwI(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method public static synthetic $r8$lambda$kRLpngZdCZKFVgqzzDn2XPaZlVs(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V
    .registers 2

    .line 226
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->released:Z

    if-nez v0, :cond_f

    .line 227
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$mdpf7JypvNH2CalnTd9m-mkrgEQ(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 2

    .line 779
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->setSeekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 108
    invoke-static {}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->createIcyMetadataHeaders()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;

    .line 110
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v1, "icy"

    .line 111
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_FORMAT:Lio/bidmachine/media3/common/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;Lio/bidmachine/media3/exoplayer/upstream/Allocator;Ljava/lang/String;IILio/bidmachine/media3/common/Format;JLio/bidmachine/media3/exoplayer/util/ReleasableExecutor;)V
    .registers 18

    move-object/from16 v0, p16

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    .line 205
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 206
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    .line 207
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 208
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 209
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 210
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->listener:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    .line 211
    iput-object p9, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    .line 212
    iput-object p10, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    int-to-long p1, p11

    .line 213
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    .line 214
    iput p12, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->singleTrackId:I

    .line 215
    iput-object p13, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->singleTrackFormat:Lio/bidmachine/media3/common/Format;

    if-eqz v0, :cond_26

    .line 218
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-direct {p1, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;)V

    goto :goto_2d

    .line 219
    :cond_26
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/Loader;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_2d
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 220
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    move-wide p1, p14

    .line 221
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->singleSampleDurationUs:J

    .line 222
    new-instance p1, Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Lio/bidmachine/media3/common/util/ConditionVariable;

    .line 223
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 224
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 230
    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 231
    new-array p2, p1, [Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 232
    new-array p1, p1, [Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 233
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    const/4 p1, 0x1

    .line 234
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)J
    .registers 3

    .line 79
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    return-wide v0
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)Ljava/lang/Runnable;
    .registers 1

    .line 79
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)Landroid/os/Handler;
    .registers 1

    .line 79
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Z)J
    .registers 2

    .line 79
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1400()Ljava/util/Map;
    .registers 1

    .line 79
    sget-object v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$1500(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)J
    .registers 3

    .line 79
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    return-wide v0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V
    .registers 1

    .line 79
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->onLengthKnown()V

    return-void
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;
    .registers 1

    .line 79
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    return-object p0
.end method

.method public static synthetic access$802(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;)Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;
    .registers 2

    .line 79
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method public static synthetic access$900()Lio/bidmachine/media3/common/Format;
    .registers 1

    .line 79
    sget-object v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_FORMAT:Lio/bidmachine/media3/common/Format;

    return-object v0
.end method

.method public static createIcyMetadataHeaders()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1253
    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private isPendingReset()Z
    .registers 5

    .line 1018
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private maybeFinishPrepare()V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 838
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->released:Z

    if-nez v2, :cond_11f

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-nez v2, :cond_11f

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    if-eqz v2, :cond_11f

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    if-nez v2, :cond_14

    goto/16 :goto_11f

    .line 841
    :cond_14
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v3, v2

    move v4, v0

    :goto_18
    if-ge v4, v3, :cond_26

    aget-object v5, v2, v4

    .line 842
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v5

    if-nez v5, :cond_24

    goto/16 :goto_11f

    :cond_24
    add-int/2addr v4, v1

    goto :goto_18

    .line 846
    :cond_26
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ConditionVariable;->close()Z

    .line 847
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v2, v2

    .line 848
    new-array v3, v2, [Lio/bidmachine/media3/common/TrackGroup;

    .line 849
    new-array v4, v2, [Z

    move v5, v0

    :goto_33
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v2, :cond_e4

    .line 851
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getUpstreamFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v8

    invoke-static {v8}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/common/Format;

    .line 852
    iget-object v9, v8, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 853
    invoke-static {v9}, Lio/bidmachine/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_59

    .line 854
    invoke-static {v9}, Lio/bidmachine/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_57

    goto :goto_59

    :cond_57
    move v11, v0

    goto :goto_5a

    :cond_59
    :goto_59
    move v11, v1

    .line 855
    :goto_5a
    aput-boolean v11, v4, v5

    .line 856
    iget-boolean v12, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v11, v12

    iput-boolean v11, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    .line 857
    invoke-static {v9}, Lio/bidmachine/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v9

    .line 858
    iget-wide v11, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->singleSampleDurationUs:J

    cmp-long v6, v11, v6

    if-eqz v6, :cond_71

    if-ne v2, v1, :cond_71

    if-eqz v9, :cond_71

    move v6, v1

    goto :goto_72

    :cond_71
    move v6, v0

    :goto_72
    iput-boolean v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isSingleSample:Z

    .line 859
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    if-eqz v6, :cond_c1

    if-nez v10, :cond_82

    .line 861
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    aget-object v7, v7, v5

    iget-boolean v7, v7, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-eqz v7, :cond_a4

    .line 862
    :cond_82
    iget-object v7, v8, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    if-nez v7, :cond_90

    .line 864
    new-instance v7, Lio/bidmachine/media3/common/Metadata;

    new-array v9, v1, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v6, v9, v0

    invoke-direct {v7, v9}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    goto :goto_98

    .line 866
    :cond_90
    new-array v9, v1, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v6, v9, v0

    invoke-virtual {v7, v9}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntries([Lio/bidmachine/media3/common/Metadata$Entry;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v7

    .line 868
    :goto_98
    invoke-virtual {v8}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v8

    :cond_a4
    if-eqz v10, :cond_c1

    .line 872
    iget v7, v8, Lio/bidmachine/media3/common/Format;->averageBitrate:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_c1

    iget v7, v8, Lio/bidmachine/media3/common/Format;->peakBitrate:I

    if-ne v7, v9, :cond_c1

    iget v7, v6, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->bitrate:I

    if-eq v7, v9, :cond_c1

    .line 876
    invoke-virtual {v8}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v7

    iget v6, v6, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {v7, v6}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v8

    .line 879
    :cond_c1
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v6, v8}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->getCryptoType(Lio/bidmachine/media3/common/Format;)I

    move-result v6

    invoke-virtual {v8, v6}, Lio/bidmachine/media3/common/Format;->copyWithCryptoType(I)Lio/bidmachine/media3/common/Format;

    move-result-object v6

    .line 880
    new-instance v7, Lio/bidmachine/media3/common/TrackGroup;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6}, [Lio/bidmachine/media3/common/Format;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    aput-object v7, v3, v5

    .line 881
    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    iget-boolean v6, v6, Lio/bidmachine/media3/common/Format;->hasPrerollSamples:Z

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    add-int/2addr v5, v1

    goto/16 :goto_33

    .line 883
    :cond_e4
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    new-instance v2, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {v2, v3}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;-><init>([Lio/bidmachine/media3/common/TrackGroup;)V

    invoke-direct {v0, v2, v4}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;-><init>(Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;[Z)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 884
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isSingleSample:Z

    if-eqz v0, :cond_107

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_107

    .line 885
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->singleSampleDurationUs:J

    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 886
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$1;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-direct {v0, p0, v2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$1;-><init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Lio/bidmachine/media3/extractor/SeekMap;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    .line 894
    :cond_107
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->listener:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isLive:Z

    invoke-interface {v0, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JLio/bidmachine/media3/extractor/SeekMap;Z)V

    .line 895
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    .line 896
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    :cond_11f
    :goto_11f
    return-void
.end method


# virtual methods
.method public final assertPrepared()V
    .registers 2

    .line 1023
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1024
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final configureRetry(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;I)Z
    .registers 9

    .line 933
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isLengthKnown:Z

    const/4 v1, 0x1

    if-nez v0, :cond_40

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_17

    goto :goto_40

    .line 938
    :cond_17
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_25

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result p2

    if-nez p2, :cond_25

    .line 948
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    return v0

    .line 955
    :cond_25
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    const-wide/16 v2, 0x0

    .line 956
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 957
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 958
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v4, p2

    :goto_32
    if-ge v0, v4, :cond_3c

    aget-object v5, p2, v0

    .line 959
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 961
    :cond_3c
    invoke-static {p1, v2, v3, v2, v3}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$600(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    return v1

    .line 936
    :cond_40
    :goto_40
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    return v1
.end method

.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 3

    .line 400
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez p1, :cond_30

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 401
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->hasFatalError()Z

    move-result p1

    if-nez p1, :cond_30

    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-nez p1, :cond_30

    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->singleTrackFormat:Lio/bidmachine/media3/common/Format;

    if-eqz p1, :cond_1d

    :cond_18
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_1d

    goto :goto_30

    .line 406
    :cond_1d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ConditionVariable;->open()Z

    move-result p1

    .line 407
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 408
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->startLoading()V

    const/4 p1, 0x1

    :cond_2f
    return p1

    :cond_30
    :goto_30
    const/4 p1, 0x0

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 9

    .line 378
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isSingleSample:Z

    if-eqz v0, :cond_5

    goto :goto_25

    .line 382
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 383
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_25

    .line 386
    :cond_f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    .line 387
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_25

    .line 389
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_25
    :goto_25
    return-void
.end method

.method public endTracks()V
    .registers 3

    const/4 v0, 0x1

    .line 773
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    .line 774
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 13

    .line 514
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 515
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/SeekMap;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/16 p1, 0x0

    return-wide p1

    .line 519
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/extractor/SeekMap;->getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 520
    iget-object v1, v0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->first:Lio/bidmachine/media3/extractor/SeekPoint;

    iget-wide v5, v1, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    iget-object v0, v0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->second:Lio/bidmachine/media3/extractor/SeekPoint;

    iget-wide v7, v0, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    move-wide v3, p1

    move-object v2, p3

    invoke-virtual/range {v2 .. v8}, Lio/bidmachine/media3/exoplayer/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 12

    .line 441
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 442
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_60

    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_e

    goto :goto_60

    .line 444
    :cond_e
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 445
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-wide v0

    .line 448
    :cond_17
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_4f

    .line 450
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_26
    if-ge v6, v0, :cond_50

    .line 452
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v10, v9, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_4c

    iget-object v9, v9, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_4c

    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object v9, v9, v6

    .line 454
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isLastSampleQueued()Z

    move-result v9

    if-nez v9, :cond_4c

    .line 455
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object v9, v9, v6

    .line 456
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_4f
    move-wide v7, v4

    :cond_50
    cmp-long v0, v7, v4

    if-nez v0, :cond_58

    .line 461
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide v7

    :cond_58
    cmp-long v0, v7, v1

    if-nez v0, :cond_5f

    .line 464
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    :cond_5f
    return-wide v7

    :cond_60
    :goto_60
    return-wide v1
.end method

.method public final getExtractedSamplesCount()I
    .registers 6

    .line 1000
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v4, v0, v2

    .line 1001
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getWriteIndex()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    return v3
.end method

.method public final getLargestQueuedTimestampUs(Z)J
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    .line 1008
    :goto_3
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v3, v3

    if-ge v2, v3, :cond_27

    if-nez p1, :cond_18

    .line 1009
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_24

    .line 1010
    :cond_18
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object v3, v3, v2

    .line 1011
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_27
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 421
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 292
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 293
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->tracks:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public icyTrack()Lio/bidmachine/media3/extractor/TrackOutput;
    .registers 4

    .line 785
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepareTrackOutput(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 416
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ConditionVariable;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public isReady(I)Z
    .registers 3

    .line 527
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isReady(Z)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final maybeNotifyDownstreamFormat(I)V
    .registers 12

    .line 571
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 572
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackNotifiedDownstreamFormats:[Z

    .line 573
    aget-boolean v2, v1, p1

    if-nez v2, :cond_28

    .line 574
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->tracks:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v5

    .line 575
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v0, v5, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 576
    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x0

    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    const/4 v6, 0x0

    .line 575
    invoke-virtual/range {v3 .. v9}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILio/bidmachine/media3/common/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 581
    aput-boolean v0, v1, p1

    :cond_28
    return-void
.end method

.method public final maybeStartDeferredRetry(I)V
    .registers 5

    .line 586
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 587
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_44

    :cond_13
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isReady(Z)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_44

    :cond_1f
    const-wide/16 v1, 0x0

    .line 592
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 593
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    const/4 p1, 0x1

    .line 594
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 595
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 596
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 597
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v1, p1

    :goto_2f
    if-ge v0, v1, :cond_39

    aget-object v2, p1, v0

    .line 598
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 600
    :cond_39
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public maybeThrowError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->maybeThrowError(I)V

    return-void
.end method

.method public maybeThrowError(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->maybeThrowError()V

    .line 532
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeThrowError()V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeThrowError()V

    .line 284
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_c

    goto :goto_14

    .line 285
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

.method public final onLengthKnown()V
    .registers 3

    .line 798
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    new-instance v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoadCanceled(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJZ)V
    .registers 20

    .line 675
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lio/bidmachine/media3/datasource/StatsDataSource;

    move-result-object v0

    .line 676
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    .line 678
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v2

    .line 679
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v4

    .line 680
    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v5

    .line 681
    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 684
    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 685
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    move-object v2, v1

    .line 686
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 693
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v8

    iget-wide v10, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 686
    invoke-virtual/range {v1 .. v11}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_59

    .line 696
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_40
    if-ge v1, v0, :cond_4a

    aget-object v2, p1, v1

    .line 697
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 699
    :cond_4a
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-lez p1, :cond_59

    .line 700
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    :cond_59
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .registers 7

    .line 79
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V
    .registers 20

    .line 639
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    if-eqz v0, :cond_2b

    .line 641
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1d

    const-wide/16 v2, 0x0

    goto :goto_20

    :cond_1d
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 645
    :goto_20
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 646
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->listener:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isLive:Z

    invoke-interface {v0, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JLio/bidmachine/media3/extractor/SeekMap;Z)V

    .line 648
    :cond_2b
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lio/bidmachine/media3/datasource/StatsDataSource;

    move-result-object v0

    .line 649
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    .line 651
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v3

    .line 652
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v5

    .line 653
    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v6

    .line 654
    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 657
    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v12

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 658
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    move-object v3, v2

    .line 659
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 666
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v9

    iget-wide v11, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 659
    invoke-virtual/range {v2 .. v12}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 668
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 669
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .registers 6

    .line 79
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->onLoadCompleted(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public onLoadError(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 25

    move-object/from16 v0, p0

    .line 712
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lio/bidmachine/media3/datasource/StatsDataSource;

    move-result-object v1

    .line 713
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    .line 715
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v3

    .line 716
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v5

    .line 717
    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v6

    .line 718
    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 721
    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v12

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 722
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    .line 729
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 730
    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v11

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v12}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 732
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    new-instance v4, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move-object/from16 v13, p6

    move/from16 v5, p7

    invoke-direct {v4, v2, v3, v13, v5}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 733
    invoke-interface {v1, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-nez v1, :cond_58

    .line 736
    sget-object v1, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-object/from16 v15, p1

    goto :goto_73

    .line 738
    :cond_58
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v1

    .line 739
    iget v5, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v1, v5, :cond_64

    const/4 v5, 0x1

    :goto_61
    move-object/from16 v15, p1

    goto :goto_66

    :cond_64
    const/4 v5, 0x0

    goto :goto_61

    .line 741
    :goto_66
    invoke-virtual {v0, v15, v1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->configureRetry(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 742
    invoke-static {v5, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->createRetryAction(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v1

    goto :goto_73

    .line 743
    :cond_71
    sget-object v1, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 746
    :goto_73
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v16

    xor-int/lit8 v14, v16, 0x1

    move-object v3, v2

    .line 747
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 754
    invoke-static {v15}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v9

    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 747
    invoke-virtual/range {v2 .. v14}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v16, :cond_95

    .line 759
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-static {v15}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_95
    return-object v1
.end method

.method public bridge synthetic onLoadError(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 8

    .line 79
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p7}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->onLoadError(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadStarted(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJI)V
    .registers 23

    move-object/from16 v0, p0

    .line 612
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$100(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lio/bidmachine/media3/datasource/StatsDataSource;

    move-result-object v1

    if-nez p6, :cond_19

    .line 615
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v5

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;J)V

    move-object v5, v2

    goto :goto_37

    .line 616
    :cond_19
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    .line 617
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$200(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v4

    .line 618
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$300(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v6

    .line 619
    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v7

    .line 620
    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 623
    invoke-virtual {v1}, Lio/bidmachine/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v13

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v5, v3

    .line 624
    :goto_37
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 631
    invoke-static/range {p1 .. p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$400(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J

    move-result-wide v11

    iget-wide v13, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v15, p6

    .line 624
    invoke-virtual/range {v4 .. v15}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public bridge synthetic onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .registers 7

    .line 79
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->onLoadStarted(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJI)V

    return-void
.end method

.method public onLoaderReleased()V
    .registers 5

    .line 253
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 254
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 256
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->release()V

    return-void
.end method

.method public onUpstreamFormatChanged(Lio/bidmachine/media3/common/Format;)V
    .registers 3

    .line 792
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 261
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    .line 262
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->singleTrackFormat:Lio/bidmachine/media3/common/Format;

    if-eqz p1, :cond_31

    .line 266
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->singleTrackId:I

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    .line 267
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->singleTrackFormat:Lio/bidmachine/media3/common/Format;

    invoke-interface {p1, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 268
    new-instance p1, Lio/bidmachine/media3/extractor/IndexSeekMap;

    const-wide/16 v2, 0x0

    new-array v4, v1, [J

    aput-wide v2, v4, v0

    new-array v1, v1, [J

    aput-wide v2, v1, v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v4, v1, v2, v3}, Lio/bidmachine/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->setSeekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 273
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->endTracks()V

    .line 274
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-void

    .line 276
    :cond_31
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ConditionVariable;->open()Z

    .line 277
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->startLoading()V

    return-void
.end method

.method public final prepareTrackOutput(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Lio/bidmachine/media3/extractor/TrackOutput;
    .registers 6

    .line 802
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_18

    .line 804
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 805
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object p1, p1, v1

    return-object p1

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 808
    :cond_18
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    if-eqz v1, :cond_3f

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extractor added new track (id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->id:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after finishing tracks."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressiveMediaPeriod"

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    new-instance p1, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;-><init>()V

    return-object p1

    .line 812
    :cond_3f
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 813
    invoke-static {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->createWithDrm(Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    move-result-object v1

    .line 814
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->setUpstreamFormatChangeListener(Lio/bidmachine/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 816
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 817
    aput-object p1, v2, v0

    .line 818
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 819
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 820
    aput-object v1, p1, v0

    .line 821
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    return-object v1
.end method

.method public readData(ILio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .registers 8

    .line 544
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_8

    return v1

    .line 547
    :cond_8
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 548
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 549
    invoke-virtual {v0, p2, p3, p4, v2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->read(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1a

    .line 551
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    :cond_1a
    return p2
.end method

.method public readDiscontinuity()J
    .registers 4

    .line 426
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 427
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 428
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    .line 431
    :cond_a
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1a

    .line 432
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v2, :cond_1f

    .line 433
    :cond_1a
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 434
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    :cond_1f
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public release()V
    .registers 5

    .line 238
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_12

    .line 241
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 242
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->preRelease()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 245
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0, p0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->release(Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    .line 246
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 247
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->released:Z

    return-void
.end method

.method public final seekInsideBufferUs([ZJZ)Z
    .registers 10

    .line 977
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_33

    .line 979
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object v3, v3, v2

    .line 980
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v4

    if-nez v4, :cond_14

    if-eqz p4, :cond_14

    goto :goto_30

    .line 984
    :cond_14
    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isSingleSample:Z

    if-eqz v4, :cond_21

    .line 985
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getFirstIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->seekTo(I)Z

    move-result v3

    goto :goto_25

    .line 986
    :cond_21
    invoke-virtual {v3, p2, p3, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result v3

    :goto_25
    if-nez v3, :cond_30

    .line 991
    aget-boolean v3, p1, v2

    if-nez v3, :cond_2f

    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v3, :cond_30

    :cond_2f
    return v1

    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_33
    const/4 p1, 0x1

    return p1
.end method

.method public seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 4

    .line 779
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    new-instance v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Lio/bidmachine/media3/extractor/SeekMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public seekToUs(J)J
    .registers 8

    .line 470
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 471
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    .line 473
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const-wide/16 p1, 0x0

    :goto_12
    const/4 v1, 0x0

    .line 475
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 476
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    move v2, v1

    .line 477
    :goto_1e
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    .line 478
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 480
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-wide p1

    .line 486
    :cond_29
    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_41

    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v3, :cond_3a

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 487
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 488
    :cond_3a
    invoke-virtual {p0, v0, p1, p2, v2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekInsideBufferUs([ZJZ)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_76

    .line 493
    :cond_41
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 494
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 495
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 496
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 497
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 499
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v2, v0

    :goto_54
    if-ge v1, v2, :cond_5e

    aget-object v3, v0, v1

    .line 500
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 502
    :cond_5e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->cancelLoading()V

    return-wide p1

    .line 504
    :cond_64
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->clearFatalError()V

    .line 505
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v2, v0

    :goto_6c
    if-ge v1, v2, :cond_76

    aget-object v3, v0, v1

    .line 506
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_76
    :goto_76
    return-wide p1
.end method

.method public selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J
    .registers 15

    .line 303
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    .line 304
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->tracks:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 305
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    .line 306
    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    const/4 v3, 0x0

    move v4, v3

    .line 308
    :goto_d
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_35

    .line 309
    aget-object v5, p3, v4

    if-eqz v5, :cond_32

    aget-object v7, p1, v4

    if-eqz v7, :cond_1d

    aget-boolean v7, p2, v4

    if-nez v7, :cond_32

    .line 310
    :cond_1d
    check-cast v5, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->access$000(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;)I

    move-result v5

    .line 311
    aget-boolean v7, v0, v5

    invoke-static {v7}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 312
    iget v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    sub-int/2addr v7, v6

    iput v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 313
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 314
    aput-object v5, p3, v4

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 321
    :cond_35
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz p2, :cond_3f

    if-nez v2, :cond_3d

    :goto_3b
    move p2, v6

    goto :goto_4a

    :cond_3d
    move p2, v3

    goto :goto_4a

    :cond_3f
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_3d

    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isSingleSample:Z

    if-nez p2, :cond_3d

    goto :goto_3b

    :goto_4a
    move v2, v3

    .line 323
    :goto_4b
    array-length v4, p1

    if-ge v2, v4, :cond_af

    .line 324
    aget-object v4, p3, v2

    if-nez v4, :cond_ac

    aget-object v4, p1, v2

    if-eqz v4, :cond_ac

    .line 326
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v5

    if-ne v5, v6, :cond_5e

    move v5, v6

    goto :goto_5f

    :cond_5e
    move v5, v3

    :goto_5f
    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 327
    invoke-interface {v4, v3}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    if-nez v5, :cond_6a

    move v5, v6

    goto :goto_6b

    :cond_6a
    move v5, v3

    :goto_6b
    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 328
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->indexOf(Lio/bidmachine/media3/common/TrackGroup;)I

    move-result v5

    .line 329
    aget-boolean v7, v0, v5

    xor-int/2addr v7, v6

    invoke-static {v7}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 330
    iget v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    add-int/2addr v7, v6

    iput v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    .line 331
    aput-boolean v6, v0, v5

    .line 332
    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v4

    iget-boolean v4, v4, Lio/bidmachine/media3/common/Format;->hasPrerollSamples:Z

    or-int/2addr v4, v7

    iput-boolean v4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 333
    new-instance v4, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-direct {v4, p0, v5}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;-><init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    aput-object v4, p3, v2

    .line 334
    aput-boolean v6, p4, v2

    if-nez p2, :cond_ac

    .line 337
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object p2, p2, v5

    .line 342
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v4

    if-eqz v4, :cond_ab

    .line 343
    invoke-virtual {p2, p5, p6, v6}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result p2

    if-nez p2, :cond_ab

    move p2, v6

    goto :goto_ac

    :cond_ab
    move p2, v3

    :cond_ac
    :goto_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 347
    :cond_af
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_e3

    .line 348
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    .line 349
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    .line 350
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 351
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 353
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length p2, p1

    :goto_c4
    if-ge v3, p2, :cond_ce

    aget-object p3, p1, v3

    .line 354
    invoke-virtual {p3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c4

    .line 356
    :cond_ce
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->cancelLoading()V

    goto :goto_f5

    .line 358
    :cond_d4
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 359
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length p2, p1

    :goto_d9
    if-ge v3, p2, :cond_f5

    aget-object p3, p1, v3

    .line 360
    invoke-virtual {p3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d9

    :cond_e3
    if-eqz p2, :cond_f5

    .line 364
    invoke-virtual {p0, p5, p6}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekToUs(J)J

    move-result-wide p5

    .line 366
    :goto_e9
    array-length p1, p3

    if-ge v3, p1, :cond_f5

    .line 367
    aget-object p1, p3, v3

    if-eqz p1, :cond_f2

    .line 368
    aput-boolean v6, p4, v3

    :cond_f2
    add-int/lit8 v3, v3, 0x1

    goto :goto_e9

    .line 372
    :cond_f5
    :goto_f5
    iput-boolean v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    return-wide p5
.end method

.method public final setSeekMap(Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 8

    .line 826
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_b

    move-object v0, p1

    goto :goto_10

    :cond_b
    new-instance v0, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_10
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    .line 827
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    .line 828
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isLengthKnown:Z

    const/4 v3, 0x1

    if-nez v0, :cond_27

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_27

    move v0, v3

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isLive:Z

    if-eqz v0, :cond_2d

    const/4 v3, 0x7

    .line 829
    :cond_2d
    iput v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    .line 830
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v1, :cond_3b

    .line 831
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->listener:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    invoke-interface {v1, v2, v3, p1, v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;->onSourceInfoRefreshed(JLio/bidmachine/media3/extractor/SeekMap;Z)V

    return-void

    .line 833
    :cond_3b
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method public skipData(IJ)I
    .registers 6

    .line 557
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 560
    :cond_8
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    .line 561
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    aget-object v0, v0, p1

    .line 562
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    invoke-virtual {v0, p2, p3, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->getSkipCount(JZ)I

    move-result p2

    .line 563
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->skip(I)V

    if-nez p2, :cond_1d

    .line 565
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    :cond_1d
    return p2
.end method

.method public final startLoading()V
    .registers 11

    .line 900
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Lio/bidmachine/media3/common/util/ConditionVariable;

    move-object v5, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;-><init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Landroid/net/Uri;Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/common/util/ConditionVariable;)V

    .line 903
    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v2, :cond_5a

    .line 904
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 905
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_31

    iget-wide v6, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    cmp-long v2, v6, v2

    if-lez v2, :cond_31

    const/4 v0, 0x1

    .line 906
    iput-boolean v0, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    .line 907
    iput-wide v4, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-void

    .line 910
    :cond_31
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    .line 911
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/SeekMap;

    iget-wide v6, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    invoke-interface {v2, v6, v7}, Lio/bidmachine/media3/extractor/SeekMap;->getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    move-result-object v2

    iget-object v2, v2, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->first:Lio/bidmachine/media3/extractor/SeekPoint;

    iget-wide v2, v2, Lio/bidmachine/media3/extractor/SeekPoint;->position:J

    iget-wide v6, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 910
    invoke-static {v0, v2, v3, v6, v7}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->access$600(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V

    .line 913
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    array-length v3, v2

    const/4 v6, 0x0

    :goto_4c
    if-ge v6, v3, :cond_58

    aget-object v7, v2, v6

    .line 914
    iget-wide v8, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    invoke-virtual {v7, v8, v9}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->setStartTimeUs(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    .line 916
    :cond_58
    iput-wide v4, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    .line 918
    :cond_5a
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v2

    iput v2, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    .line 919
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v4, v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    .line 920
    invoke-interface {v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v3

    .line 919
    invoke-virtual {v2, v0, p0, v3}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->startLoading(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;I)J

    return-void
.end method

.method public final suppressRead()Z
    .registers 2

    .line 604
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public track(II)Lio/bidmachine/media3/extractor/TrackOutput;
    .registers 4

    .line 768
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->prepareTrackOutput(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod.AnonymousClass1 (io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$1)
.class public Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$1;
.super Lio/bidmachine/media3/extractor/ForwardingSeekMap;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 3

    .line 887
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$1;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-direct {p0, p2}, Lio/bidmachine/media3/extractor/ForwardingSeekMap;-><init>(Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 890
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$1;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$500(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)J

    move-result-wide v0

    return-wide v0
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod.ExtractingLoadable (io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$ExtractingLoadable)
.class public final Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;
.implements Lio/bidmachine/media3/exoplayer/source/IcyDataSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field public final dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

.field public dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

.field public final extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public icyTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public volatile loadCanceled:Z

.field public final loadCondition:Lio/bidmachine/media3/common/util/ConditionVariable;

.field public final loadTaskId:J

.field public pendingExtractorSeek:Z

.field public final positionHolder:Lio/bidmachine/media3/extractor/PositionHolder;

.field public final progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

.field public seekTimeUs:J

.field public seenIcyMetadata:Z

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Landroid/net/Uri;Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/common/util/ConditionVariable;)V
    .registers 7

    .line 1083
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 1085
    new-instance p1, Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-direct {p1, p3}, Lio/bidmachine/media3/datasource/StatsDataSource;-><init>(Lio/bidmachine/media3/datasource/DataSource;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    .line 1086
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    .line 1087
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 1088
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lio/bidmachine/media3/common/util/ConditionVariable;

    .line 1089
    new-instance p1, Lio/bidmachine/media3/extractor/PositionHolder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lio/bidmachine/media3/extractor/PositionHolder;

    const/4 p1, 0x1

    .line 1090
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 1091
    invoke-static {}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;->getNewId()J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J

    const-wide/16 p1, 0x0

    .line 1092
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lio/bidmachine/media3/datasource/StatsDataSource;
    .registers 1

    .line 1059
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .registers 3

    .line 1059
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J

    return-wide v0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lio/bidmachine/media3/datasource/DataSpec;
    .registers 1

    .line 1059
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .registers 3

    .line 1059
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    return-wide v0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V
    .registers 5

    .line 1059
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    return-void
.end method


# virtual methods
.method public final buildDataSpec(J)Lio/bidmachine/media3/datasource/DataSpec;
    .registers 5

    .line 1188
    new-instance v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 1189
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object v0

    .line 1190
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setPosition(J)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 1191
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$1500(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setKey(Ljava/lang/String;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    const/4 p2, 0x6

    .line 1192
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setFlags(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    .line 1194
    invoke-static {}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$1400()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    .line 1195
    invoke-virtual {p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object p1

    return-object p1
.end method

.method public cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    .line 1099
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return-void
.end method

.method public load()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-nez v1, :cond_132

    .line 1105
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v2, :cond_132

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    .line 1107
    :try_start_b
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lio/bidmachine/media3/extractor/PositionHolder;

    iget-wide v10, v5, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    .line 1108
    invoke-virtual {p0, v10, v11}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v5

    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 1109
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-virtual {v6, v5}, Lio/bidmachine/media3/datasource/StatsDataSource;->open(Lio/bidmachine/media3/datasource/DataSpec;)J

    move-result-wide v5

    .line 1110
    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_48

    if-eqz v7, :cond_3c

    if-ne v1, v2, :cond_22

    goto :goto_36

    .line 1157
    :cond_22
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_36

    .line 1158
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lio/bidmachine/media3/extractor/PositionHolder;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    .line 1160
    :cond_36
    :goto_36
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-static {v0}, Lio/bidmachine/media3/datasource/DataSourceUtil;->closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V

    return-void

    :cond_3c
    cmp-long v7, v5, v3

    if-eqz v7, :cond_46

    add-long/2addr v5, v10

    .line 1115
    :try_start_41
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$700(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V

    :cond_46
    move-wide v12, v5

    goto :goto_4b

    :catchall_48
    move-exception v0

    goto/16 :goto_116

    .line 1117
    :goto_4b
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-virtual {v6}, Lio/bidmachine/media3/datasource/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v6

    invoke-static {v5, v6}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$802(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;)Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    .line 1118
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    .line 1119
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$800(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_8d

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$800(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v6

    iget v6, v6, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8d

    .line 1120
    new-instance v5, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$800(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-direct {v5, v6, v7, p0}, Lio/bidmachine/media3/exoplayer/source/IcyDataSource;-><init>(Lio/bidmachine/media3/datasource/DataSource;ILio/bidmachine/media3/exoplayer/source/IcyDataSource$Listener;)V

    .line 1121
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-virtual {v6}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->icyTrack()Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v6

    iput-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 1122
    invoke-static {}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$900()Lio/bidmachine/media3/common/Format;

    move-result-object v7

    invoke-interface {v6, v7}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    :cond_8d
    move-object v7, v5

    .line 1124
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    .line 1127
    invoke-virtual {v5}, Lio/bidmachine/media3/datasource/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v9

    iget-object v14, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 1124
    invoke-interface/range {v6 .. v14}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->init(Lio/bidmachine/media3/common/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLio/bidmachine/media3/extractor/ExtractorOutput;)V

    .line 1132
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$800(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)Lio/bidmachine/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v5

    if-eqz v5, :cond_aa

    .line 1133
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v5}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->disableSeekingOnMp3Streams()V

    .line 1136
    :cond_aa
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v5, :cond_b7

    .line 1137
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v5, v10, v11, v6, v7}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->seek(JJ)V

    .line 1138
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    :cond_b7
    :goto_b7
    if-nez v1, :cond_f7

    .line 1140
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z
    :try_end_bb
    .catchall {:try_start_41 .. :try_end_bb} :catchall_48

    if-nez v5, :cond_f7

    .line 1142
    :try_start_bd
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ConditionVariable;->block()V
    :try_end_c2
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_c2} :catch_f1
    .catchall {:try_start_bd .. :try_end_c2} :catchall_48

    .line 1146
    :try_start_c2
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lio/bidmachine/media3/extractor/PositionHolder;

    invoke-interface {v5, v6}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->read(Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result v1

    .line 1147
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v5}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v5

    .line 1148
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$1000(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)J

    move-result-wide v7

    add-long/2addr v7, v10

    cmp-long v7, v5, v7

    if-lez v7, :cond_b7

    .line 1150
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-virtual {v7}, Lio/bidmachine/media3/common/util/ConditionVariable;->close()Z

    .line 1151
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$1200(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v8}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$1100(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide v10, v5

    goto :goto_b7

    .line 1144
    :catch_f1
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_f7
    .catchall {:try_start_c2 .. :try_end_f7} :catchall_48

    :cond_f7
    if-ne v1, v2, :cond_fb

    move v1, v0

    goto :goto_10f

    .line 1157
    :cond_fb
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_10f

    .line 1158
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lio/bidmachine/media3/extractor/PositionHolder;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v3}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    .line 1160
    :cond_10f
    :goto_10f
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-static {v2}, Lio/bidmachine/media3/datasource/DataSourceUtil;->closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V

    goto/16 :goto_2

    :goto_116
    if-eq v1, v2, :cond_12c

    .line 1157
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12c

    .line 1158
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lio/bidmachine/media3/extractor/PositionHolder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v2

    iput-wide v2, v1, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    .line 1160
    :cond_12c
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-static {v1}, Lio/bidmachine/media3/datasource/DataSourceUtil;->closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 1161
    throw v0

    :cond_132
    return-void
.end method

.method public onIcyMetadata(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 13

    .line 1172
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 1173
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    :goto_7
    move-wide v5, v2

    goto :goto_16

    .line 1174
    :cond_9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->access$1300(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Z)J

    move-result-wide v2

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_7

    .line 1175
    :goto_16
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    .line 1176
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/bidmachine/media3/extractor/TrackOutput;

    .line 1177
    invoke-interface {v4, p1, v8}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 1178
    invoke-interface/range {v4 .. v10}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 1180
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    return-void
.end method

.method public final setLoadPosition(JJ)V
    .registers 6

    .line 1199
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lio/bidmachine/media3/extractor/PositionHolder;

    iput-wide p1, v0, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    .line 1200
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    const/4 p1, 0x1

    .line 1201
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const/4 p1, 0x0

    .line 1202
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod.Listener (io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onSourceInfoRefreshed(JLio/bidmachine/media3/extractor/SeekMap;Z)V
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod.SampleStreamImpl (io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$SampleStreamImpl)
.class public final Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

.field public final track:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;I)V
    .registers 3

    .line 1032
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;)I
    .registers 1

    .line 1028
    iget p0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return p0
.end method


# virtual methods
.method public isReady()Z
    .registers 3

    .line 1038
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeThrowError(I)V

    return-void
.end method

.method public readData(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .registers 6

    .line 1049
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->readData(ILio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public skipData(J)I
    .registers 5

    .line 1054
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->skipData(IJ)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod.TrackId (io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$TrackId)
.class public final Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackId"
.end annotation


# instance fields
.field public final id:I

.field public final isIcyTrack:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    .line 1228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1229
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->id:I

    .line 1230
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    .line 1238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    if-eq v3, v2, :cond_10

    goto :goto_1f

    .line 1241
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 1242
    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->id:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->id:I

    if-ne v2, v3, :cond_1f

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-ne v2, p1, :cond_1f

    return v0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1247
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod.TrackState (io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$TrackState)
.class public final Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackState"
.end annotation


# instance fields
.field public final trackEnabledStates:[Z

.field public final trackIsAudioVideoFlags:[Z

.field public final trackNotifiedDownstreamFormats:[Z

.field public final tracks:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;[Z)V
    .registers 3

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1215
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->tracks:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 1216
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    .line 1217
    iget p1, p1, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    new-array p2, p1, [Z

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    .line 1218
    new-array p1, p1, [Z

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackNotifiedDownstreamFormats:[Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->$r8$lambda$cHV7tloq_FbE1coKp6YlkjoyVwI(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->$r8$lambda$kRLpngZdCZKFVgqzzDn2XPaZlVs(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

.field public final synthetic f$1:Lio/bidmachine/media3/extractor/SeekMap;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/extractor/SeekMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->$r8$lambda$mdpf7JypvNH2CalnTd9m-mkrgEQ(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.source.ProgressiveMediaPeriod$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->$r8$lambda$1KASF1_AcEmVzJeVU-MGWZm52Ak(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;)V

    return-void
.end method
