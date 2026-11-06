###### Class io.bidmachine.media3.exoplayer.hls.HlsMediaPeriod (io.bidmachine.media3.exoplayer.hls.HlsMediaPeriod)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
.implements Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;
    }
.end annotation


# instance fields
.field public final allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

.field public final allowChunklessPreparation:Z

.field public audioVideoSampleStreamWrapperCount:I

.field public compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

.field public final compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field public final dataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

.field public final drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

.field public enabledSampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field public final eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

.field public final loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public manifestUrlIndicesPerWrapper:[[I

.field public mediaPeriodCallback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

.field public final mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

.field public final metadataType:I

.field public pendingPrepareCount:I

.field public final playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

.field public final playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field public final sampleStreamWrapperCallback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

.field public sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field public final streamWrapperIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lio/bidmachine/media3/exoplayer/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final timestampAdjusterInitializationTimeoutMs:J

.field public final timestampAdjusterProvider:Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;

.field public trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

.field public final useSessionKeys:Z


# direct methods
.method public static synthetic $r8$lambda$VimcVEDipKC6tMDIvPplDkFD0Oc(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)Ljava/util/List;
    .registers 1

    .line 385
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->getTrackTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;ZIZLio/bidmachine/media3/exoplayer/analytics/PlayerId;J)V
    .registers 18

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    .line 148
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 149
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->dataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    .line 150
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

    .line 152
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    .line 153
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 154
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 155
    iput-object p9, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 156
    iput-object p10, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    .line 157
    iput-object p11, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 158
    iput-boolean p12, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    .line 159
    iput p13, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->metadataType:I

    .line 160
    iput-boolean p14, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->useSessionKeys:Z

    .line 161
    iput-object p15, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-wide/from16 p1, p16

    .line 162
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterInitializationTimeoutMs:J

    .line 163
    new-instance p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$1;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrapperCallback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    .line 164
    invoke-interface {p11}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->empty()Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    .line 165
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    .line 166
    new-instance p1, Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;

    const/4 p1, 0x0

    .line 167
    new-array p2, p1, [Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 168
    new-array p2, p1, [Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 169
    new-array p1, p1, [[I

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    return-void
.end method

.method public static synthetic access$106(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)I
    .registers 2

    .line 70
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    return v0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .registers 1

    .line 70
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    return-object p0
.end method

.method public static synthetic access$302(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 70
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    return-object p1
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;
    .registers 1

    .line 70
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
    .registers 1

    .line 70
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    return-object p0
.end method

.method public static deriveAudioFormat(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;Z)Lio/bidmachine/media3/common/Format;
    .registers 15

    .line 881
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_18

    .line 883
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 884
    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    .line 885
    iget v3, p1, Lio/bidmachine/media3/common/Format;->channelCount:I

    .line 886
    iget v4, p1, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    .line 887
    iget v5, p1, Lio/bidmachine/media3/common/Format;->roleFlags:I

    .line 888
    iget-object v6, p1, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    .line 889
    iget-object v7, p1, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    .line 890
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    goto :goto_3b

    .line 892
    :cond_18
    iget-object p1, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lio/bidmachine/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 893
    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    if-eqz p2, :cond_33

    .line 895
    iget v3, p0, Lio/bidmachine/media3/common/Format;->channelCount:I

    .line 896
    iget v4, p0, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    .line 897
    iget v5, p0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    .line 898
    iget-object v6, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    .line 899
    iget-object v7, p0, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_3b

    :cond_33
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    move v3, v1

    move v5, v4

    move-object v7, v6

    .line 903
    :goto_3b
    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz p2, :cond_44

    .line 904
    iget v9, p0, Lio/bidmachine/media3/common/Format;->averageBitrate:I

    goto :goto_45

    :cond_44
    move v9, v1

    :goto_45
    if-eqz p2, :cond_49

    .line 905
    iget v1, p0, Lio/bidmachine/media3/common/Format;->peakBitrate:I

    .line 906
    :cond_49
    new-instance p2, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p2}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    iget-object v10, p0, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    .line 907
    invoke-virtual {p2, v10}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 908
    invoke-virtual {p2, v7}, Lio/bidmachine/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 909
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 910
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 911
    invoke-virtual {p0, v8}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 912
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 913
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 914
    invoke-virtual {p0, v9}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 915
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 916
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 917
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/Format$Builder;->setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 918
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 919
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 920
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public static deriveOverridingDrmInitData(Ljava/util/List;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 828
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 829
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 830
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/DrmInitData;

    .line 831
    iget-object v4, v3, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    .line 837
    :goto_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3b

    .line 838
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/common/DrmInitData;

    .line 839
    iget-object v7, v6, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 840
    invoke-virtual {v3, v6}, Lio/bidmachine/media3/common/DrmInitData;->merge(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v3

    .line 841
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 846
    :cond_3b
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_3f
    return-object v1
.end method

.method public static deriveVideoFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;
    .registers 5

    .line 852
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 854
    new-instance v2, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v2}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    iget-object v3, p0, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    .line 855
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    .line 856
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    .line 857
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 858
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    .line 859
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 860
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    .line 861
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/common/Format;->averageBitrate:I

    .line 862
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/common/Format;->peakBitrate:I

    .line 863
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/common/Format;->width:I

    .line 864
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/common/Format;->height:I

    .line 865
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/common/Format;->frameRate:F

    .line 866
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setFrameRate(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    .line 867
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget p0, p0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    .line 868
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    .line 869
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildAndPrepareAudioSampleStreamWrappers(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 732
    new-instance v1, Ljava/util/ArrayList;

    .line 733
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 734
    new-instance v2, Ljava/util/ArrayList;

    .line 735
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 736
    new-instance v3, Ljava/util/ArrayList;

    .line 737
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 738
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 740
    :goto_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_ee

    .line 742
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    iget-object v7, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    .line 743
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    move-object/from16 v11, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    goto/16 :goto_ea

    .line 749
    :cond_40
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 750
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 751
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x1

    move v9, v5

    move v10, v8

    .line 753
    :goto_4c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_88

    .line 754
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    iget-object v11, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    invoke-static {v7, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_85

    .line 755
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 756
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v12, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v12, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v11, v11, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Lio/bidmachine/media3/common/Format;

    iget-object v11, v11, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 760
    invoke-static {v11, v8}, Lio/bidmachine/media3/common/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v8, :cond_83

    move v11, v8

    goto :goto_84

    :cond_83
    move v11, v5

    :goto_84
    and-int/2addr v10, v11

    :cond_85
    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    .line 764
    :cond_88
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audio:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 765
    new-array v7, v5, [Landroid/net/Uri;

    .line 769
    invoke-static {v7}, Lio/bidmachine/media3/common/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/Uri;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, [Landroid/net/Uri;

    new-array v7, v5, [Lio/bidmachine/media3/common/Format;

    .line 770
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, [Lio/bidmachine/media3/common/Format;

    const/16 v16, 0x0

    .line 772
    sget-object v17, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v13, 0x1

    move-object/from16 v11, p0

    move-wide/from16 v19, p1

    move-object/from16 v18, p6

    .line 766
    invoke-virtual/range {v11 .. v20}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move-result-object v7

    .line 775
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v8

    move-object/from16 v9, p5

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p4

    .line 776
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    iget-boolean v13, v11, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v13, :cond_ea

    if-eqz v10, :cond_ea

    .line 779
    new-array v10, v5, [Lio/bidmachine/media3/common/Format;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lio/bidmachine/media3/common/Format;

    .line 780
    new-instance v13, Lio/bidmachine/media3/common/TrackGroup;

    invoke-direct {v13, v12, v10}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    filled-new-array {v13}, [Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v10

    new-array v12, v5, [I

    invoke-virtual {v7, v10, v5, v12}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepareWithMultivariantPlaylistInfo([Lio/bidmachine/media3/common/TrackGroup;I[I)V

    :cond_ea
    :goto_ea
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_24

    :cond_ee
    move-object/from16 v11, p0

    return-void
.end method

.method public final buildAndPrepareMainSampleStreamWrapper(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;",
            "J",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;",
            ">;",
            "Ljava/util/List<",
            "[I>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p1

    .line 599
    iget-object v0, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v11, 0x0

    move v2, v11

    move v3, v2

    move v4, v3

    .line 602
    :goto_e
    iget-object v5, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v12, 0x1

    if-ge v2, v5, :cond_47

    .line 603
    iget-object v5, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 604
    iget-object v5, v5, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lio/bidmachine/media3/common/Format;

    .line 605
    iget v7, v5, Lio/bidmachine/media3/common/Format;->height:I

    if-gtz v7, :cond_40

    iget-object v7, v5, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v7, v6}, Lio/bidmachine/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2f

    goto :goto_40

    .line 608
    :cond_2f
    iget-object v5, v5, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v5, v12}, Lio/bidmachine/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3c

    .line 609
    aput v12, v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_3c
    const/4 v5, -0x1

    .line 612
    aput v5, v1, v2

    goto :goto_44

    .line 606
    :cond_40
    :goto_40
    aput v6, v1, v2

    add-int/lit8 v3, v3, 0x1

    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_47
    if-lez v3, :cond_4d

    move v13, v3

    move v2, v11

    move v0, v12

    goto :goto_57

    :cond_4d
    if-ge v4, v0, :cond_54

    sub-int/2addr v0, v4

    move v13, v0

    move v0, v11

    move v2, v12

    goto :goto_57

    :cond_54
    move v13, v0

    move v0, v11

    move v2, v0

    .line 630
    :goto_57
    new-array v3, v13, [Landroid/net/Uri;

    .line 631
    new-array v4, v13, [Lio/bidmachine/media3/common/Format;

    .line 632
    new-array v14, v13, [I

    move v5, v11

    move v7, v5

    .line 634
    :goto_5f
    iget-object v8, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_8b

    if-eqz v0, :cond_6d

    .line 635
    aget v8, v1, v5

    if-ne v8, v6, :cond_88

    :cond_6d
    if-eqz v2, :cond_73

    aget v8, v1, v5

    if-eq v8, v12, :cond_88

    .line 637
    :cond_73
    iget-object v8, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 638
    iget-object v9, v8, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    aput-object v9, v3, v7

    .line 639
    iget-object v8, v8, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lio/bidmachine/media3/common/Format;

    aput-object v8, v4, v7

    add-int/lit8 v8, v7, 0x1

    .line 640
    aput v5, v14, v7

    move v7, v8

    :cond_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    .line 643
    :cond_8b
    aget-object v1, v4, v11

    iget-object v1, v1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 644
    invoke-static {v1, v6}, Lio/bidmachine/media3/common/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v15

    .line 645
    invoke-static {v1, v12}, Lio/bidmachine/media3/common/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v12, :cond_a3

    if-nez v1, :cond_ac

    .line 646
    iget-object v2, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 648
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ac

    :cond_a3
    if-gt v15, v12, :cond_ac

    add-int v2, v1, v15

    if-lez v2, :cond_ac

    move/from16 v16, v12

    goto :goto_ae

    :cond_ac
    move/from16 v16, v11

    :goto_ae
    if-nez v0, :cond_b4

    if-lez v1, :cond_b4

    move v2, v12

    goto :goto_b5

    :cond_b4
    move v2, v11

    .line 657
    :goto_b5
    iget-object v5, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lio/bidmachine/media3/common/Format;

    iget-object v6, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    move v0, v1

    .line 658
    const-string v1, "main"

    move-wide/from16 v8, p2

    move-object/from16 v7, p6

    move/from16 v17, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move-result-object v2

    move-object v3, v1

    move-object/from16 v1, p4

    .line 667
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p5

    .line 668
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->allowChunklessPreparation:Z

    if-eqz v1, :cond_1c4

    if-eqz v16, :cond_1c4

    .line 670
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-lez v15, :cond_165

    .line 672
    new-array v5, v13, [Lio/bidmachine/media3/common/Format;

    move v6, v11

    :goto_e3
    if-ge v6, v13, :cond_f0

    .line 674
    aget-object v7, v4, v6

    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->deriveVideoFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e3

    .line 676
    :cond_f0
    new-instance v6, Lio/bidmachine/media3/common/TrackGroup;

    invoke-direct {v6, v3, v5}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v17, :cond_12b

    .line 678
    iget-object v5, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lio/bidmachine/media3/common/Format;

    if-nez v5, :cond_106

    iget-object v5, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 680
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12b

    .line 681
    :cond_106
    new-instance v5, Lio/bidmachine/media3/common/TrackGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":audio"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v4, v4, v11

    iget-object v7, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lio/bidmachine/media3/common/Format;

    .line 684
    invoke-static {v4, v7, v11}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->deriveAudioFormat(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;Z)Lio/bidmachine/media3/common/Format;

    move-result-object v4

    filled-new-array {v4}, [Lio/bidmachine/media3/common/Format;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    .line 681
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_12b
    iget-object v4, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    if-eqz v4, :cond_17f

    move v5, v11

    .line 691
    :goto_130
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_17f

    .line 692
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":cc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 693
    new-instance v7, Lio/bidmachine/media3/common/TrackGroup;

    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    .line 694
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/media3/common/Format;

    invoke-interface {v8, v9}, Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;->getOutputTextFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    move-result-object v8

    filled-new-array {v8}, [Lio/bidmachine/media3/common/Format;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    .line 693
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_130

    .line 699
    :cond_165
    new-array v5, v13, [Lio/bidmachine/media3/common/Format;

    move v6, v11

    :goto_168
    if-ge v6, v13, :cond_177

    .line 701
    aget-object v7, v4, v6

    iget-object v8, v10, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lio/bidmachine/media3/common/Format;

    .line 702
    invoke-static {v7, v8, v12}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->deriveAudioFormat(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;Z)Lio/bidmachine/media3/common/Format;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_168

    .line 707
    :cond_177
    new-instance v4, Lio/bidmachine/media3/common/TrackGroup;

    invoke-direct {v4, v3, v5}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_17f
    new-instance v4, Lio/bidmachine/media3/common/TrackGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":id3"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v5}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v6, "ID3"

    .line 714
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    const-string v6, "application/id3"

    .line 715
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    .line 716
    invoke-virtual {v5}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v5

    filled-new-array {v5}, [Lio/bidmachine/media3/common/Format;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    .line 717
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    new-array v3, v11, [Lio/bidmachine/media3/common/TrackGroup;

    .line 720
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/bidmachine/media3/common/TrackGroup;

    .line 722
    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    .line 719
    invoke-virtual {v2, v3, v11, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepareWithMultivariantPlaylistInfo([Lio/bidmachine/media3/common/TrackGroup;I[I)V

    :cond_1c4
    return-void
.end method

.method public final buildAndPrepareSampleStreamWrappers(J)V
    .registers 19

    move-object/from16 v0, p0

    .line 488
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 489
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getMultivariantPlaylist()Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 491
    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->useSessionKeys:Z

    if-eqz v2, :cond_1a

    .line 492
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->deriveOverridingDrmInitData(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    :goto_18
    move-object v6, v2

    goto :goto_1d

    .line 493
    :cond_1a
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_18

    .line 495
    :goto_1d
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 496
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 497
    iget-object v10, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    const/4 v11, 0x0

    .line 499
    iput v11, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    .line 500
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 501
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_3b

    move-wide/from16 v2, p1

    .line 504
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->buildAndPrepareMainSampleStreamWrapper(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;JLjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    :cond_3b
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object v3, v7

    .line 514
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->buildAndPrepareAudioSampleStreamWrappers(JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    move-object v12, v4

    move-object v13, v5

    .line 521
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    move v14, v11

    .line 525
    :goto_4c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_b1

    .line 526
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subtitle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 529
    iget-object v15, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Lio/bidmachine/media3/common/Format;

    .line 530
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    filled-new-array {v1}, [Landroid/net/Uri;

    move-result-object v3

    filled-new-array {v15}, [Lio/bidmachine/media3/common/Format;

    move-result-object v4

    const/4 v5, 0x0

    move-object v7, v6

    .line 537
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v1, v2

    const/4 v2, 0x3

    move-wide/from16 v8, p1

    .line 531
    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move-result-object v2

    move-object v6, v7

    .line 540
    filled-new-array {v14}, [I

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v3, Lio/bidmachine/media3/common/TrackGroup;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    .line 546
    invoke-interface {v4, v15}, Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;->getOutputTextFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    move-result-object v4

    filled-new-array {v4}, [Lio/bidmachine/media3/common/Format;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lio/bidmachine/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Lio/bidmachine/media3/common/Format;)V

    filled-new-array {v3}, [Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v1

    new-array v3, v11, [I

    .line 542
    invoke-virtual {v2, v1, v11, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->prepareWithMultivariantPlaylistInfo([Lio/bidmachine/media3/common/TrackGroup;I[I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4c

    .line 551
    :cond_b1
    new-array v1, v11, [Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 552
    new-array v1, v11, [[I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->manifestUrlIndicesPerWrapper:[[I

    .line 553
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v1

    iput v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->pendingPrepareCount:I

    move v1, v11

    .line 555
    :goto_cb
    iget v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    if-ge v1, v2, :cond_da

    .line 556
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->setIsPrimaryTimestampSource(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    .line 558
    :cond_da
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v2, v1

    :goto_dd
    if-ge v11, v2, :cond_e7

    aget-object v3, v1, v11

    .line 559
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->continuePreparing()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_dd

    .line 562
    :cond_e7
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    return-void
.end method

.method public final buildSampleStreamWrapper(Ljava/lang/String;I[Landroid/net/Uri;[Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;Ljava/util/List;Ljava/util/Map;J)Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Landroid/net/Uri;",
            "[",
            "Lio/bidmachine/media3/common/Format;",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;J)",
            "Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 796
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->dataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;

    iget-wide v9, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterInitializationTimeoutMs:J

    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    const/4 v13, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v13}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;JLjava/util/List;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;)V

    .line 809
    new-instance v2, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrapperCallback:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v14, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v15, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->metadataType:I

    move/from16 v3, p2

    move-object/from16 v10, p5

    move-object/from16 v6, p7

    move-wide/from16 v8, p8

    move-object v5, v1

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;-><init>(Ljava/lang/String;ILio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;Ljava/util/Map;Lio/bidmachine/media3/exoplayer/upstream/Allocator;JLio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;I)V

    return-object v1
.end method

.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 6

    .line 403
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    if-nez v0, :cond_14

    .line 405
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_13

    aget-object v3, p1, v2

    .line 406
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->continuePreparing()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return v1

    .line 410
    :cond_14
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 8

    .line 391
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 392
    invoke-virtual {v3, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 9

    .line 453
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 454
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->isVideoSampleStream()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 455
    invoke-virtual {v3, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    return-wide p1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 431
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 421
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 197
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 416
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

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

    .line 189
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 190
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->maybeThrowPrepareError()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public onPlaylistChanged()V
    .registers 5

    .line 468
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 469
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->onPlaylistUpdated()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 471
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .registers 9

    .line 478
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_11

    aget-object v4, v0, v3

    .line 479
    invoke-virtual {v4, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->onPlaylistError(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 481
    :cond_11
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    return v2
.end method

.method public prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .registers 4

    .line 182
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    .line 183
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->addListener(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 184
    invoke-virtual {p0, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->buildAndPrepareSampleStreamWrappers(J)V

    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 4

    .line 398
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    return-void
.end method

.method public release()V
    .registers 5

    .line 173
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->removeListener(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V

    .line 174
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 175
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->mediaPeriodCallback:Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    return-void
.end method

.method public seekToUs(J)J
    .registers 7

    .line 436
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v1, v0

    if-lez v1, :cond_21

    const/4 v1, 0x0

    .line 439
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 440
    :goto_d
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 441
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1a
    if-eqz v0, :cond_21

    .line 444
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;->reset()V

    :cond_21
    return-wide p1
.end method

.method public selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 295
    array-length v3, v1

    new-array v3, v3, [I

    .line 296
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 297
    :goto_d
    array-length v7, v1

    if-ge v6, v7, :cond_4a

    .line 299
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_17

    move v7, v8

    goto :goto_23

    :cond_17
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v9, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_23
    aput v7, v3, v6

    .line 300
    aput v8, v4, v6

    .line 301
    aget-object v7, v1, v6

    if-eqz v7, :cond_47

    .line 302
    invoke-interface {v7}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v7

    const/4 v9, 0x0

    .line 303
    :goto_30
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v11, v10

    if-ge v9, v11, :cond_47

    .line 304
    aget-object v10, v10, v9

    invoke-virtual {v10}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->indexOf(Lio/bidmachine/media3/common/TrackGroup;)I

    move-result v10

    if-eq v10, v8, :cond_44

    .line 305
    aput v9, v4, v6

    goto :goto_47

    :cond_44
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 313
    :cond_4a
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 315
    array-length v6, v1

    new-array v7, v6, [Lio/bidmachine/media3/exoplayer/source/SampleStream;

    .line 316
    array-length v8, v1

    new-array v12, v8, [Lio/bidmachine/media3/exoplayer/source/SampleStream;

    .line 317
    array-length v8, v1

    new-array v10, v8, [Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 319
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v8, v8

    new-array v8, v8, [Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 321
    :goto_61
    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v13, v13

    if-ge v9, v13, :cond_f4

    const/4 v13, 0x0

    .line 322
    :goto_67
    array-length v14, v1

    if-ge v13, v14, :cond_80

    .line 323
    aget v14, v3, v13

    const/4 v15, 0x0

    if-ne v14, v9, :cond_72

    aget-object v14, v2, v13

    goto :goto_73

    :cond_72
    move-object v14, v15

    :goto_73
    aput-object v14, v12, v13

    .line 324
    aget v14, v4, v13

    if-ne v14, v9, :cond_7b

    aget-object v15, v1, v13

    :cond_7b
    aput-object v15, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_67

    .line 326
    :cond_80
    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->sampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    aget-object v13, v13, v9

    move-wide/from16 v14, p5

    move-object/from16 v18, v3

    move v3, v9

    move v5, v11

    move-object v9, v13

    const/16 v17, 0x0

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    .line 328
    invoke-virtual/range {v9 .. v16}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJZ)Z

    move-result v19

    move/from16 v11, v17

    move v13, v11

    .line 336
    :goto_98
    array-length v14, v1

    if-ge v11, v14, :cond_c1

    .line 337
    aget-object v14, v12, v11

    .line 338
    aget v15, v4, v11

    if-ne v15, v3, :cond_b1

    .line 340
    invoke-static {v14}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    aput-object v14, v7, v11

    .line 343
    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->streamWrapperIndices:Ljava/util/IdentityHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    goto :goto_be

    .line 344
    :cond_b1
    aget v15, v18, v11

    if-ne v15, v3, :cond_be

    if-nez v14, :cond_b9

    const/4 v15, 0x1

    goto :goto_bb

    :cond_b9
    move/from16 v15, v17

    .line 346
    :goto_bb
    invoke-static {v15}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    :cond_be
    :goto_be
    add-int/lit8 v11, v11, 0x1

    goto :goto_98

    :cond_c1
    if-eqz v13, :cond_ed

    .line 350
    aput-object v9, v8, v5

    add-int/lit8 v11, v5, 0x1

    if-nez v5, :cond_e0

    const/4 v5, 0x1

    .line 355
    invoke-virtual {v9, v5}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->setIsPrimaryTimestampSource(Z)V

    if-nez v19, :cond_d8

    .line 356
    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    array-length v14, v13

    if-eqz v14, :cond_d8

    aget-object v13, v13, v17

    if-eq v9, v13, :cond_ee

    .line 361
    :cond_d8
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->timestampAdjusterProvider:Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;

    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;->reset()V

    move/from16 v16, v5

    goto :goto_ee

    :cond_e0
    const/4 v5, 0x1

    .line 369
    iget v13, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->audioVideoSampleStreamWrapperCount:I

    if-ge v3, v13, :cond_e7

    move v15, v5

    goto :goto_e9

    :cond_e7
    move/from16 v15, v17

    :goto_e9
    invoke-virtual {v9, v15}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->setIsPrimaryTimestampSource(Z)V

    goto :goto_ee

    :cond_ed
    move v11, v5

    :cond_ee
    :goto_ee
    add-int/lit8 v9, v3, 0x1

    move-object/from16 v3, v18

    goto/16 :goto_61

    :cond_f4
    move v5, v11

    const/4 v3, 0x0

    .line 374
    invoke-static {v7, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    invoke-static {v8, v5}, Lio/bidmachine/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->enabledSampleStreamWrappers:[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 379
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 380
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    new-instance v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$$ExternalSyntheticLambda0;-><init>()V

    .line 383
    invoke-static {v1, v3}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v3

    .line 381
    invoke-interface {v2, v1, v3}, Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->create(Ljava/util/List;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->compositeSequenceableLoader:Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;

    return-wide p5
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsMediaPeriod.AnonymousClass1 (io.bidmachine.media3.exoplayer.hls.HlsMediaPeriod$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$1;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.hls.HlsMediaPeriod.SampleStreamWrapperCallback (io.bidmachine.media3.exoplayer.hls.HlsMediaPeriod$SampleStreamWrapperCallback)
.class public Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SampleStreamWrapperCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)V
    .registers 2

    .line 923
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$1;)V
    .registers 3

    .line 923
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)V

    return-void
.end method


# virtual methods
.method public onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)V
    .registers 3

    .line 953
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->access$400(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    invoke-interface {p1, v0}, Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V
    .registers 2

    .line 923
    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)V

    return-void
.end method

.method public onPlaylistRefreshRequired(Landroid/net/Uri;)V
    .registers 3

    .line 948
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->access$500(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->refreshPlaylist(Landroid/net/Uri;)V

    return-void
.end method

.method public onPrepared()V
    .registers 12

    .line 926
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->access$106(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)I

    move-result v0

    if-lez v0, :cond_9

    return-void

    .line 931
    :cond_9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->access$200(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_13
    if-ge v3, v1, :cond_21

    aget-object v5, v0, v3

    .line 932
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v5

    iget v5, v5, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 934
    :cond_21
    new-array v0, v4, [Lio/bidmachine/media3/common/TrackGroup;

    .line 936
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->access$200(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)[Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_2c
    if-ge v4, v3, :cond_4c

    aget-object v6, v1, v4

    .line 937
    invoke-virtual {v6}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->length:I

    move v8, v2

    :goto_37
    if-ge v8, v7, :cond_49

    add-int/lit8 v9, v5, 0x1

    .line 939
    invoke-virtual {v6}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_37

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 942
    :cond_4c
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    new-instance v2, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {v2, v0}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;-><init>([Lio/bidmachine/media3/common/TrackGroup;)V

    invoke-static {v1, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->access$302(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 943
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->access$400(Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;)Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$SampleStreamWrapperCallback;->this$0:Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsMediaPeriod$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.hls.HlsMediaPeriod$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod$$ExternalSyntheticLambda0;
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
    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->$r8$lambda$VimcVEDipKC6tMDIvPplDkFD0Oc(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
