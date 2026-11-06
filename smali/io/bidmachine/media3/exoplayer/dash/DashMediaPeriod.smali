###### Class io.bidmachine.media3.exoplayer.dash.DashMediaPeriod (io.bidmachine.media3.exoplayer.dash.DashMediaPeriod)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
.implements Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;
.implements Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/source/MediaPeriod;",
        "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback<",
        "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
        "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;",
        ">;>;",
        "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback<",
        "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final CEA608_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

.field public static final CEA708_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field public final allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

.field public final baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

.field public callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

.field public canReportInitialDiscontinuity:Z

.field public final chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

.field public compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

.field public final compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field public final drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

.field public final elapsedRealtimeOffsetMs:J

.field public eventSampleStreams:[Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;

.field public eventStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public initialStartTimeUs:J

.field public final loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

.field public final manifestLoaderErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

.field public final mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public periodIndex:I

.field public final playerEmsgHandler:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

.field public final playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

.field public sampleStreams:[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field public final trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final trackGroupInfos:[Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

.field public final trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

.field public final transferListener:Lio/bidmachine/media3/datasource/TransferListener;


# direct methods
.method public static synthetic $r8$lambda$0OCHeHerXwxmbX9IRljSEd8foog(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)Ljava/util/List;
    .registers 1

    .line 311
    iget p0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 86
    const-string v0, "CC([1-4])=(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->CEA608_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    .line 88
    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->CEA708_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;ILio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;JLio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 19

    move-object p7, p15

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->id:I

    .line 140
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 141
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 142
    iput p4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->periodIndex:I

    .line 143
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    .line 144
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->transferListener:Lio/bidmachine/media3/datasource/TransferListener;

    .line 146
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    .line 147
    iput-object p9, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 148
    iput-object p10, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 149
    iput-object p11, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 150
    iput-wide p12, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->elapsedRealtimeOffsetMs:J

    move-object p1, p14

    .line 151
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 152
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    move-object/from16 p1, p16

    .line 153
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    move-object/from16 p3, p18

    .line 154
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    const/4 p3, 0x1

    .line 155
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->canReportInitialDiscontinuity:Z

    .line 156
    new-instance p3, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    move-object/from16 p6, p17

    invoke-direct {p3, p2, p6, p15}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;-><init>(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lio/bidmachine/media3/exoplayer/upstream/Allocator;)V

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->playerEmsgHandler:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    const/4 p3, 0x0

    .line 157
    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    move-result-object p6

    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 158
    new-array p3, p3, [Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->eventSampleStreams:[Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;

    .line 159
    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    .line 160
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->empty()Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    .line 161
    invoke-virtual {p2, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object p1

    .line 162
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->eventStreams:Ljava/util/List;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 163
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 164
    invoke-static {p8, p5, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->buildTrackGroups(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    .line 166
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 167
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackGroupInfos:[Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    return-void
.end method

.method public static buildManifestEventTrackGroupInfos(Ljava/util/List;[Lio/bidmachine/media3/common/TrackGroup;[Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;",
            ">;[",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "[",
            "Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 783
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 784
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;

    .line 785
    new-instance v2, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v2}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 787
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    const-string v3, "application/x-emsg"

    .line 788
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    .line 789
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v2

    .line 790
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 791
    new-instance v3, Lio/bidmachine/media3/common/TrackGroup;

    filled-new-array {v2}, [Lio/bidmachine/media3/common/Format;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    aput-object v3, p1, p3

    add-int/lit8 v1, p3, 0x1

    .line 792
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->mpdEventTrack(I)Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v2

    aput-object v2, p2, p3

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_1

    :cond_53
    return-void
.end method

.method public static buildPrimaryAndEmbeddedTrackGroupInfos(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Ljava/util/List;[[II[Z[[Lio/bidmachine/media3/common/Format;[Lio/bidmachine/media3/common/TrackGroup;[Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;",
            "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;[[II[Z[[",
            "Lio/bidmachine/media3/common/Format;",
            "[",
            "Lio/bidmachine/media3/common/TrackGroup;",
            "[",
            "Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    move/from16 v3, p4

    move v4, v2

    move v5, v4

    :goto_9
    if-ge v4, v3, :cond_107

    .line 716
    aget-object v6, p3, v4

    .line 717
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 718
    array-length v8, v6

    move v9, v2

    :goto_14
    if-ge v9, v8, :cond_26

    aget v10, v6, v9

    .line 719
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    iget-object v10, v10, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 721
    :cond_26
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v9, v8, [Lio/bidmachine/media3/common/Format;

    move v10, v2

    :goto_2d
    if-ge v10, v8, :cond_4e

    .line 723
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    iget-object v11, v11, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->format:Lio/bidmachine/media3/common/Format;

    .line 726
    invoke-virtual {v11}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v12

    move-object/from16 v13, p0

    .line 727
    invoke-interface {v13, v11}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->getCryptoType(Lio/bidmachine/media3/common/Format;)I

    move-result v11

    invoke-virtual {v12, v11}, Lio/bidmachine/media3/common/Format$Builder;->setCryptoType(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v11

    .line 728
    invoke-virtual {v11}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    :cond_4e
    move-object/from16 v13, p0

    .line 731
    aget v7, v6, v2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 733
    iget-wide v10, v7, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->id:J

    const-wide/16 v14, -0x1

    cmp-long v8, v10, v14

    if-eqz v8, :cond_65

    .line 734
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_76

    .line 735
    :cond_65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unset:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_76
    add-int/lit8 v10, v5, 0x1

    .line 738
    aget-boolean v11, p5, v4

    const/4 v12, -0x1

    if-eqz v11, :cond_80

    add-int/lit8 v11, v5, 0x2

    goto :goto_82

    :cond_80
    move v11, v10

    move v10, v12

    .line 740
    :goto_82
    aget-object v14, p6, v4

    array-length v14, v14

    if-eqz v14, :cond_8a

    add-int/lit8 v14, v11, 0x1

    goto :goto_8c

    :cond_8a
    move v14, v11

    move v11, v12

    .line 742
    :goto_8c
    invoke-static {v0, v9}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->maybeUpdateFormatsForParsedText(Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;[Lio/bidmachine/media3/common/Format;)V

    .line 743
    new-instance v15, Lio/bidmachine/media3/common/TrackGroup;

    invoke-direct {v15, v8, v9}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    aput-object v15, p7, v5

    .line 744
    iget v7, v7, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->type:I

    .line 745
    invoke-static {v7, v6, v5, v10, v11}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrack(I[IIII)Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v7

    aput-object v7, p8, v5

    if-eq v10, v12, :cond_d5

    .line 752
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":emsg"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 753
    new-instance v9, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v9}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 755
    invoke-virtual {v9, v7}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v9

    const-string v15, "application/x-emsg"

    .line 756
    invoke-virtual {v9, v15}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v9

    .line 757
    invoke-virtual {v9}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v9

    .line 758
    new-instance v15, Lio/bidmachine/media3/common/TrackGroup;

    filled-new-array {v9}, [Lio/bidmachine/media3/common/Format;

    move-result-object v9

    invoke-direct {v15, v7, v9}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    aput-object v15, p7, v10

    .line 760
    invoke-static {v6, v5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEmsgTrack([II)Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v7

    aput-object v7, p8, v10

    :cond_d5
    if-eq v11, v12, :cond_102

    .line 763
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":cc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 764
    aget-object v8, p6, v4

    .line 768
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    .line 765
    invoke-static {v6, v5, v8}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrack([IILcom/google/common/collect/ImmutableList;)Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    move-result-object v5

    aput-object v5, p8, v11

    .line 769
    aget-object v5, p6, v4

    invoke-static {v0, v5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->maybeUpdateFormatsForParsedText(Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;[Lio/bidmachine/media3/common/Format;)V

    .line 771
    new-instance v5, Lio/bidmachine/media3/common/TrackGroup;

    aget-object v6, p6, v4

    invoke-direct {v5, v7, v6}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    aput-object v5, p7, v11

    :cond_102
    add-int/lit8 v4, v4, 0x1

    move v5, v14

    goto/16 :goto_9

    :cond_107
    return v5
.end method

.method public static buildTrackGroups(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;",
            "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;",
            ">;)",
            "Landroid/util/Pair<",
            "Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;",
            "[",
            "Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;",
            ">;"
        }
    .end annotation

    .line 530
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->getGroupedAdaptationSetIndices(Ljava/util/List;)[[I

    move-result-object v3

    .line 532
    array-length v4, v3

    .line 533
    new-array v5, v4, [Z

    .line 534
    new-array v6, v4, [[Lio/bidmachine/media3/common/Format;

    .line 536
    invoke-static {v4, p2, v3, v5, v6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->identifyEmbeddedTracks(ILjava/util/List;[[I[Z[[Lio/bidmachine/media3/common/Format;)I

    move-result v0

    add-int/2addr v0, v4

    .line 543
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 544
    new-array v7, v0, [Lio/bidmachine/media3/common/TrackGroup;

    .line 545
    new-array v8, v0, [Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 548
    invoke-static/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->buildPrimaryAndEmbeddedTrackGroupInfos(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Ljava/util/List;[[II[Z[[Lio/bidmachine/media3/common/Format;[Lio/bidmachine/media3/common/TrackGroup;[Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;)I

    move-result p0

    .line 559
    invoke-static {p3, v7, v8, p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->buildManifestEventTrackGroupInfos(Ljava/util/List;[Lio/bidmachine/media3/common/TrackGroup;[Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;I)V

    .line 561
    new-instance p0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {p0, v7}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;-><init>([Lio/bidmachine/media3/common/TrackGroup;)V

    invoke-static {p0, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static canMergeAdaptationSets(Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;)Z
    .registers 6

    .line 658
    iget v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->type:I

    iget v1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->type:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    .line 661
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_40

    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_40

    .line 664
    :cond_1a
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->format:Lio/bidmachine/media3/common/Format;

    .line 665
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->format:Lio/bidmachine/media3/common/Format;

    .line 666
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget p0, p0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    iget p1, p1, Lio/bidmachine/media3/common/Format;->roleFlags:I

    if-ne p0, p1, :cond_3f

    return v1

    :cond_3f
    return v2

    :cond_40
    :goto_40
    return v1
.end method

.method public static findAdaptationSetSwitchingProperty(Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;"
        }
    .end annotation

    .line 874
    const-string v0, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-static {p0, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->findDescriptor(Ljava/util/List;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public static findDescriptor(Ljava/util/List;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 884
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 885
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    .line 886
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findTrickPlayProperty(Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;"
        }
    .end annotation

    .line 879
    const-string v0, "http://dashif.org/guidelines/trickmode"

    invoke-static {p0, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->findDescriptor(Ljava/util/List;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public static getClosedCaptionTrackFormats(Ljava/util/List;[I)[Lio/bidmachine/media3/common/Format;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;[I)[",
            "Lio/bidmachine/media3/common/Format;"
        }
    .end annotation

    .line 909
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_97

    aget v3, p1, v2

    .line 910
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 911
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    move v5, v1

    .line 912
    :goto_16
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_93

    .line 913
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    .line 914
    iget-object v7, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    const-string v8, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 915
    new-instance p0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string p1, "application/cea-608"

    .line 917
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, v4, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":cea608"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 918
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 919
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    .line 920
    sget-object p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->CEA608_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    invoke-static {v6, p1, p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->parseClosedCaptionDescriptor(Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;Ljava/util/regex/Pattern;Lio/bidmachine/media3/common/Format;)[Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0

    .line 922
    :cond_59
    const-string v7, "urn:scte:dash:cc:cea-708:2015"

    iget-object v8, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 923
    new-instance p0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string p1, "application/cea-708"

    .line 925
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, v4, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":cea708"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 927
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    .line 928
    sget-object p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->CEA708_SERVICE_DESCRIPTOR_REGEX:Ljava/util/regex/Pattern;

    invoke-static {v6, p1, p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->parseClosedCaptionDescriptor(Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;Ljava/util/regex/Pattern;Lio/bidmachine/media3/common/Format;)[Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0

    :cond_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 933
    :cond_97
    new-array p0, v1, [Lio/bidmachine/media3/common/Format;

    return-object p0
.end method

.method public static getGroupedAdaptationSetIndices(Ljava/util/List;)[[I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;)[[I"
        }
    .end annotation

    .line 579
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 581
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 582
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 583
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_14
    if-ge v5, v0, :cond_3e

    .line 589
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    iget-wide v6, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 591
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_3e
    move v5, v4

    :goto_3f
    if-ge v5, v0, :cond_cd

    .line 599
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 603
    iget-object v7, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->essentialProperties:Ljava/util/List;

    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->findTrickPlayProperty(Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v7

    if-nez v7, :cond_55

    .line 606
    iget-object v7, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->findTrickPlayProperty(Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v7

    :cond_55
    if-eqz v7, :cond_6e

    .line 609
    iget-object v7, v7, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 610
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_6e

    .line 612
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_6f

    :cond_6e
    move v7, v5

    :goto_6f
    if-ne v7, v5, :cond_b2

    .line 620
    iget-object v8, v6, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->supplementalProperties:Ljava/util/List;

    .line 621
    invoke-static {v8}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->findAdaptationSetSwitchingProperty(Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;

    move-result-object v8

    if-eqz v8, :cond_b2

    .line 623
    iget-object v8, v8, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    const-string v9, ","

    invoke-static {v8, v9}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 624
    array-length v9, v8

    move v10, v4

    :goto_83
    if-ge v10, v9, :cond_b2

    aget-object v11, v8, v10

    .line 627
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_af

    .line 630
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 629
    invoke-static {v6, v12}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->canMergeAdaptationSets(Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;)Z

    move-result v12

    if-eqz v12, :cond_af

    .line 631
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_af
    add-int/lit8 v10, v10, 0x1

    goto :goto_83

    :cond_b2
    if-eq v7, v5, :cond_c9

    .line 639
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 640
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 641
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 642
    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 643
    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_c9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3f

    .line 647
    :cond_cd
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array v0, p0, [[I

    :goto_d3
    if-ge v4, p0, :cond_e7

    .line 649
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    aput-object v1, v0, v4

    .line 651
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d3

    :cond_e7
    return-object v0
.end method

.method public static hasEventMessageTrack(Ljava/util/List;[I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;[I)Z"
        }
    .end annotation

    .line 895
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2c

    aget v3, p1, v2

    .line 896
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    move v4, v1

    .line 897
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_29

    .line 898
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    .line 899
    iget-object v5, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2c
    return v1
.end method

.method public static identifyEmbeddedTracks(ILjava/util/List;[[I[Z[[Lio/bidmachine/media3/common/Format;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;",
            ">;[[I[Z[[",
            "Lio/bidmachine/media3/common/Format;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p0, :cond_21

    .line 691
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->hasEventMessageTrack(Ljava/util/List;[I)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    .line 692
    aput-boolean v2, p3, v0

    add-int/lit8 v1, v1, 0x1

    .line 695
    :cond_11
    aget-object v2, p2, v0

    .line 696
    invoke-static {p1, v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->getClosedCaptionTrackFormats(Ljava/util/List;[I)[Lio/bidmachine/media3/common/Format;

    move-result-object v2

    aput-object v2, p4, v0

    .line 697
    array-length v2, v2

    if-eqz v2, :cond_1e

    add-int/lit8 v1, v1, 0x1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_21
    return v1
.end method

.method public static maybeUpdateFormatsForParsedText(Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;[Lio/bidmachine/media3/common/Format;)V
    .registers 4

    const/4 v0, 0x0

    .line 969
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 970
    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;->getOutputTextFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public static newSampleStreamArray(I)[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .line 977
    new-array p0, p0, [Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    return-object p0
.end method

.method public static parseClosedCaptionDescriptor(Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;Ljava/util/regex/Pattern;Lio/bidmachine/media3/common/Format;)[Lio/bidmachine/media3/common/Format;
    .registers 10

    .line 938
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Descriptor;->value:Ljava/lang/String;

    if-nez p0, :cond_9

    .line 941
    filled-new-array {p2}, [Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0

    .line 943
    :cond_9
    const-string v0, ";"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 944
    array-length v0, p0

    new-array v0, v0, [Lio/bidmachine/media3/common/Format;

    const/4 v1, 0x0

    .line 945
    :goto_13
    array-length v2, p0

    if-ge v1, v2, :cond_64

    .line 946
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 947
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_27

    .line 949
    filled-new-array {p2}, [Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 v3, 0x1

    .line 951
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 954
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 955
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    .line 956
    invoke-virtual {v4, v3}, Lio/bidmachine/media3/common/Format$Builder;->setAccessibilityChannel(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    const/4 v4, 0x2

    .line 957
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    .line 958
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_64
    return-object v0
.end method


# virtual methods
.method public final buildSampleStream(Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;J)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;",
            "J)",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    move-object/from16 v5, p0

    move-object/from16 v0, p1

    .line 799
    iget v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_e

    move/from16 v16, v2

    goto :goto_10

    :cond_e
    move/from16 v16, v3

    :goto_10
    const/4 v6, 0x0

    if-eqz v16, :cond_1b

    .line 803
    iget-object v7, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 804
    invoke-virtual {v7, v1}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v1

    move v7, v2

    goto :goto_1d

    :cond_1b
    move v7, v3

    move-object v1, v6

    .line 808
    :goto_1d
    iget v8, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrackGroupIndex:I

    if-eq v8, v4, :cond_28

    .line 810
    iget-object v4, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackGroupInfos:[Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v4, v4, v8

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrackOriginalFormats:Lcom/google/common/collect/ImmutableList;

    goto :goto_2c

    .line 811
    :cond_28
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 812
    :goto_2c
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    add-int/2addr v7, v8

    .line 814
    new-array v8, v7, [Lio/bidmachine/media3/common/Format;

    .line 815
    new-array v7, v7, [I

    if-eqz v16, :cond_42

    .line 818
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v1

    aput-object v1, v8, v3

    const/4 v1, 0x5

    .line 819
    aput v1, v7, v3

    move v1, v2

    goto :goto_43

    :cond_42
    move v1, v3

    .line 822
    :goto_43
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 823
    :goto_48
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-ge v3, v10, :cond_60

    .line 824
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/bidmachine/media3/common/Format;

    aput-object v10, v8, v1

    const/4 v11, 0x3

    .line 825
    aput v11, v7, v1

    .line 826
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 831
    :cond_60
    iget-object v1, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v1, :cond_6e

    if-eqz v16, :cond_6e

    .line 832
    iget-object v1, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->playerEmsgHandler:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->newPlayerTrackEmsgHandler()Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    move-result-object v6

    :cond_6e
    move-object/from16 v18, v6

    .line 834
    iget-object v6, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    move-object v2, v7

    iget-object v7, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

    move-object v3, v8

    iget-object v8, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    move-object/from16 v17, v9

    iget-object v9, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

    iget v10, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->periodIndex:I

    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    iget v13, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    iget-wide v14, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->elapsedRealtimeOffsetMs:J

    iget-object v1, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->transferListener:Lio/bidmachine/media3/datasource/TransferListener;

    iget-object v4, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    const/16 v21, 0x0

    move-object/from16 v12, p2

    move-object/from16 v19, v1

    move-object/from16 v20, v4

    .line 835
    invoke-interface/range {v6 .. v21}, Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;->createDashChunkSource(Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;I[ILio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;IJZLjava/util/List;Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;)Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;

    move-result-object v4

    move-object/from16 v15, v18

    .line 850
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    iget-object v6, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    iget-object v9, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    iget-object v10, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v11, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v12, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-boolean v13, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->canReportInitialDiscontinuity:Z

    const/4 v14, 0x0

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    move-wide/from16 v7, p3

    invoke-direct/range {v0 .. v14}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;-><init>(I[I[Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;Lio/bidmachine/media3/exoplayer/upstream/Allocator;JLio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;ZLio/bidmachine/media3/exoplayer/util/ReleasableExecutor;)V

    .line 865
    monitor-enter p0

    .line 867
    :try_start_b0
    iget-object v1, v5, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    monitor-exit p0

    return-object v0

    :catchall_b7
    move-exception v0

    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_b0 .. :try_end_b9} :catchall_b7

    throw v0
.end method

.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 3

    .line 339
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 8

    .line 321
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 322
    invoke-virtual {v3, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 10

    .line 380
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    .line 381
    iget v4, v3, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->primaryTrackType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 382
    invoke-virtual {v3, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    return-wide p1

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_15
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 364
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 349
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPrimaryStreamIndex(I[I)I
    .registers 7

    .line 509
    aget p1, p2, p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    return v0

    .line 513
    :cond_6
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackGroupInfos:[Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object p1, v1, p1

    iget p1, p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    const/4 v1, 0x0

    .line 514
    :goto_d
    array-length v2, p2

    if-ge v1, v2, :cond_20

    .line 515
    aget v2, p2, v1

    if-ne v2, p1, :cond_1d

    .line 516
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackGroupInfos:[Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v2, v3, v2

    iget v2, v2, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    if-nez v2, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_20
    return v0
.end method

.method public final getStreamIndexToTrackGroupIndex([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)[I
    .registers 6

    .line 398
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 399
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    .line 400
    aget-object v2, p1, v1

    if-eqz v2, :cond_18

    .line 401
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->indexOf(Lio/bidmachine/media3/common/TrackGroup;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_1b

    :cond_18
    const/4 v2, -0x1

    .line 403
    aput v2, v0, v1

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1e
    return-object v0
.end method

.method public getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 233
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 344
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V
    .registers 2

    .line 80
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .line 392
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public declared-synchronized onSampleStreamReleased(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream<",
            "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackEmsgHandlerBySampleStream:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz p1, :cond_11

    .line 214
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->release()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_13

    .line 216
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw p1
.end method

.method public prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .registers 4

    .line 222
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    .line 223
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public readDiscontinuity()J
    .registers 5

    .line 354
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 355
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->consumeInitialDiscontinuity()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 356
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->initialStartTimeUs:J

    return-wide v0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 9

    .line 328
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 329
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->isLoading()Z

    move-result v4

    if-nez v4, :cond_19

    .line 330
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget v5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->periodIndex:I

    invoke-virtual {v4, v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    .line 331
    invoke-virtual {v3, v4, v5}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->discardUpstreamSamplesForClippedDuration(J)V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 334
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method

.method public release()V
    .registers 5

    .line 201
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->playerEmsgHandler:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->release()V

    .line 202
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 203
    invoke-virtual {v3, p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->release(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    return-void
.end method

.method public final releaseDisabledStreams([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;)V
    .registers 7

    const/4 v0, 0x0

    .line 411
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_27

    .line 412
    aget-object v1, p1, v0

    if-eqz v1, :cond_c

    aget-boolean v1, p2, v0

    if-nez v1, :cond_24

    .line 413
    :cond_c
    aget-object v1, p3, v0

    instance-of v2, v1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    if-eqz v2, :cond_18

    .line 415
    check-cast v1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 417
    invoke-virtual {v1, p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->release(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    goto :goto_21

    .line 418
    :cond_18
    instance-of v2, v1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v2, :cond_21

    .line 419
    check-cast v1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->release()V

    :cond_21
    :goto_21
    const/4 v1, 0x0

    .line 421
    aput-object v1, p3, v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public final releaseOrphanEmbeddedStreams([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Lio/bidmachine/media3/exoplayer/source/SampleStream;[I)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 428
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_3f

    .line 429
    aget-object v2, p2, v1

    instance-of v3, v2, Lio/bidmachine/media3/exoplayer/source/EmptySampleStream;

    if-nez v3, :cond_f

    instance-of v2, v2, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v2, :cond_3c

    .line 431
    :cond_f
    invoke-virtual {p0, v1, p3}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->getPrimaryStreamIndex(I[I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 436
    aget-object v2, p2, v1

    instance-of v2, v2, Lio/bidmachine/media3/exoplayer/source/EmptySampleStream;

    goto :goto_2c

    .line 440
    :cond_1b
    aget-object v3, p2, v1

    instance-of v4, v3, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v4, :cond_2b

    check-cast v3, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    aget-object v2, p2, v2

    if-ne v3, v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    move v2, v0

    :goto_2c
    if-nez v2, :cond_3c

    .line 445
    aget-object v2, p2, v1

    instance-of v3, v2, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v3, :cond_39

    .line 446
    check-cast v2, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->release()V

    :cond_39
    const/4 v2, 0x0

    .line 448
    aput-object v2, p2, v1

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3f
    return-void
.end method

.method public seekToUs(J)J
    .registers 8

    .line 369
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    .line 370
    invoke-virtual {v4, p1, p2}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->seekToUs(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 372
    :cond_f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->eventSampleStreams:[Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;

    array-length v1, v0

    :goto_12
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 373
    invoke-virtual {v3, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;->seekToUs(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1c
    return-wide p1
.end method

.method public final selectNewStreams([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ[I)V
    .registers 13

    const/4 v0, 0x0

    move v1, v0

    .line 461
    :goto_2
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_55

    .line 462
    aget-object v2, p1, v1

    if-nez v2, :cond_b

    goto :goto_52

    .line 466
    :cond_b
    aget-object v4, p2, v1

    if-nez v4, :cond_43

    .line 468
    aput-boolean v3, p3, v1

    .line 469
    aget v3, p6, v1

    .line 470
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackGroupInfos:[Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object v3, v4, v3

    .line 471
    iget v4, v3, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    if-nez v4, :cond_22

    .line 472
    invoke-virtual {p0, v3, v2, p4, p5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->buildSampleStream(Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;J)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_52

    :cond_22
    const/4 v5, 0x2

    if-ne v4, v5, :cond_52

    .line 474
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    iget v3, v3, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->eventStreamGroupIndex:I

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;

    .line 475
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v2

    .line 476
    new-instance v4, Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean v5, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    invoke-direct {v4, v3, v2, v5}, Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;-><init>(Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;Lio/bidmachine/media3/common/Format;Z)V

    aput-object v4, p2, v1

    goto :goto_52

    .line 478
    :cond_43
    instance-of v3, v4, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    if-eqz v3, :cond_52

    .line 481
    check-cast v4, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 482
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->getChunkSource()Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;

    invoke-interface {v3, v2}, Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;->updateTrackSelection(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)V

    :cond_52
    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 488
    :cond_55
    :goto_55
    array-length p3, p1

    if-ge v0, p3, :cond_88

    .line 489
    aget-object p3, p2, v0

    if-nez p3, :cond_85

    aget-object p3, p1, v0

    if-eqz p3, :cond_85

    .line 490
    aget p3, p6, v0

    .line 491
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->trackGroupInfos:[Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    aget-object p3, v1, p3

    .line 492
    iget v1, p3, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    if-ne v1, v3, :cond_85

    .line 493
    invoke-virtual {p0, v0, p6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->getPrimaryStreamIndex(I[I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_79

    .line 497
    new-instance p3, Lio/bidmachine/media3/exoplayer/source/EmptySampleStream;

    invoke-direct {p3}, Lio/bidmachine/media3/exoplayer/source/EmptySampleStream;-><init>()V

    aput-object p3, p2, v0

    goto :goto_85

    .line 499
    :cond_79
    aget-object v1, p2, v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    iget p3, p3, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 501
    invoke-virtual {v1, p4, p5, p3}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->selectEmbeddedTrack(JI)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    move-result-object p3

    aput-object p3, p2, v0

    :cond_85
    :goto_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_88
    return-void
.end method

.method public selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J
    .registers 14

    .line 285
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->getStreamIndexToTrackGroupIndex([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)[I

    move-result-object v6

    .line 286
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->releaseDisabledStreams([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;)V

    .line 287
    invoke-virtual {p0, p1, p3, v6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->releaseOrphanEmbeddedStreams([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Lio/bidmachine/media3/exoplayer/source/SampleStream;[I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    .line 288
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->selectNewStreams([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ[I)V

    .line 291
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    array-length p3, v2

    const/4 p4, 0x0

    move p5, p4

    :goto_1f
    if-ge p5, p3, :cond_39

    aget-object p6, v2, p5

    .line 294
    instance-of v1, p6, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    if-eqz v1, :cond_2d

    .line 296
    check-cast p6, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 298
    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 299
    :cond_2d
    instance-of v1, p6, Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;

    if-eqz v1, :cond_36

    .line 300
    check-cast p6, Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;

    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    :goto_36
    add-int/lit8 p5, p5, 0x1

    goto :goto_1f

    .line 303
    :cond_39
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    move-result-object p3

    iput-object p3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 304
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 305
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;

    iput-object p3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->eventSampleStreams:[Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;

    .line 306
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 308
    iget-object p2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    new-instance p3, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$$ExternalSyntheticLambda0;-><init>()V

    .line 311
    invoke-static {p1, p3}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p3

    .line 309
    invoke-interface {p2, p1, p3}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->create(Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    .line 312
    iget-boolean p1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->canReportInitialDiscontinuity:Z

    if-eqz p1, :cond_6a

    .line 313
    iput-boolean p4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->canReportInitialDiscontinuity:Z

    .line 314
    iput-wide v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->initialStartTimeUs:J

    :cond_6a
    return-wide v4
.end method

.method public updateManifest(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;I)V
    .registers 12

    .line 177
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 178
    iput p2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->periodIndex:I

    .line 179
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->playerEmsgHandler:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->updateManifest(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;)V

    .line 180
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 181
    array-length v2, v0

    move v3, v1

    :goto_10
    if-ge v3, v2, :cond_20

    aget-object v4, v0, v3

    .line 182
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;->getChunkSource()Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSource;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;

    invoke-interface {v4, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;->updateManifest(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 184
    :cond_20
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->callback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    .line 186
    :cond_25
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->eventStreams:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    .line 187
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->eventSampleStreams:[Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;

    array-length v2, v0

    move v3, v1

    :goto_31
    if-ge v3, v2, :cond_69

    aget-object v4, v0, v3

    .line 188
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->eventStreams:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;

    .line 189
    invoke-virtual {v6}, Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;->eventStreamId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 190
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    .line 191
    iget-boolean v8, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v8, :cond_62

    if-ne p2, v5, :cond_62

    goto :goto_63

    :cond_62
    move v7, v1

    :goto_63
    invoke-virtual {v4, v6, v7}, Lio/bidmachine/media3/exoplayer/dash/EventSampleStream;->updateEventStream(Lio/bidmachine/media3/exoplayer/dash/manifest/EventStream;Z)V

    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_69
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaPeriod.TrackGroupInfo (io.bidmachine.media3.exoplayer.dash.DashMediaPeriod$TrackGroupInfo)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackGroupInfo"
.end annotation


# instance fields
.field public final adaptationSetIndices:[I

.field public final embeddedClosedCaptionTrackGroupIndex:I

.field public final embeddedClosedCaptionTrackOriginalFormats:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final embeddedEventMessageTrackGroupIndex:I

.field public final eventStreamGroupIndex:I

.field public final primaryTrackGroupIndex:I

.field public final trackGroupCategory:I

.field public final trackType:I


# direct methods
.method public constructor <init>(II[IIIIILcom/google/common/collect/ImmutableList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[IIIII",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .line 1083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 1085
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    .line 1086
    iput p2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    .line 1087
    iput p4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    .line 1088
    iput p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    .line 1089
    iput p6, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrackGroupIndex:I

    .line 1090
    iput p7, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->eventStreamGroupIndex:I

    .line 1091
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;->embeddedClosedCaptionTrackOriginalFormats:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static embeddedClosedCaptionTrack([IILcom/google/common/collect/ImmutableList;)Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/Format;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;"
        }
    .end annotation

    .line 1052
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v5, -0x1

    move-object v3, p0

    move v4, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static embeddedEmsgTrack([II)Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 11

    .line 1037
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v7, -0x1

    .line 1045
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static mpdEventTrack(I)Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 10

    .line 1064
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v1, 0x0

    new-array v3, v1, [I

    const/4 v6, -0x1

    .line 1072
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, -0x1

    move v7, p0

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static primaryTrack(I[IIII)Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;
    .registers 14

    .line 1024
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v7, -0x1

    .line 1032
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    const/4 v2, 0x0

    move v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaPeriod$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.dash.DashMediaPeriod$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod$$ExternalSyntheticLambda0;
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
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->$r8$lambda$0OCHeHerXwxmbX9IRljSEd8foog(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkSampleStream;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
