###### Class io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistParserFactory (io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistParserFactory)
.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistParserFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPlaylistParser()Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>()V

    return-object v0
.end method

.method public createPlaylistParser(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            ")",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    return-object v0
.end method
