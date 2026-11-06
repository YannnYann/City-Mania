###### Class io.bidmachine.media3.exoplayer.source.BaseMediaSource (io.bidmachine.media3.exoplayer.source.BaseMediaSource)
.class public abstract Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;
.super Ljava/lang/Object;
.source "BaseMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSource;


# instance fields
.field public final drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final enabledMediaSourceCallers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;",
            ">;"
        }
    .end annotation
.end field

.field public final eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public looper:Landroid/os/Looper;

.field public final mediaSourceCallers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;",
            ">;"
        }
    .end annotation
.end field

.field public playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

.field public timeline:Lio/bidmachine/media3/common/Timeline;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    .line 54
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 55
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    return-void
.end method


# virtual methods
.method public final addDrmEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;)V
    .registers 4

    .line 222
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;)V

    return-void
.end method

.method public final addEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 4

    .line 208
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method

.method public final createDrmEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    .registers 4

    .line 170
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->withParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method public final createDrmEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
    .registers 4

    .line 156
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->withParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method public final createEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .registers 4

    .line 118
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method public final createEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .registers 4

    .line 104
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method public final disable(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    .registers 4

    .line 276
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 277
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez v0, :cond_18

    .line 278
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 279
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->disableInternal()V

    :cond_18
    return-void
.end method

.method public disableInternal()V
    .registers 1

    .line 0
    return-void
.end method

.method public final enable(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    .registers 4

    .line 265
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->looper:Landroid/os/Looper;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 267
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_15

    .line 269
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->enableInternal()V

    :cond_15
    return-void
.end method

.method public enableInternal()V
    .registers 1

    .line 0
    return-void
.end method

.method public final getPlayerId()Lio/bidmachine/media3/exoplayer/analytics/PlayerId;
    .registers 2

    .line 185
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    return-object v0
.end method

.method public final isEnabled()Z
    .registers 2

    .line 175
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final prepareSource(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 6

    .line 247
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->looper:Landroid/os/Looper;

    if-eqz v1, :cond_d

    if-ne v1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 249
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    .line 250
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 251
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->looper:Landroid/os/Looper;

    if-nez v1, :cond_29

    .line 253
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->looper:Landroid/os/Looper;

    .line 254
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V

    return-void

    :cond_29
    if-eqz p3, :cond_31

    .line 257
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->enable(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 258
    invoke-interface {p1, p0, p3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;->onSourceInfoRefreshed(Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V

    :cond_31
    return-void
.end method

.method public abstract prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V
.end method

.method public final refreshSourceInfo(Lio/bidmachine/media3/common/Timeline;)V
    .registers 4

    .line 88
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 89
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    .line 90
    invoke-interface {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;->onSourceInfoRefreshed(Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final releaseSource(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    .registers 3

    .line 286
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->looper:Landroid/os/Looper;

    .line 289
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 290
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    .line 291
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 292
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->releaseSourceInternal()V

    return-void

    .line 294
    :cond_1d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->disable(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    return-void
.end method

.method public abstract releaseSourceInternal()V
.end method

.method public final removeDrmEventListener(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;)V
    .registers 3

    .line 230
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->removeEventListener(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;)V

    return-void
.end method

.method public final removeEventListener(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 3

    .line 216
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->removeEventListener(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method
