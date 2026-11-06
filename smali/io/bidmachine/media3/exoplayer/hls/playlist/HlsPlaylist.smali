###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylist (io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylist)
.class public abstract Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;
.super Ljava/lang/Object;
.source "HlsPlaylist.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/offline/FilterableManifest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/offline/FilterableManifest<",
        "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field public final baseUri:Ljava/lang/String;

.field public final hasIndependentSegments:Z

.field public final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 46
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->tags:Ljava/util/List;

    .line 47
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    return-void
.end method
