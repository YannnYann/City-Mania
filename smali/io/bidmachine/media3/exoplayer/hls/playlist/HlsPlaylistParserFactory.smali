###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParserFactory (io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParserFactory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "HlsPlaylistParserFactory.java"


# virtual methods
.method public abstract createPlaylistParser()Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createPlaylistParser(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
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
.end method
