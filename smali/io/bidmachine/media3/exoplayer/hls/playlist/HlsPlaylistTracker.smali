###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker (io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker)
.class public interface abstract Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
.end method

.method public deactivatePlaylistForPlayback(Landroid/net/Uri;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract excludeMediaPlaylist(Landroid/net/Uri;J)Z
.end method

.method public abstract getInitialStartTimeUs()J
.end method

.method public abstract getMultivariantPlaylist()Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
.end method

.method public abstract getPlaylistSnapshot(Landroid/net/Uri;Z)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
.end method

.method public abstract isLive()Z
.end method

.method public abstract isSnapshotValid(Landroid/net/Uri;)Z
.end method

.method public abstract maybeThrowPlaylistRefreshError(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract maybeThrowPrimaryPlaylistRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract refreshPlaylist(Landroid/net/Uri;)V
.end method

.method public abstract removeListener(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
.end method

.method public abstract start(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V
.end method

.method public abstract stop()V
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker.Factory (io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker$Factory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createTracker(Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener (io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker$PlaylistEventListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaylistEventListener"
.end annotation


# virtual methods
.method public abstract onPlaylistChanged()V
.end method

.method public abstract onPlaylistError(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistResetException (io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker$PlaylistResetException)
.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;
.super Ljava/io/IOException;
.source "HlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistResetException"
.end annotation


# instance fields
.field public final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .line 117
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 118
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;->url:Landroid/net/Uri;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistStuckException (io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker$PlaylistStuckException)
.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;
.super Ljava/io/IOException;
.source "HlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistStuckException"
.end annotation


# instance fields
.field public final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .line 101
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 102
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;->url:Landroid/net/Uri;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PrimaryPlaylistListener (io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistTracker$PrimaryPlaylistListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PrimaryPlaylistListener"
.end annotation


# virtual methods
.method public abstract onPrimaryPlaylistRefreshed(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
.end method
