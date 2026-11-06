###### Class io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker (io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker)
.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;,
        Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
        "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
        "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;


# instance fields
.field public final dataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

.field public eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public initialPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

.field public initialStartTimeUs:J

.field public isLive:Z

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

.field public final playlistBundles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;",
            ">;"
        }
    .end annotation
.end field

.field public final playlistParserFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

.field public playlistRefreshHandler:Landroid/os/Handler;

.field public final playlistStuckTargetDurationCoefficient:D

.field public primaryMediaPlaylistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

.field public primaryMediaPlaylistUrl:Landroid/net/Uri;

.field public primaryPlaylistListener:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->FACTORY:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;)V
    .registers 12

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 100
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;D)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;D)V
    .registers 7

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->dataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    .line 127
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistParserFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    .line 128
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 130
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistStuckTargetDurationCoefficient:D

    .line 131
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 132
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 133
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->initialStartTimeUs:J

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .registers 4

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->notifyPlaylistError(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/os/Handler;
    .registers 1

    .line 57
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .registers 1

    .line 57
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    return-object p0
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;
    .registers 1

    .line 57
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistParserFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    return-object p0
.end method

.method public static synthetic access$1400(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;
    .registers 1

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic access$1500(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .registers 1

    .line 57
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    return-object p0
.end method

.method public static synthetic access$1600(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .registers 3

    .line 57
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->getLatestPlaylistSnapshot(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1700(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .registers 3

    .line 57
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->onPlaylistUpdated(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method public static synthetic access$1800(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)D
    .registers 3

    .line 57
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistStuckTargetDurationCoefficient:D

    return-wide v0
.end method

.method public static synthetic access$1900(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/net/Uri;
    .registers 1

    .line 57
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$2000(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Z
    .registers 1

    .line 57
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->maybeSelectNewPrimaryUrl()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2100(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 57
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic access$2200(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Ljava/util/HashMap;
    .registers 1

    .line 57
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;
    .registers 1

    .line 57
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->dataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .registers 1

    .line 57
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    return-object p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .registers 1

    .line 57
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public static getFirstOldOverlappingSegment(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .registers 6

    .line 566
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 567
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 568
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addListener(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
    .registers 3

    .line 190
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final createBundles(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 464
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1a

    .line 466
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 467
    new-instance v3, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-direct {v3, p0, v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;)V

    .line 468
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    return-void
.end method

.method public deactivatePlaylistForPlayback(Landroid/net/Uri;)V
    .registers 3

    .line 263
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->setActiveForPlayback(Z)V

    :cond_e
    return-void
.end method

.method public excludeMediaPlaylist(Landroid/net/Uri;J)Z
    .registers 5

    .line 254
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    if-eqz p1, :cond_11

    .line 256
    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$000(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public getInitialStartTimeUs()J
    .registers 3

    .line 219
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->initialStartTimeUs:J

    return-wide v0
.end method

.method public final getLatestPlaylistSnapshot(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .registers 5

    .line 504
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->isNewerThan(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 505
    iget-boolean p2, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz p2, :cond_e

    .line 510
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->copyWithEndTag()Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    :cond_e
    return-object p1

    .line 515
    :cond_f
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->getLoadedPlaylistStartTimeUs(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)J

    move-result-wide v0

    .line 516
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->getLoadedPlaylistDiscontinuitySequence(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)I

    move-result p1

    .line 517
    invoke-virtual {p2, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->copyWith(JI)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    return-object p1
.end method

.method public final getLoadedPlaylistDiscontinuitySequence(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)I
    .registers 6

    .line 544
    iget-boolean v0, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    if-eqz v0, :cond_7

    .line 545
    iget p1, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    return p1

    .line 549
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 550
    iget v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    if-nez p1, :cond_13

    goto :goto_2a

    .line 555
    :cond_13
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->getFirstOldOverlappingSegment(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 557
    iget p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget v0, v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    add-int/2addr p1, v0

    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 559
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget p2, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    sub-int/2addr p1, p2

    return p1

    :cond_2a
    :goto_2a
    return v0
.end method

.method public final getLoadedPlaylistStartTimeUs(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)J
    .registers 11

    .line 522
    iget-boolean v0, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    if-eqz v0, :cond_7

    .line 523
    iget-wide p1, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    return-wide p1

    .line 526
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_e

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x0

    :goto_10
    if-nez p1, :cond_13

    goto :goto_34

    .line 530
    :cond_13
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 531
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->getFirstOldOverlappingSegment(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 533
    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v0, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long/2addr p1, v0

    return-wide p1

    :cond_25
    int-to-long v2, v2

    .line 534
    iget-wide v4, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-wide v6, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr v4, v6

    cmp-long p2, v2, v4

    if-nez p2, :cond_34

    .line 535
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide p1

    return-wide p1

    :cond_34
    :goto_34
    return-wide v0
.end method

.method public getMultivariantPlaylist()Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .registers 2

    .line 202
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    return-object v0
.end method

.method public getPlaylistSnapshot(Landroid/net/Uri;Z)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .registers 4

    .line 208
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    .line 209
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->getPlaylistSnapshot()Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    if-eqz v0, :cond_16

    if-eqz p2, :cond_16

    .line 211
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->maybeSetPrimaryUrl(Landroid/net/Uri;)V

    .line 212
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->maybeActivateForPlayback(Landroid/net/Uri;)V

    :cond_16
    return-object v0
.end method

.method public final getRequestUriForPrimaryChange(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5

    .line 430
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_35

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->serverControl:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->canBlockReload:Z

    if-eqz v1, :cond_35

    .line 433
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->renditionReports:Ljava/util/Map;

    .line 434
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    if-eqz v0, :cond_35

    .line 436
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 437
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastMediaSequence:J

    .line 438
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 437
    const-string v2, "_HLS_msn"

    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 439
    iget v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastPartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    .line 440
    const-string v1, "_HLS_part"

    .line 441
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 443
    :cond_31
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_35
    return-object p1
.end method

.method public isLive()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->isLive:Z

    return v0
.end method

.method public isSnapshotValid(Landroid/net/Uri;)Z
    .registers 3

    .line 224
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->isSnapshotValid()Z

    move-result p1

    return p1
.end method

.method public final isVariantUrl(Landroid/net/Uri;)Z
    .registers 6

    .line 454
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 455
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 456
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1f
    return v1
.end method

.method public final maybeActivateForPlayback(Landroid/net/Uri;)V
    .registers 4

    .line 416
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    .line 417
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->getPlaylistSnapshot()Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    .line 418
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->isActiveForPlayback()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_20

    :cond_13
    const/4 v1, 0x1

    .line 421
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->setActiveForPlayback(Z)V

    if-eqz v0, :cond_20

    .line 422
    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v0, :cond_20

    .line 425
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist(Z)V

    :cond_20
    :goto_20
    return-void
.end method

.method public final maybeSelectNewPrimaryUrl()Z
    .registers 10

    .line 380
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    .line 381
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v1, :cond_40

    .line 384
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v7, v7, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    .line 385
    invoke-static {v6}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$300(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)J

    move-result-wide v7

    cmp-long v7, v2, v7

    if-lez v7, :cond_3d

    .line 386
    invoke-static {v6}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$400(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    .line 387
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->getRequestUriForPrimaryChange(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v6, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$500(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V

    const/4 v0, 0x1

    return v0

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_40
    return v4
.end method

.method public final maybeSetPrimaryUrl(Landroid/net/Uri;)V
    .registers 5

    .line 395
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 396
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->isVariantUrl(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_17

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_17

    goto :goto_3a

    .line 402
    :cond_17
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    .line 403
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    .line 404
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$600(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 405
    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v2, :cond_33

    .line 406
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 407
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryPlaylistListener:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    invoke-interface {p1, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;->onPrimaryPlaylistRefreshed(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    return-void

    .line 411
    :cond_33
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->getRequestUriForPrimaryChange(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$500(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public maybeThrowPlaylistRefreshError(Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->maybeThrowPlaylistRefreshError()V

    return-void
.end method

.method public maybeThrowPrimaryPlaylistRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->initialPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    .line 232
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    if-eqz v0, :cond_e

    .line 233
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->maybeThrowPlaylistRefreshError(Landroid/net/Uri;)V

    :cond_e
    return-void
.end method

.method public final notifyPlaylistError(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .registers 7

    .line 496
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    .line 497
    invoke-interface {v2, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;->onPlaylistError(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    goto :goto_7

    :cond_1b
    return v1
.end method

.method public bridge synthetic onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .registers 7

    .line 56
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJZ)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;JJZ)V"
        }
    .end annotation

    .line 334
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v1, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 338
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 339
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    .line 342
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 343
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 344
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;I)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .registers 6

    .line 56
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 294
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;

    .line 296
    instance-of v3, v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz v3, :cond_15

    .line 298
    iget-object v4, v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 299
    invoke-static {v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->createSingleVariantMultivariantPlaylist(Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v4

    goto :goto_18

    .line 301
    :cond_15
    move-object v4, v2

    check-cast v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 303
    :goto_18
    iput-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 304
    iget-object v5, v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v5, v5, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    iput-object v5, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    .line 306
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v7, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$1;)V

    invoke-virtual {v5, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->mediaPlaylistUrls:Ljava/util/List;

    invoke-virtual {v0, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->createBundles(Ljava/util/List;)V

    .line 308
    new-instance v7, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v8, v1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v10, v1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 312
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 313
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v12

    .line 316
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v17

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-direct/range {v7 .. v18}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 317
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    if-eqz v3, :cond_62

    .line 320
    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    invoke-static {v4, v2, v7}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$200(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;)V

    goto :goto_65

    .line 322
    :cond_62
    invoke-virtual {v4, v6}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist(Z)V

    .line 324
    :goto_65
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 325
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/4 v2, 0x4

    invoke-virtual {v1, v7, v2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;I)V

    return-void
.end method

.method public bridge synthetic onLoadError(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 8

    .line 56
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p7}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->onLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p6

    .line 354
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 358
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 359
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 362
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 363
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget v3, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-direct {v2, v3}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(I)V

    .line 364
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    new-instance v4, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v5, p7

    invoke-direct {v4, v1, v2, v0, v5}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 365
    invoke-interface {v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_3a

    const/4 v4, 0x1

    goto :goto_3b

    :cond_3a
    move v4, v5

    .line 368
    :goto_3b
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v7, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-virtual {v6, v1, v7, v0, v4}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    if-eqz v4, :cond_4b

    .line 370
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v6, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v0, v6, v7}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_4b
    if-eqz v4, :cond_50

    .line 373
    sget-object p1, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object p1

    .line 374
    :cond_50
    invoke-static {v5, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->createRetryAction(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .registers 7

    .line 56
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJI)V

    return-void
.end method

.method public onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJI)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;JJI)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p6

    if-nez v1, :cond_12

    .line 279
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;J)V

    goto :goto_2c

    .line 280
    :cond_12
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 283
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 284
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 287
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v13

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v2, v3

    .line 288
    :goto_2c
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-virtual {v3, v2, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;II)V

    return-void
.end method

.method public final onPlaylistUpdated(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .registers 5

    .line 479
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 480
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-nez p1, :cond_16

    .line 482
    iget-boolean p1, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->isLive:Z

    .line 483
    iget-wide v0, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->initialStartTimeUs:J

    .line 485
    :cond_16
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 486
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryPlaylistListener:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;->onPrimaryPlaylistRefreshed(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    .line 488
    :cond_1d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;

    .line 489
    invoke-interface {p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;->onPlaylistChanged()V

    goto :goto_23

    :cond_33
    return-void
.end method

.method public refreshPlaylist(Landroid/net/Uri;)V
    .registers 3

    .line 244
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist(Z)V

    return-void
.end method

.method public removeListener(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;)V
    .registers 3

    .line 196
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public start(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V
    .registers 7

    .line 143
    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    .line 144
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->eventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 145
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryPlaylistListener:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;

    .line 146
    new-instance p2, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {p2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    .line 148
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 149
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setFlags(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object p1

    .line 158
    new-instance p3, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->dataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    const/4 v1, 0x4

    .line 160
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;->createDataSource(I)Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistParserFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    .line 163
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser()Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;

    move-result-object v2

    invoke-direct {p3, v0, p1, v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ILio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    .line 164
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->initialPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    if-nez p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 p2, 0x0

    :goto_34
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 165
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/Loader;

    const-string p2, "DefaultHlsPlaylistTracker:MultivariantPlaylist"

    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->initialPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 166
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v0, p3, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 169
    invoke-interface {p2, v0}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result p2

    .line 166
    invoke-virtual {p1, p3, p0, p2}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->startLoading(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;I)J

    return-void
.end method

.method public stop()V
    .registers 4

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistUrl:Landroid/net/Uri;

    .line 175
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->primaryMediaPlaylistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 176
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->multivariantPlaylist:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 177
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->initialStartTimeUs:J

    .line 178
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->initialPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->release()V

    .line 179
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->initialPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 180
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    .line 181
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->release()V

    goto :goto_1f

    .line 183
    :cond_2f
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 184
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistRefreshHandler:Landroid/os/Handler;

    .line 185
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->playlistBundles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker.AnonymousClass1 (io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$1;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker.FirstPrimaryMediaPlaylistListener (io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener)
.class public Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FirstPrimaryMediaPlaylistListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)V
    .registers 2

    .line 914
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$1;)V
    .registers 3

    .line 914
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)V

    return-void
.end method


# virtual methods
.method public onPlaylistChanged()V
    .registers 2

    .line 919
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$2100(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .registers 11

    .line 924
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1500(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_7c

    .line 925
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 927
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1200(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object p3

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iget-object p3, p3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    move v3, v0

    move v4, v3

    .line 928
    :goto_1d
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_46

    .line 930
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$2200(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v6, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    if-eqz v5, :cond_43

    .line 931
    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$300(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_43

    add-int/lit8 v4, v4, 0x1

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 935
    :cond_46
    new-instance p3, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    .line 939
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1200(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v1

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p3, v2, v0, v1, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    .line 942
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    .line 943
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v1

    invoke-interface {v1, p3, p2}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object p2

    if-eqz p2, :cond_7c

    .line 944
    iget p3, p2, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_7c

    .line 946
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$2200(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    if-eqz p1, :cond_7c

    .line 948
    iget-wide p2, p2, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$000(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;J)Z

    :cond_7c
    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker.MediaPlaylistBundle (io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker$MediaPlaylistBundle)
.class public final Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaPlaylistBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
        "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
        "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;>;"
    }
.end annotation


# instance fields
.field public activeForPlayback:Z

.field public earliestNextLoadTimeMs:J

.field public excludeUntilMs:J

.field public lastSnapshotChangeMs:J

.field public lastSnapshotLoadMs:J

.field public loadPending:Z

.field public final mediaPlaylistDataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public final mediaPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

.field public playlistError:Ljava/io/IOException;

.field public playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

.field public final playlistUrl:Landroid/net/Uri;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;


# direct methods
.method public static synthetic $r8$lambda$zsbWO3wctdSp-SCwVwP8zKM_fhY(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    .line 776
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistImmediately(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;)V
    .registers 4

    .line 591
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    .line 593
    new-instance p2, Lio/bidmachine/media3/exoplayer/upstream/Loader;

    const-string v0, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {p2, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 594
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$700(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;->createDataSource(I)Lio/bidmachine/media3/datasource/DataSource;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistDataSource:Lio/bidmachine/media3/datasource/DataSource;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;J)Z
    .registers 3

    .line 572
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->excludePlaylist(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;)V
    .registers 3

    .line 572
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;)V

    return-void
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)J
    .registers 3

    .line 572
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->excludeUntilMs:J

    return-wide v0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)Landroid/net/Uri;
    .registers 1

    .line 572
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V
    .registers 2

    .line 572
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistInternal(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .registers 1

    .line 572
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    return-object p0
.end method


# virtual methods
.method public final excludePlaylist(J)Z
    .registers 5

    .line 904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->excludeUntilMs:J

    .line 905
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1900(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$2000(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Z

    move-result p1

    if-nez p1, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public final getMediaPlaylistUriForReload()Landroid/net/Uri;
    .registers 8

    .line 869
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    if-eqz v0, :cond_7d

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->serverControl:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->skipUntilUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_16

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->canBlockReload:Z

    if-nez v0, :cond_16

    goto :goto_7d

    .line 874
    :cond_16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 875
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->serverControl:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-boolean v2, v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->canBlockReload:Z

    if-eqz v2, :cond_60

    .line 876
    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 877
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v5, v1

    .line 878
    const-string v1, "_HLS_msn"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 879
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_60

    .line 880
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 881
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 882
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_57

    invoke-static {v1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    if-eqz v1, :cond_57

    add-int/lit8 v2, v2, -0x1

    .line 886
    :cond_57
    const-string v1, "_HLS_part"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 889
    :cond_60
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->serverControl:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->skipUntilUs:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_78

    .line 891
    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->canSkipDateRanges:Z

    if-eqz v1, :cond_71

    const-string v1, "v2"

    goto :goto_73

    :cond_71
    const-string v1, "YES"

    .line 890
    :goto_73
    const-string v2, "_HLS_skip"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 893
    :cond_78
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 872
    :cond_7d
    :goto_7d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getPlaylistSnapshot()Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .registers 2

    .line 599
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    return-object v0
.end method

.method public isActiveForPlayback()Z
    .registers 2

    .line 626
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->activeForPlayback:Z

    return v0
.end method

.method public isSnapshotValid()Z
    .registers 11

    .line 603
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 606
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 607
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 608
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-boolean v6, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2f

    iget v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2f

    if-eq v0, v7, :cond_2f

    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotLoadMs:J

    add-long/2addr v8, v4

    cmp-long v0, v8, v2

    if-lez v0, :cond_2e

    goto :goto_2f

    :cond_2e
    return v1

    :cond_2f
    :goto_2f
    return v7
.end method

.method public loadPlaylist(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 615
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->getMediaPlaylistUriForReload()Landroid/net/Uri;

    move-result-object p1

    goto :goto_9

    :cond_7
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    :goto_9
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistInternal(Landroid/net/Uri;)V

    return-void
.end method

.method public final loadPlaylistImmediately(Landroid/net/Uri;)V
    .registers 6

    .line 785
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    .line 786
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1300(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1200(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;->createPlaylistParser(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;

    move-result-object v0

    .line 787
    new-instance v1, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    .line 789
    invoke-virtual {v1, p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 790
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setFlags(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    .line 791
    invoke-virtual {p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object p1

    .line 792
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1400(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;

    .line 801
    new-instance v1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistDataSource:Lio/bidmachine/media3/datasource/DataSource;

    const/4 v3, 0x4

    invoke-direct {v1, v2, p1, v3, v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ILio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    .line 804
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    .line 807
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v0

    iget v2, v1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-interface {v0, v2}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v0

    .line 804
    invoke-virtual {p1, v1, p0, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->startLoading(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;I)J

    return-void
.end method

.method public final loadPlaylistInternal(Landroid/net/Uri;)V
    .registers 8

    const-wide/16 v0, 0x0

    .line 765
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->excludeUntilMs:J

    .line 766
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_3b

    .line 770
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 771
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_38

    const/4 v2, 0x1

    .line 772
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPending:Z

    .line 773
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1100(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 780
    :cond_38
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistImmediately(Landroid/net/Uri;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public maybeThrowPlaylistRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    .line 620
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    if-nez v0, :cond_a

    return-void

    .line 621
    :cond_a
    throw v0
.end method

.method public bridge synthetic onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .registers 7

    .line 572
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJZ)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;JJZ)V"
        }
    .end annotation

    .line 691
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v1, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 695
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 696
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    .line 699
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 700
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v1

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 701
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;I)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .registers 6

    .line 572
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    .line 662
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;

    .line 663
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 667
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 668
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 671
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 672
    instance-of v2, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    const/4 v3, 0x4

    if-eqz v2, :cond_32

    .line 673
    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;)V

    .line 674
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;I)V

    goto :goto_47

    .line 676
    :cond_32
    const-string v0, "Loaded playlist has unexpected type."

    const/4 v2, 0x0

    .line 677
    invoke-static {v0, v2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    .line 679
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 682
    :goto_47
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v0

    iget-wide v1, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    return-void
.end method

.method public bridge synthetic onLoadError(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 8

    .line 572
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p7}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->onLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p6

    .line 711
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 715
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 716
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 719
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 720
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_HLS_msn"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2a

    move v2, v3

    goto :goto_2b

    :cond_2a
    move v2, v4

    .line 721
    :goto_2b
    instance-of v5, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    if-nez v2, :cond_31

    if-eqz v5, :cond_49

    .line 724
    :cond_31
    instance-of v2, v0, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v2, :cond_3b

    .line 725
    move-object v2, v0

    check-cast v2, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v2, v2, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    goto :goto_3e

    :cond_3b
    const v2, 0x7fffffff

    :goto_3e
    if-nez v5, :cond_9d

    const/16 v5, 0x190

    if-eq v2, v5, :cond_9d

    const/16 v5, 0x1f7

    if-ne v2, v5, :cond_49

    goto :goto_9d

    .line 738
    :cond_49
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget v3, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-direct {v2, v3}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(I)V

    .line 739
    new-instance v3, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v5, p7

    invoke-direct {v3, v1, v2, v0, v5}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 741
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    .line 742
    invoke-static {v2, v5, v3, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1000(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 745
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v2

    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v2, v5

    if-eqz v5, :cond_79

    .line 748
    invoke-static {v4, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->createRetryAction(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v2

    goto :goto_7e

    .line 749
    :cond_79
    sget-object v2, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    goto :goto_7e

    .line 751
    :cond_7c
    sget-object v2, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 754
    :goto_7e
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    .line 755
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v5

    iget v6, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-virtual {v5, v1, v6, v0, v4}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    if-nez v3, :cond_9c

    .line 757
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v0

    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_9c
    return-object v2

    .line 731
    :cond_9d
    :goto_9d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    .line 732
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist(Z)V

    .line 733
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget p1, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 734
    invoke-virtual {v2, v1, p1, v0, v3}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 735
    sget-object p1, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object p1
.end method

.method public bridge synthetic onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .registers 7

    .line 572
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJI)V

    return-void
.end method

.method public onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJI)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;",
            ">;JJI)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p6

    if-nez v1, :cond_12

    .line 647
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;J)V

    goto :goto_2c

    .line 648
    :cond_12
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 651
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 652
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 655
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v13

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v2, v3

    .line 656
    :goto_2c
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$800(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v3

    iget v0, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-virtual {v3, v2, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;II)V

    return-void
.end method

.method public final processLoadedPlaylist(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;)V
    .registers 15

    .line 812
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 813
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 814
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotLoadMs:J

    .line 815
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v3, v0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1600(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    const/4 v4, 0x0

    if-eq v3, v0, :cond_1f

    .line 817
    iput-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    .line 818
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotChangeMs:J

    .line 819
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    invoke-static {p1, v4, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1700(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    goto :goto_74

    .line 820
    :cond_1f
    iget-boolean v3, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v3, :cond_74

    .line 823
    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v7, p1

    add-long/2addr v5, v7

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-wide v7, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v3, v5, v7

    const/4 v5, 0x1

    if-gez v3, :cond_3f

    .line 829
    new-instance v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    invoke-direct {v4, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;-><init>(Landroid/net/Uri;)V

    move v3, v5

    goto :goto_5e

    .line 830
    :cond_3f
    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->lastSnapshotChangeMs:J

    sub-long v6, v1, v6

    long-to-double v6, v6

    iget-wide v8, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    .line 831
    invoke-static {v8, v9}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    long-to-double v8, v8

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    .line 832
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1800(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    cmpl-double p1, v6, v8

    const/4 v3, 0x0

    if-lez p1, :cond_5e

    .line 834
    new-instance v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    invoke-direct {v4, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;-><init>(Landroid/net/Uri;)V

    :cond_5e
    :goto_5e
    if-eqz v4, :cond_74

    .line 837
    iput-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistError:Ljava/io/IOException;

    .line 838
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    new-instance v7, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    new-instance v8, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(I)V

    invoke-direct {v7, p2, v8, v4, v5}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    invoke-static {p1, v6, v7, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1000(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z

    .line 849
    :cond_74
    :goto_74
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->serverControl:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-boolean v3, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->canBlockReload:Z

    if-nez v3, :cond_87

    if-eq p1, v0, :cond_81

    .line 854
    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    goto :goto_89

    .line 855
    :cond_81
    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    goto :goto_89

    :cond_87
    const-wide/16 v3, 0x0

    .line 858
    :goto_89
    invoke-static {v3, v4}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide p1, p2, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;->loadDurationMs:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->earliestNextLoadTimeMs:J

    .line 862
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistSnapshot:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez p1, :cond_b2

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Landroid/net/Uri;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    .line 863
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->access$1900(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ab

    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->activeForPlayback:Z

    if-eqz p1, :cond_b2

    .line 864
    :cond_ab
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->getMediaPlaylistUriForReload()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylistInternal(Landroid/net/Uri;)V

    :cond_b2
    return-void
.end method

.method public release()V
    .registers 2

    .line 634
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->release()V

    return-void
.end method

.method public setActiveForPlayback(Z)V
    .registers 2

    .line 630
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->activeForPlayback:Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->$r8$lambda$zsbWO3wctdSp-SCwVwP8zKM_fhY(Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;Landroid/net/Uri;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createTracker(Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;
    .registers 6

    .line 0
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;)V

    return-object v0
.end method
