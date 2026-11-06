###### Class io.bidmachine.media3.exoplayer.source.WrappingMediaSource (io.bidmachine.media3.exoplayer.source.WrappingMediaSource)
.class public abstract Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;
.source "WrappingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHILD_SOURCE_ID:Ljava/lang/Void;


# instance fields
.field public final mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    .line 63
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    return-void
.end method


# virtual methods
.method public getInitialTimeline()Lio/bidmachine/media3/common/Timeline;
    .registers 2

    .line 84
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->getInitialTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItem()Lio/bidmachine/media3/common/MediaItem;
    .registers 2

    .line 100
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getMediaPeriodIdForChildMediaPeriodId(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 2

    .line 0
    return-object p1
.end method

.method public bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 3

    .line 49
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public final getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 3

    .line 190
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public getMediaTimeForChildMediaTime(JLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)J
    .registers 4

    .line 0
    return-wide p1
.end method

.method public bridge synthetic getMediaTimeForChildMediaTime(Ljava/lang/Object;JLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)J
    .registers 5

    .line 49
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Void;JLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getMediaTimeForChildMediaTime(Ljava/lang/Void;JLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)J
    .registers 5

    .line 210
    invoke-virtual {p0, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->getMediaTimeForChildMediaTime(JLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getWindowIndexForChildWindowIndex(I)I
    .registers 2

    .line 0
    return p1
.end method

.method public bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .registers 3

    .line 49
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->getWindowIndexForChildWindowIndex(Ljava/lang/Void;I)I

    move-result p1

    return p1
.end method

.method public final getWindowIndexForChildWindowIndex(Ljava/lang/Void;I)I
    .registers 3

    .line 172
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->getWindowIndexForChildWindowIndex(I)I

    move-result p1

    return p1
.end method

.method public isSingleWindow()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->isSingleWindow()Z

    move-result v0

    return v0
.end method

.method public abstract onChildSourceInfoRefreshed(Lio/bidmachine/media3/common/Timeline;)V
.end method

.method public bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V
    .registers 4

    .line 49
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public final onChildSourceInfoRefreshed(Ljava/lang/Void;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V
    .registers 4

    .line 154
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public final prepareChildSource()V
    .registers 3

    .line 240
    sget-object v0, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public prepareSourceInternal()V
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->prepareChildSource()V

    return-void
.end method

.method public final prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 2

    .line 68
    invoke-super {p0, p1}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V

    .line 69
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->prepareSourceInternal()V

    return-void
.end method

.method public updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V
    .registers 3

    .line 122
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V

    return-void
.end method
