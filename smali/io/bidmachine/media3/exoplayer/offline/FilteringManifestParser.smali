###### Class io.bidmachine.media3.exoplayer.offline.FilteringManifestParser (io.bidmachine.media3.exoplayer.offline.FilteringManifestParser)
.class public final Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;
.super Ljava/lang/Object;
.source "FilteringManifestParser.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/bidmachine/media3/exoplayer/offline/FilterableManifest<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final parser:Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+TT;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;->parser:Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;

    .line 44
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lio/bidmachine/media3/exoplayer/offline/FilterableManifest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;->parser:Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/offline/FilterableManifest;

    .line 50
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    if-eqz p2, :cond_1b

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_13

    goto :goto_1b

    :cond_13
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;->streamKeys:Ljava/util/List;

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/offline/FilterableManifest;

    :cond_1b
    :goto_1b
    return-object p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lio/bidmachine/media3/exoplayer/offline/FilterableManifest;

    move-result-object p1

    return-object p1
.end method
