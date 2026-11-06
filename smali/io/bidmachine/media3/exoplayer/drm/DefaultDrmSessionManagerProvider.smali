###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManagerProvider (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManagerProvider)
.class public final Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManagerProvider.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;


# instance fields
.field public drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

.field public drmHttpDataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public drmLoadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final lock:Ljava/lang/Object;

.field public manager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final createManager(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;
    .registers 6

    .line 106
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmHttpDataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    if-eqz v0, :cond_5

    goto :goto_10

    .line 108
    :cond_5
    new-instance v0, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lio/bidmachine/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 109
    :goto_10
    new-instance v1, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;

    .line 111
    iget-object v2, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1c
    iget-boolean v3, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    invoke-direct {v1, v2, v3, v0}, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLio/bidmachine/media3/datasource/DataSource$Factory;)V

    .line 114
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lio/bidmachine/media3/exoplayer/drm/HttpMediaDrmCallback;->setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 117
    :cond_47
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;-><init>()V

    iget-object v2, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    sget-object v3, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;

    .line 119
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setUuidAndExoMediaDrmProvider(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    iget-boolean v2, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->multiSession:Z

    .line 121
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setMultiSession(Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    iget-boolean v2, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 122
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setPlayClearSamplesWithoutKeys(Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    iget-object v2, p1, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 124
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setUseDrmSessionsForClearContent([I)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    .line 125
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmLoadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    if-eqz v2, :cond_71

    .line 126
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;

    .line 128
    :cond_71
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->build(Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1}, Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->setMode(I[B)V

    return-object v0
.end method

.method public get(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;
    .registers 4

    .line 88
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    if-nez p1, :cond_e

    .line 92
    sget-object p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    return-object p1

    .line 95
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_11
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 97
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->drmConfiguration:Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;

    .line 98
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->createManager(Lio/bidmachine/media3/common/MediaItem$DrmConfiguration;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->manager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    goto :goto_24

    :catchall_22
    move-exception p1

    goto :goto_2e

    .line 100
    :cond_24
    :goto_24
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;->manager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    monitor-exit v0

    return-object p1

    .line 101
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_22

    throw p1
.end method
