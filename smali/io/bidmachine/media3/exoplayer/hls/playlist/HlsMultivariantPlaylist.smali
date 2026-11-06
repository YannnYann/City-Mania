###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist (io.bidmachine.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist)
.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
.super Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;
.source "HlsMultivariantPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;
    }
.end annotation


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;


# instance fields
.field public final audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final closedCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPlaylistUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final muxedAudioFormat:Lio/bidmachine/media3/common/Format;

.field public final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final sessionKeyDrmInitData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field

.field public final variableDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;"
        }
    .end annotation
.end field

.field public final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 35
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 38
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v10, 0x0

    .line 47
    sget-object v11, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 48
    const-string v1, ""

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v9, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->EMPTY:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-direct {p0, p1, p2, p10}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 219
    invoke-static {p3, p4, p5, p6, p7}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->getMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 218
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->mediaPlaylistUrls:Ljava/util/List;

    .line 220
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    .line 221
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->videos:Ljava/util/List;

    .line 222
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    .line 223
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    .line 224
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->closedCaptions:Ljava/util/List;

    .line 225
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lio/bidmachine/media3/common/Format;

    if-eqz p9, :cond_34

    .line 227
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    .line 228
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    .line 229
    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    return-void
.end method

.method public static addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 296
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 297
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    if-eqz v1, :cond_1a

    .line 298
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 299
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method public static copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 317
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 318
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move v4, v1

    .line 319
    :goto_16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_31

    .line 320
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/common/StreamKey;

    .line 321
    iget v6, v5, Lio/bidmachine/media3/common/StreamKey;->groupIndex:I

    if-ne v6, p1, :cond_2e

    iget v5, v5, Lio/bidmachine/media3/common/StreamKey;->streamIndex:I

    if-ne v5, v2, :cond_2e

    .line 322
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_34
    return-object v0
.end method

.method public static createSingleVariantMultivariantPlaylist(Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .registers 14

    .line 259
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->createMediaPlaylistVariantUrl(Landroid/net/Uri;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 260
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 262
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v10, 0x0

    .line 271
    sget-object v11, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 272
    const-string v1, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v0
.end method

.method public static getMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 282
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 283
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 284
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 285
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 288
    :cond_20
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 289
    invoke-static {p2, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 290
    invoke-static {p3, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    .line 291
    invoke-static {p4, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->addMediaPlaylistUrls(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/util/List;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/StreamKey;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;"
        }
    .end annotation

    .line 234
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->tags:Ljava/util/List;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    const/4 v4, 0x0

    .line 237
    invoke-static {v3, v4, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 239
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->audios:Ljava/util/List;

    const/4 v6, 0x1

    .line 240
    invoke-static {v5, v6, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->subtitles:Ljava/util/List;

    const/4 v7, 0x2

    .line 241
    invoke-static {v6, v7, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->copyStreams(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 243
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedAudioFormat:Lio/bidmachine/media3/common/Format;

    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->muxedCaptionFormats:Ljava/util/List;

    iget-boolean v10, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    iget-object v11, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    iget-object v12, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->sessionKeyDrmInitData:Ljava/util/List;

    move-object v7, v4

    invoke-direct/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/bidmachine/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->copy(Ljava/util/List;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist.Rendition (io.bidmachine.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist$Rendition)
.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;
.super Ljava/lang/Object;
.source "HlsMultivariantPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rendition"
.end annotation


# instance fields
.field public final format:Lio/bidmachine/media3/common/Format;

.field public final groupId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->url:Landroid/net/Uri;

    .line 146
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->format:Lio/bidmachine/media3/common/Format;

    .line 147
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->groupId:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;->name:Ljava/lang/String;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist.Variant (io.bidmachine.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist$Variant)
.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
.super Ljava/lang/Object;
.source "HlsMultivariantPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# instance fields
.field public final audioGroupId:Ljava/lang/String;

.field public final captionGroupId:Ljava/lang/String;

.field public final format:Lio/bidmachine/media3/common/Format;

.field public final subtitleGroupId:Ljava/lang/String;

.field public final url:Landroid/net/Uri;

.field public final videoGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 92
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Lio/bidmachine/media3/common/Format;

    .line 93
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->subtitleGroupId:Ljava/lang/String;

    .line 96
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->captionGroupId:Ljava/lang/String;

    return-void
.end method

.method public static createMediaPlaylistVariantUrl(Landroid/net/Uri;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .registers 9

    .line 106
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v1, "0"

    .line 107
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-mpegURL"

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v3

    .line 108
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;-><init>(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public copyWithFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .registers 9

    .line 119
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->subtitleGroupId:Ljava/lang/String;

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->captionGroupId:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;-><init>(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
