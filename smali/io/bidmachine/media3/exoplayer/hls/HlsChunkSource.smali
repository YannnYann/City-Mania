###### Class io.bidmachine.media3.exoplayer.hls.HlsChunkSource (io.bidmachine.media3.exoplayer.hls.HlsChunkSource)
.class public Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;,
        Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;,
        Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;,
        Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;,
        Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;
    }
.end annotation


# instance fields
.field public final encryptionDataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public expectedPlaylistUrl:Landroid/net/Uri;

.field public final extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

.field public fatalError:Ljava/io/IOException;

.field public independentSegments:Z

.field public isPrimaryTimestampSource:Z

.field public final keyCache:Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

.field public lastChunkRequestRealtimeMs:J

.field public liveEdgeInPeriodTimeUs:J

.field public final mediaDataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

.field public final playlistFormats:[Lio/bidmachine/media3/common/Format;

.field public final playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field public final playlistUrls:[Landroid/net/Uri;

.field public scratchSpace:[B

.field public seenExpectedPlaylistError:Z

.field public final timestampAdjusterInitializationTimeoutMs:J

.field public final timestampAdjusterProvider:Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;

.field public final trackGroup:Lio/bidmachine/media3/common/TrackGroup;

.field public trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;JLjava/util/List;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Lio/bidmachine/media3/common/Format;",
            "Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;",
            "Lio/bidmachine/media3/datasource/TransferListener;",
            "Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;",
            "J",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/analytics/PlayerId;",
            "Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;",
            ")V"
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    .line 196
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 197
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 198
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistFormats:[Lio/bidmachine/media3/common/Format;

    .line 199
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;

    .line 200
    iput-wide p8, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterInitializationTimeoutMs:J

    .line 201
    iput-object p10, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    .line 202
    iput-object p11, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 204
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->lastChunkRequestRealtimeMs:J

    .line 205
    new-instance p7, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    const/4 p8, 0x4

    invoke-direct {p7, p8}, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;-><init>(I)V

    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->keyCache:Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 206
    sget-object p7, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 207
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    const/4 p1, 0x1

    .line 208
    invoke-interface {p5, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;->createDataSource(I)Lio/bidmachine/media3/datasource/DataSource;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->mediaDataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-eqz p6, :cond_34

    .line 210
    invoke-interface {p1, p6}, Lio/bidmachine/media3/datasource/DataSource;->addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V

    :cond_34
    const/4 p1, 0x3

    .line 212
    invoke-interface {p5, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;->createDataSource(I)Lio/bidmachine/media3/datasource/DataSource;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->encryptionDataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 213
    new-instance p1, Lio/bidmachine/media3/common/TrackGroup;

    invoke-direct {p1, p4}, Lio/bidmachine/media3/common/TrackGroup;-><init>([Lio/bidmachine/media3/common/Format;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    .line 215
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 216
    :goto_48
    array-length p5, p3

    if-ge p2, p5, :cond_5d

    .line 217
    aget-object p5, p4, p2

    iget p5, p5, Lio/bidmachine/media3/common/Format;->roleFlags:I

    and-int/lit16 p5, p5, 0x4000

    if-nez p5, :cond_5a

    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    add-int/lit8 p2, p2, 0x1

    goto :goto_48

    .line 221
    :cond_5d
    new-instance p2, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    .line 222
    invoke-static {p1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Lio/bidmachine/media3/common/TrackGroup;[I)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    return-void
.end method

.method public static getFullEncryptionKeyUri(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;
    .registers 2

    if-eqz p1, :cond_e

    .line 945
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    if-nez p1, :cond_7

    goto :goto_e

    .line 948
    :cond_7
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNextSegmentHolder(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .registers 11

    .line 604
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 605
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v1, :cond_2b

    if-eq p3, v4, :cond_13

    goto :goto_14

    :cond_13
    move p3, v3

    .line 607
    :goto_14
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2a

    .line 608
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object v0

    :cond_2a
    return-object v2

    .line 612
    :cond_2b
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    if-ne p3, v4, :cond_3b

    .line 614
    new-instance p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    invoke-direct {p0, v1, p1, p2, v4}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object p0

    .line 617
    :cond_3b
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p3, v5, :cond_51

    .line 619
    new-instance p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    .line 620
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object p0

    :cond_51
    add-int/lit8 v0, v0, 0x1

    .line 621
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const-wide/16 v5, 0x1

    if-ge v0, p3, :cond_6c

    .line 623
    new-instance p3, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 624
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    add-long/2addr p1, v5

    invoke-direct {p3, p0, p1, p2, v4}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object p3

    .line 627
    :cond_6c
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_83

    .line 629
    new-instance p3, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 630
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    add-long/2addr p1, v5

    invoke-direct {p3, p0, p1, p2, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    return-object p3

    :cond_83
    return-object v2
.end method

.method public static getSegmentBaseList(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            "JI)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;",
            ">;"
        }
    .end annotation

    .line 779
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    if-ltz p1, :cond_7c

    .line 780
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p2, p1, :cond_f

    goto :goto_7c

    .line 784
    :cond_f
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 785
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ge p1, v0, :cond_53

    if-eq p3, v2, :cond_45

    .line 788
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    if-nez p3, :cond_2e

    .line 791
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 792
    :cond_2e
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_43

    .line 794
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, p3, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_43
    :goto_43
    add-int/lit8 p1, p1, 0x1

    .line 800
    :cond_45
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 801
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 800
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move p3, v1

    .line 804
    :cond_53
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v3, v5

    if-eqz p1, :cond_77

    if-ne p3, v2, :cond_61

    goto :goto_62

    :cond_61
    move v1, p3

    .line 807
    :goto_62
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_77

    .line 808
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 809
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 808
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 812
    :cond_77
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 782
    :cond_7c
    :goto_7c
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createMediaChunkIterators(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;J)[Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;
    .registers 17

    if-nez p1, :cond_5

    const/4 v2, -0x1

    :goto_3
    move v8, v2

    goto :goto_e

    .line 702
    :cond_5
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/TrackGroup;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result v2

    goto :goto_3

    .line 703
    :goto_e
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v9

    new-array v10, v9, [Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;

    const/4 v11, 0x0

    move v12, v11

    :goto_18
    if-ge v12, v9, :cond_70

    .line 705
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v2, v12}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v2

    .line 706
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v3, v3, v2

    .line 707
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v4, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 708
    sget-object v2, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;->EMPTY:Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;

    aput-object v2, v10, v12

    goto :goto_6d

    .line 712
    :cond_31
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 713
    invoke-interface {v4, v3, v11}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    .line 715
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-wide v4, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 717
    invoke-interface {v6}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    if-eq v2, v8, :cond_4a

    const/4 v2, 0x1

    :goto_46
    move-object v0, p0

    move-object v1, p1

    move-wide v6, p2

    goto :goto_4c

    :cond_4a
    move v2, v11

    goto :goto_46

    .line 720
    :goto_4c
    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getNextMediaSequenceAndPartIndex(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;ZLio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v2

    .line 722
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 723
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 724
    new-instance v6, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;

    iget-object v7, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 728
    invoke-static {v3, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getSegmentBaseList(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v7, v4, v5, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;-><init>(Ljava/lang/String;JLjava/util/List;)V

    aput-object v6, v10, v12

    :goto_6d
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    :cond_70
    return-object v10
.end method

.method public final deactivatePlaylistForSelectedTrack()V
    .registers 4

    .line 952
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v0

    .line 953
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->deactivatePlaylistForPlayback(Landroid/net/Uri;)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 15

    .line 290
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v0

    .line 293
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1e

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    .line 294
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 295
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v2

    aget-object v1, v1, v2

    .line 294
    invoke-interface {v0, v1, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_6b

    .line 299
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_6b

    .line 316
    :cond_2a
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 317
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v4

    sub-long/2addr v1, v4

    sub-long v5, p1, v1

    .line 319
    iget-object p1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 322
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 320
    invoke-static {p1, p2, v3, v3}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    .line 325
    iget-object p2, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v7, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    .line 327
    iget-boolean p2, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    if-eqz p2, :cond_64

    iget-object p2, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    if-eq p1, p2, :cond_64

    .line 328
    iget-object p2, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    add-int/2addr p1, v3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    move-wide v9, p1

    :goto_62
    move-object v4, p3

    goto :goto_66

    :cond_64
    move-wide v9, v7

    goto :goto_62

    .line 330
    :goto_66
    invoke-virtual/range {v4 .. v10}, Lio/bidmachine/media3/exoplayer/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    :cond_6b
    :goto_6b
    return-wide p1
.end method

.method public getChunkPublicationState(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;)I
    .registers 10

    .line 343
    iget v0, p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    return v2

    .line 347
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/TrackGroup;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result v1

    aget-object v0, v0, v1

    .line 348
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    const/4 v3, 0x0

    .line 349
    invoke-interface {v1, v0, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 350
    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;->chunkIndex:J

    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    if-gez v1, :cond_29

    return v2

    .line 356
    :cond_29
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3c

    .line 357
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    goto :goto_3e

    .line 358
    :cond_3c
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 359
    :goto_3e
    iget v4, p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v4, v5, :cond_48

    return v6

    .line 369
    :cond_48
    iget v4, p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 370
    iget-boolean v4, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    if-eqz v4, :cond_55

    return v3

    .line 374
    :cond_55
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 375
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-object p1, p1, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    return v2

    :cond_6c
    return v6
.end method

.method public getNextChunk(Lio/bidmachine/media3/exoplayer/LoadingInfo;JLjava/util/List;ZLio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/LoadingInfo;",
            "J",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;",
            ">;Z",
            "Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v6, p2

    move-object/from16 v8, p6

    .line 402
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_14

    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    :goto_14
    if-nez v1, :cond_1a

    const/4 v11, -0x1

    :goto_17
    move-object/from16 v2, p1

    goto :goto_24

    .line 403
    :cond_1a
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/TrackGroup;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result v2

    move v11, v2

    goto :goto_17

    .line 404
    :goto_24
    iget-wide v13, v2, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    sub-long v2, v6, v13

    .line 406
    invoke-virtual {v0, v13, v14}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->resolveTimeToLiveEdgeUs(J)J

    move-result-wide v4

    if-eqz v1, :cond_4b

    .line 407
    iget-boolean v12, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->independentSegments:Z

    if-nez v12, :cond_4b

    .line 414
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->getDurationUs()J

    move-result-wide v15

    sub-long/2addr v2, v15

    const-wide/16 v9, 0x0

    .line 415
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v4, v17

    if-eqz v12, :cond_4b

    sub-long/2addr v4, v15

    .line 417
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :cond_4b
    move-wide v15, v2

    move-wide/from16 v17, v4

    .line 422
    invoke-virtual {v0, v1, v6, v7}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->createMediaChunkIterators(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;J)[Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;

    move-result-object v20

    .line 423
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    move-object/from16 v19, p4

    invoke-interface/range {v12 .. v20}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;)V

    .line 425
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v9

    const/4 v12, 0x1

    if-eq v11, v9, :cond_64

    move v2, v12

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    .line 427
    :goto_65
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v13, v3, v9

    .line 428
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v3, v13}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->isSnapshotValid(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_81

    .line 429
    iput-object v13, v8, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 430
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v13, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 431
    iput-object v13, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    return-void

    .line 436
    :cond_81
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 437
    invoke-interface {v3, v13, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    .line 439
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-boolean v4, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    iput-boolean v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->independentSegments:Z

    .line 442
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->updateLiveEdgeTimeUs(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    .line 445
    iget-wide v4, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v14, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v14}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v14

    sub-long/2addr v4, v14

    .line 447
    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getNextMediaSequenceAndPartIndex(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;ZLio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v14

    .line 449
    iget-object v6, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 450
    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v15, v11

    .line 451
    iget-wide v10, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v10, v6, v10

    if-gez v10, :cond_ed

    if-eqz v1, :cond_ed

    if-eqz v2, :cond_ed

    .line 455
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v13, v2, v15

    .line 456
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 457
    invoke-interface {v2, v13, v12}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getPlaylistSnapshot(Landroid/net/Uri;Z)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v3

    .line 459
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-wide v4, v3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const/4 v2, 0x0

    move-wide/from16 v6, p2

    .line 463
    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getNextMediaSequenceAndPartIndex(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;ZLio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v2

    .line 469
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 470
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v9, v15

    move v10, v9

    :goto_e8
    move v2, v14

    move-object v15, v3

    move-object v3, v13

    move-wide v13, v4

    goto :goto_ef

    :cond_ed
    move v10, v15

    goto :goto_e8

    :goto_ef
    if-eq v9, v10, :cond_fd

    const/4 v4, -0x1

    if-eq v10, v4, :cond_fd

    .line 476
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    aget-object v4, v4, v10

    .line 477
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v5, v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->deactivatePlaylistForPlayback(Landroid/net/Uri;)V

    .line 480
    :cond_fd
    iget-wide v4, v15, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v4, v6, v4

    if-gez v4, :cond_10b

    .line 481
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/BehindLiveWindowException;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void

    .line 487
    :cond_10b
    invoke-static {v15, v6, v7, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getNextSegmentHolder(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    move-result-object v2

    if-nez v2, :cond_14b

    .line 489
    iget-boolean v2, v15, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v2, :cond_125

    .line 491
    iput-object v3, v8, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 492
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 493
    iput-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    return-void

    :cond_125
    if-nez p5, :cond_14e

    .line 495
    iget-object v2, v15, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_130

    goto :goto_14e

    .line 500
    :cond_130
    new-instance v2, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    iget-object v4, v15, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 502
    invoke-static {v4}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-wide v5, v15, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object v7, v15, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 503
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v5, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v5, v10

    const/4 v7, -0x1

    invoke-direct {v2, v4, v5, v6, v7}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    :cond_14b
    move-object v5, v2

    const/4 v2, 0x0

    goto :goto_151

    .line 496
    :cond_14e
    :goto_14e
    iput-boolean v12, v8, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    return-void

    .line 508
    :goto_151
    iput-boolean v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    const/4 v2, 0x0

    .line 509
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->lastChunkRequestRealtimeMs:J

    .line 550
    iget-object v2, v5, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 551
    invoke-static {v15, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getFullEncryptionKeyUri(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    .line 553
    invoke-virtual {v0, v10, v9, v12, v11}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->maybeCreateEncryptionChunkFor(Landroid/net/Uri;IZLio/bidmachine/media3/exoplayer/upstream/CmcdData$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    move-result-object v2

    iput-object v2, v8, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    if-eqz v2, :cond_16e

    goto :goto_18d

    .line 559
    :cond_16e
    iget-object v2, v5, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-static {v15, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->getFullEncryptionKeyUri(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;

    move-result-object v12

    const/4 v2, 0x0

    .line 561
    invoke-virtual {v0, v12, v9, v2, v11}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->maybeCreateEncryptionChunkFor(Landroid/net/Uri;IZLio/bidmachine/media3/exoplayer/upstream/CmcdData$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    move-result-object v2

    iput-object v2, v8, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    if-eqz v2, :cond_17e

    goto :goto_18d

    :cond_17e
    move-object v2, v1

    move-wide v6, v13

    move-object v4, v15

    .line 568
    invoke-static/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->shouldSpliceIn(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;J)Z

    move-result v28

    move-object/from16 v17, v3

    if-eqz v28, :cond_18e

    .line 570
    iget-boolean v2, v5, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    if-eqz v2, :cond_18e

    :goto_18d
    return-void

    .line 578
    :cond_18e
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    move-object/from16 v30, v11

    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->mediaDataSource:Lio/bidmachine/media3/datasource/DataSource;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistFormats:[Lio/bidmachine/media3/common/Format;

    aget-object v3, v3, v9

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 588
    invoke-interface {v6}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v19

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 589
    invoke-interface {v6}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v20

    iget-boolean v6, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->isPrimaryTimestampSource:Z

    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;

    move-object/from16 v25, v1

    move-object v9, v2

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterInitializationTimeoutMs:J

    move-wide/from16 v23, v1

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->keyCache:Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 594
    invoke-virtual {v1, v12}, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->get(Landroid/net/Uri;)[B

    move-result-object v26

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->keyCache:Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 595
    invoke-virtual {v1, v10}, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->get(Landroid/net/Uri;)[B

    move-result-object v27

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-object/from16 v29, v1

    move-object v12, v3

    move-object/from16 v18, v4

    move-object/from16 v16, v5

    move/from16 v21, v6

    move-object/from16 v22, v7

    move-object v10, v9

    .line 579
    invoke-static/range {v10 .. v30}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->createInstance(Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/common/Format;JLio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;Landroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;JLio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;[B[BZLio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/exoplayer/upstream/CmcdData$Factory;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object v1

    iput-object v1, v8, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    return-void
.end method

.method public final getNextMediaSequenceAndPartIndex(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;ZLio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;",
            "Z",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            "JJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_3f

    if-eqz p2, :cond_7

    goto :goto_3f

    .line 881
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 882
    new-instance p2, Landroid/util/Pair;

    .line 883
    iget p3, p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    if-ne p3, v1, :cond_18

    .line 884
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide p3

    goto :goto_1a

    .line 885
    :cond_18
    iget-wide p3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;->chunkIndex:J

    .line 883
    :goto_1a
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 886
    iget p1, p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    if-ne p1, v1, :cond_23

    goto :goto_25

    :cond_23
    add-int/lit8 v1, p1, 0x1

    :goto_25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 887
    :cond_2d
    new-instance p2, Landroid/util/Pair;

    iget-wide p3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;->chunkIndex:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget p1, p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 841
    :cond_3f
    :goto_3f
    iget-wide v2, p3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v2, p4

    if-eqz p1, :cond_4b

    .line 843
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->independentSegments:Z

    if-eqz p2, :cond_49

    goto :goto_4b

    :cond_49
    iget-wide p6, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    .line 844
    :cond_4b
    :goto_4b
    iget-boolean p2, p3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez p2, :cond_6b

    cmp-long p2, p6, v2

    if-ltz p2, :cond_6b

    .line 846
    new-instance p1, Landroid/util/Pair;

    iget-wide p4, p3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-object p2, p3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 847
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p4, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 848
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6b
    sub-long/2addr p6, p4

    .line 851
    iget-object p2, p3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 854
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 856
    invoke-interface {p5}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result p5

    const/4 v2, 0x0

    if-eqz p5, :cond_80

    if-nez p1, :cond_7e

    goto :goto_80

    :cond_7e
    move p1, v2

    goto :goto_81

    :cond_80
    :goto_80
    move p1, v0

    .line 852
    :goto_81
    invoke-static {p2, p4, v0, p1}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    int-to-long p4, p1

    .line 857
    iget-wide v3, p3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    add-long/2addr p4, v3

    if-ltz p1, :cond_c9

    .line 861
    iget-object p2, p3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 863
    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long/2addr v3, v5

    cmp-long p2, p6, v3

    if-gez p2, :cond_9f

    .line 864
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    goto :goto_a1

    .line 865
    :cond_9f
    iget-object p1, p3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 866
    :goto_a1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_c9

    .line 867
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 868
    iget-wide v3, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    iget-wide v5, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long/2addr v3, v5

    cmp-long v0, p6, v3

    if-gez v0, :cond_c6

    .line 869
    iget-boolean p2, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    if-eqz p2, :cond_c9

    .line 872
    iget-object p2, p3, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    if-ne p1, p2, :cond_c1

    const-wide/16 p1, 0x1

    goto :goto_c3

    :cond_c1
    const-wide/16 p1, 0x0

    :goto_c3
    add-long/2addr p4, p1

    move v1, v2

    goto :goto_c9

    :cond_c6
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    .line 878
    :cond_c9
    :goto_c9
    new-instance p1, Landroid/util/Pair;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_15

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    goto :goto_15

    .line 750
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result p1

    return p1

    .line 748
    :cond_15
    :goto_15
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;
    .registers 2

    .line 242
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    return-object v0
.end method

.method public getTrackSelection()Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;
    .registers 2

    .line 263
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    return-object v0
.end method

.method public hasIndependentSegments()Z
    .registers 2

    .line 247
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->independentSegments:Z

    return v0
.end method

.method public final maybeCreateEncryptionChunkFor(Landroid/net/Uri;IZLio/bidmachine/media3/exoplayer/upstream/CmcdData$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;
    .registers 12

    const/4 p3, 0x0

    if-nez p1, :cond_4

    return-object p3

    .line 914
    :cond_4
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->keyCache:Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    invoke-virtual {p4, p1}, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->remove(Landroid/net/Uri;)[B

    move-result-object p4

    if-eqz p4, :cond_12

    .line 919
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->keyCache:Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    invoke-virtual {p2, p1, p4}, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->put(Landroid/net/Uri;[B)[B

    return-object p3

    .line 923
    :cond_12
    new-instance p3, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {p3}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    .line 924
    invoke-virtual {p3, p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setFlags(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v2

    .line 933
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->encryptionDataSource:Lio/bidmachine/media3/datasource/DataSource;

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistFormats:[Lio/bidmachine/media3/common/Format;

    aget-object v3, p1, p2

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 937
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v4

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 938
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;[B)V

    return-object v0
.end method

.method public maybeExcludeTrack(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;J)Z
    .registers 6

    .line 660
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Lio/bidmachine/media3/common/TrackGroup;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    .line 661
    invoke-virtual {v1, p1}, Lio/bidmachine/media3/common/TrackGroup;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result p1

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    move-result p1

    .line 660
    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->excludeTrack(IJ)Z

    move-result p1

    return p1
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_12

    .line 235
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    if-eqz v1, :cond_11

    .line 236
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->maybeThrowPlaylistRefreshError(Landroid/net/Uri;)V

    :cond_11
    return-void

    .line 233
    :cond_12
    throw v0
.end method

.method public obtainsChunksForPlaylist(Landroid/net/Uri;)Z
    .registers 3

    .line 817
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onChunkLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)V
    .registers 4

    .line 643
    instance-of v0, p1, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    if-eqz v0, :cond_1f

    .line 644
    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 645
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/chunk/DataChunk;->getDataHolder()[B

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 646
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->keyCache:Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-object v1, v1, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->getResult()[B

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->put(Landroid/net/Uri;[B)[B

    :cond_1f
    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;J)Z
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 674
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_14

    .line 675
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_15

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    move v1, v4

    :goto_15
    const/4 v2, 0x1

    if-ne v1, v4, :cond_19

    return v2

    .line 683
    :cond_19
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v3, v1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_22

    return v2

    .line 687
    :cond_22
    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p2, v3

    if-eqz v3, :cond_48

    .line 688
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 689
    invoke-interface {v3, v1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->excludeTrack(IJ)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 690
    invoke-interface {v1, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->excludeMediaPlaylist(Landroid/net/Uri;J)Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_48

    :cond_47
    return v0

    :cond_48
    :goto_48
    return v2
.end method

.method public reset()V
    .registers 2

    .line 268
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->deactivatePlaylistForSelectedTrack()V

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public final resolveTimeToLiveEdgeUs(J)J
    .registers 8

    .line 891
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    sub-long/2addr v0, p1

    return-wide v0

    :cond_d
    return-wide v2
.end method

.method public setIsPrimaryTimestampSource(Z)V
    .registers 2

    .line 279
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->isPrimaryTimestampSource:Z

    return-void
.end method

.method public setTrackSelection(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .registers 2

    .line 257
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->deactivatePlaylistForSelectedTrack()V

    .line 258
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    return-void
.end method

.method public shouldCancelLoad(JLio/bidmachine/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 766
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->shouldCancelChunkLoad(JLio/bidmachine/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final updateLiveEdgeTimeUs(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .registers 6

    .line 899
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v0, :cond_a

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_15

    .line 901
    :cond_a
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v0

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_15
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsChunkSource.EncryptionKeyChunk (io.bidmachine.media3.exoplayer.hls.HlsChunkSource$EncryptionKeyChunk)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;
.super Lio/bidmachine/media3/exoplayer/source/chunk/DataChunk;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncryptionKeyChunk"
.end annotation


# instance fields
.field public result:[B


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;[B)V
    .registers 15

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1041
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/source/chunk/DataChunk;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ILio/bidmachine/media3/common/Format;ILjava/lang/Object;[B)V

    return-void
.end method


# virtual methods
.method public consume([BI)V
    .registers 3

    .line 1053
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-void
.end method

.method public getResult()[B
    .registers 2

    .line 1059
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsChunkSource.HlsChunkHolder (io.bidmachine.media3.exoplayer.hls.HlsChunkSource$HlsChunkHolder)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HlsChunkHolder"
.end annotation


# instance fields
.field public chunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

.field public endOfStream:Z

.field public playlistUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    const/4 v1, 0x0

    .line 90
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 91
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsChunkSource.HlsMediaPlaylistSegmentIterator (io.bidmachine.media3.exoplayer.hls.HlsChunkSource$HlsMediaPlaylistSegmentIterator)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;
.super Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HlsMediaPlaylistSegmentIterator"
.end annotation


# instance fields
.field public final playlistBaseUri:Ljava/lang/String;

.field public final segmentBases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;",
            ">;"
        }
    .end annotation
.end field

.field public final startOfPlaylistInPeriodUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;",
            ">;)V"
        }
    .end annotation

    .line 1082
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;-><init>(JJ)V

    .line 1083
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->playlistBaseUri:Ljava/lang/String;

    .line 1084
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->startOfPlaylistInPeriodUs:J

    .line 1085
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->segmentBases:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChunkEndTimeUs()J
    .registers 6

    .line 1105
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->checkInBounds()V

    .line 1106
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->segmentBases:Ljava/util/List;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->getCurrentIndex()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 1107
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->startOfPlaylistInPeriodUs:J

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long/2addr v1, v3

    .line 1108
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getChunkStartTimeUs()J
    .registers 6

    .line 1098
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->checkInBounds()V

    .line 1099
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->startOfPlaylistInPeriodUs:J

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;->segmentBases:Ljava/util/List;

    .line 1100
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->getCurrentIndex()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsChunkSource.InitializationTrackSelection (io.bidmachine.media3.exoplayer.hls.HlsChunkSource$InitializationTrackSelection)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;
.super Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitializationTrackSelection"
.end annotation


# instance fields
.field public selectedIndex:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/TrackGroup;[I)V
    .registers 4

    .line 985
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Lio/bidmachine/media3/common/TrackGroup;[I)V

    const/4 v0, 0x0

    .line 988
    aget p2, p2, v0

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .registers 2

    .line 1015
    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;[",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 998
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 999
    iget p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    invoke-virtual {p0, p3, p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->isTrackExcluded(IJ)Z

    move-result p3

    if-nez p3, :cond_d

    return-void

    .line 1003
    :cond_d
    iget p3, p0, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    add-int/lit8 p3, p3, -0x1

    :goto_11
    if-ltz p3, :cond_1f

    .line 1004
    invoke-virtual {p0, p3, p1, p2}, Lio/bidmachine/media3/exoplayer/trackselection/BaseTrackSelection;->isTrackExcluded(IJ)Z

    move-result p4

    if-nez p4, :cond_1c

    .line 1005
    iput p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return-void

    :cond_1c
    add-int/lit8 p3, p3, -0x1

    goto :goto_11

    .line 1010
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsChunkSource.SegmentBaseHolder (io.bidmachine.media3.exoplayer.hls.HlsChunkSource$SegmentBaseHolder)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentBaseHolder"
.end annotation


# instance fields
.field public final isPreload:Z

.field public final mediaSequence:J

.field public final partIndex:I

.field public final segmentBase:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V
    .registers 5

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 969
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->mediaSequence:J

    .line 970
    iput p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->partIndex:I

    .line 971
    instance-of p2, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    if-eqz p2, :cond_15

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    return-void
.end method
