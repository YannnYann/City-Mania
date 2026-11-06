###### Class io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaSource (io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaSource)
.class public final Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;
.source "ExternallyLoadedMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final externalLoader:Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

.field public mediaItem:Lio/bidmachine/media3/common/MediaItem;

.field public final timelineDurationUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem;JLio/bidmachine/media3/exoplayer/source/ExternalLoader;)V
    .registers 5

    .line 99
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;-><init>()V

    .line 100
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    .line 101
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;->timelineDurationUs:J

    .line 102
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;->externalLoader:Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem;JLio/bidmachine/media3/exoplayer/source/ExternalLoader;Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$1;)V
    .registers 6

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;-><init>(Lio/bidmachine/media3/common/MediaItem;JLio/bidmachine/media3/exoplayer/source/ExternalLoader;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 5

    .line 151
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object p1

    .line 152
    iget-object p2, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object p2, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object p2, p2, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const-string p3, "Externally loaded mediaItems require a MIME type."

    invoke-static {p2, p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object p3, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;->externalLoader:Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

    invoke-direct {p2, p3, p1, p4}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;-><init>(Landroid/net/Uri;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/source/ExternalLoader;)V

    return-object p2
.end method

.method public declared-synchronized getMediaItem()Lio/bidmachine/media3/common/MediaItem;
    .registers 2

    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    .line 0
    return-void
.end method

.method public prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 10

    .line 107
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;->timelineDurationUs:J

    const/4 v6, 0x0

    .line 114
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lio/bidmachine/media3/common/MediaItem;)V

    .line 115
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 2

    .line 161
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->releasePeriod()V

    return-void
.end method

.method public releaseSourceInternal()V
    .registers 1

    .line 0
    return-void
.end method

.method public declared-synchronized updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V
    .registers 2

    monitor-enter p0

    .line 141
    :try_start_1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 142
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

###### Class io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaSource.AnonymousClass1 (io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaSource$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$1;
.super Ljava/lang/Object;
.source "ExternallyLoadedMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaSource.Factory (io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaSource$Factory)
.class public final Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;
.super Ljava/lang/Object;
.source "ExternallyLoadedMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final externalLoader:Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

.field public final timelineDurationUs:J


# direct methods
.method public constructor <init>(JLio/bidmachine/media3/exoplayer/source/ExternalLoader;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;->timelineDurationUs:J

    .line 63
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;->externalLoader:Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

    return-void
.end method


# virtual methods
.method public createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;
    .registers 8

    .line 89
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;->timelineDurationUs:J

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;->externalLoader:Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;-><init>(Lio/bidmachine/media3/common/MediaItem;JLio/bidmachine/media3/exoplayer/source/ExternalLoader;Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$1;)V

    return-object v0
.end method

.method public bridge synthetic createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MediaSource;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;->createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 0
    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 0
    return-object p0
.end method
