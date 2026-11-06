###### Class io.bidmachine.media3.exoplayer.hls.HlsManifest (io.bidmachine.media3.exoplayer.hls.HlsManifest)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsManifest;
.super Ljava/lang/Object;
.source "HlsManifest.java"


# instance fields
.field public final mediaPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

.field public final multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsManifest;->multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 39
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsManifest;->mediaPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    return-void
.end method
