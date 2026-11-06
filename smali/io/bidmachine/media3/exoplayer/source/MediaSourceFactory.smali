###### Class io.bidmachine.media3.exoplayer.source.MediaSourceFactory (io.bidmachine.media3.exoplayer.source.MediaSourceFactory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNSUPPORTED:Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory$1;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;->UNSUPPORTED:Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSourceFactory.AnonymousClass1 (io.bidmachine.media3.exoplayer.source.MediaSourceFactory$1)
.class public Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory$1;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MediaSource;
    .registers 2

    .line 59
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory$1;->setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;
    .registers 2

    .line 0
    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory$1;->setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;
    .registers 2

    .line 0
    return-object p0
.end method
