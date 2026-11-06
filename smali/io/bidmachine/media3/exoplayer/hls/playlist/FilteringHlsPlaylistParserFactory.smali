###### Class io.bidmachine.media3.exoplayer.hls.playlist.FilteringHlsPlaylistParserFactory (io.bidmachine.media3.exoplayer.hls.playlist.FilteringHlsPlaylistParserFactory)
.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "FilteringHlsPlaylistParserFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;


# instance fields
.field public final hlsPlaylistParserFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

.field public final streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    .line 43
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createPlaylistParser()Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    .line 49
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser()Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;-><init>(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    return-object v0
.end method

.method public createPlaylistParser(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .registers 5
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

    .line 56
    new-instance v0, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;->hlsPlaylistParserFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    .line 57
    invoke-interface {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;

    move-result-object p1

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;->streamKeys:Ljava/util/List;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;-><init>(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    return-object v0
.end method
