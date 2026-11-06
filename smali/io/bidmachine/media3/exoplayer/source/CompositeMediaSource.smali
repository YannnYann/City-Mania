###### Class io.bidmachine.media3.exoplayer.source.CompositeMediaSource (io.bidmachine.media3.exoplayer.source.CompositeMediaSource)
.class public abstract Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;,
        Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;"
    }
.end annotation


# instance fields
.field public final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public eventHandler:Landroid/os/Handler;

.field public mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;


# direct methods
.method public static synthetic $r8$lambda$5LWHbxfHNmRWD6eC-QFflsRkzBo(Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V
    .registers 4

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public disableInternal()V
    .registers 4

    .line 77
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    .line 78
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->disable(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public enableInternal()V
    .registers 4

    .line 69
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    .line 70
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->enable(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public abstract getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;"
        }
    .end annotation
.end method

.method public getMediaTimeForChildMediaTime(Ljava/lang/Object;JLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")J"
        }
    .end annotation

    .line 0
    return-wide p2
.end method

.method public getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 0
    return p2
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    .line 62
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public abstract onChildSourceInfoRefreshed(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource;",
            "Lio/bidmachine/media3/common/Timeline;",
            ")V"
        }
    .end annotation
.end method

.method public final prepareChildSource(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource;",
            ")V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 117
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 119
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;-><init>(Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;Ljava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    new-instance v3, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-direct {v3, p2, v0, v1}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->addEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 122
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->addDrmEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;)V

    .line 123
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->getPlayerId()Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->prepareSource(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 124
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_47

    .line 125
    invoke-interface {p2, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->disable(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :cond_47
    return-void
.end method

.method public prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

    .line 55
    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    return-void
.end method

.method public releaseSourceInternal()V
    .registers 5

    .line 85
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    .line 86
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->releaseSource(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 87
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;

    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->removeEventListener(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 88
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;

    invoke-interface {v2, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->removeDrmEventListener(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;)V

    goto :goto_a

    .line 90
    :cond_2c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.CompositeMediaSource.ForwardingEventListener (io.bidmachine.media3.exoplayer.source.CompositeMediaSource$ForwardingEventListener)
.class public final Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;
.implements Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field public drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final id:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 232
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createDrmEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 233
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .registers 5

    if-eqz p2, :cond_e

    .line 361
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p2, 0x0

    .line 367
    :cond_f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I

    move-result p1

    .line 368
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v1, v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    if-ne v1, p1, :cond_25

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 369
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 370
    :cond_25
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 372
    :cond_2d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget v1, v0, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    if-ne v1, p1, :cond_3b

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 373
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 374
    :cond_3b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createDrmEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    :cond_43
    const/4 p1, 0x1

    return p1
.end method

.method public final maybeUpdateMediaLoadData(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaLoadData;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 381
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->mediaStartTimeMs:J

    .line 382
    invoke-virtual {v3, v4, v5, v6, v2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Object;JLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)J

    move-result-wide v13

    .line 383
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->mediaEndTimeMs:J

    .line 384
    invoke-virtual {v3, v4, v5, v6, v2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Object;JLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)J

    move-result-wide v15

    .line 385
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->mediaStartTimeMs:J

    cmp-long v2, v13, v2

    if-nez v2, :cond_27

    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->mediaEndTimeMs:J

    cmp-long v2, v15, v2

    if-nez v2, :cond_27

    return-object v1

    .line 389
    :cond_27
    new-instance v7, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget v8, v1, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->dataType:I

    iget v9, v1, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->trackType:I

    iget-object v10, v1, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v11, v1, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->trackSelectionReason:I

    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    invoke-direct/range {v7 .. v16}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    return-object v7
.end method

.method public onDownstreamFormatChanged(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 304
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 305
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 306
    invoke-virtual {p0, p3, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    move-result-object p2

    .line 305
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    :cond_f
    return-void
.end method

.method public onDrmKeysLoaded(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 3

    .line 322
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 323
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    :cond_b
    return-void
.end method

.method public onDrmKeysRemoved(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 3

    .line 344
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 345
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    :cond_b
    return-void
.end method

.method public onDrmKeysRestored(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 3

    .line 337
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 338
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    :cond_b
    return-void
.end method

.method public onDrmSessionAcquired(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .registers 4

    .line 315
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 316
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    :cond_b
    return-void
.end method

.method public onDrmSessionManagerError(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .registers 4

    .line 330
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 331
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    :cond_b
    return-void
.end method

.method public onDrmSessionReleased(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 3

    .line 351
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 352
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    :cond_b
    return-void
.end method

.method public onLoadCanceled(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 269
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 270
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 271
    invoke-virtual {p0, p4, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    move-result-object p2

    .line 270
    invoke-virtual {p1, p3, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    :cond_f
    return-void
.end method

.method public onLoadCompleted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 257
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 258
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 259
    invoke-virtual {p0, p4, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    move-result-object p2

    .line 258
    invoke-virtual {p1, p3, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    :cond_f
    return-void
.end method

.method public onLoadError(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7

    .line 283
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 284
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 286
    invoke-virtual {p0, p4, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    move-result-object p2

    .line 284
    invoke-virtual {p1, p3, p2, p5, p6}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    :cond_f
    return-void
.end method

.method public onLoadStarted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V
    .registers 6

    .line 245
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 246
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 247
    invoke-virtual {p0, p4, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    move-result-object p2

    .line 246
    invoke-virtual {p1, p3, p2, p5}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V

    :cond_f
    return-void
.end method

.method public onUpstreamDiscarded(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 295
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 296
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 297
    invoke-virtual {p0, p3, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    move-result-object p2

    .line 296
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    :cond_f
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.CompositeMediaSource.MediaSourceAndListener (io.bidmachine.media3.exoplayer.source.CompositeMediaSource$MediaSourceAndListener)
.class public final Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceAndListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final caller:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource<",
            "TT;>.ForwardingEvent",
            "Listener;"
        }
    .end annotation
.end field

.field public final mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;",
            "Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource<",
            "TT;>.ForwardingEvent",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    .line 218
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    .line 219
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.CompositeMediaSource$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.source.CompositeMediaSource$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->$r8$lambda$5LWHbxfHNmRWD6eC-QFflsRkzBo(Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method
