###### Class io.bidmachine.media3.exoplayer.source.MergingMediaSource (io.bidmachine.media3.exoplayer.source.MergingMediaSource)
.class public final Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;,
        Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;,
        Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final PLACEHOLDER_MEDIA_ITEM:Lio/bidmachine/media3/common/MediaItem;


# instance fields
.field public final adjustPeriodTimeOffsets:Z

.field public final clipDurations:Z

.field public final clippedDurationsUs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final clippedMediaPeriods:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Ljava/lang/Object;",
            "Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field public final compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field public final mediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mediaSources:[Lio/bidmachine/media3/exoplayer/source/MediaSource;

.field public mergeError:Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

.field public final pendingTimelineSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field public periodCount:I

.field public periodTimeOffsetsUs:[[J

.field public final timelines:[Lio/bidmachine/media3/common/Timeline;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 82
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$Builder;-><init>()V

    const-string v1, "MergingMediaSource"

    .line 83
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$Builder;->build()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Lio/bidmachine/media3/common/MediaItem;

    return-void
.end method

.method public varargs constructor <init>(ZZLio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[Lio/bidmachine/media3/exoplayer/source/MediaSource;)V
    .registers 6

    .line 159
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    .line 160
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->adjustPeriodTimeOffsets:Z

    .line 161
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    .line 162
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Lio/bidmachine/media3/exoplayer/source/MediaSource;

    .line 163
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 165
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    const/4 p1, 0x0

    move p2, p1

    .line 167
    :goto_23
    array-length p3, p4

    if-ge p2, p3, :cond_33

    .line 168
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_23

    .line 170
    :cond_33
    array-length p2, p4

    new-array p2, p2, [Lio/bidmachine/media3/common/Timeline;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->timelines:[Lio/bidmachine/media3/common/Timeline;

    .line 171
    new-array p1, p1, [[J

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    .line 172
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    .line 173
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->hashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    return-void
.end method

.method public varargs constructor <init>(ZZ[Lio/bidmachine/media3/exoplayer/source/MediaSource;)V
    .registers 5

    .line 136
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;-><init>(ZZLio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[Lio/bidmachine/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Lio/bidmachine/media3/exoplayer/source/MediaSource;)V
    .registers 4

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;-><init>(ZZ[Lio/bidmachine/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public varargs constructor <init>([Lio/bidmachine/media3/exoplayer/source/MediaSource;)V
    .registers 3

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;-><init>(Z[Lio/bidmachine/media3/exoplayer/source/MediaSource;)V

    return-void
.end method


# virtual methods
.method public final computePeriodTimeOffsets()V
    .registers 10

    .line 312
    new-instance v0, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 313
    :goto_7
    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    if-ge v2, v3, :cond_37

    .line 314
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->timelines:[Lio/bidmachine/media3/common/Timeline;

    aget-object v3, v3, v1

    .line 315
    invoke-virtual {v3, v2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    neg-long v3, v3

    const/4 v5, 0x1

    .line 316
    :goto_19
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->timelines:[Lio/bidmachine/media3/common/Timeline;

    array-length v7, v6

    if-ge v5, v7, :cond_34

    .line 317
    aget-object v6, v6, v5

    .line 318
    invoke-virtual {v6, v2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v6

    invoke-virtual {v6}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v6

    neg-long v6, v6

    .line 319
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v8, v8, v2

    sub-long v6, v3, v6

    aput-wide v6, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_37
    return-void
.end method

.method public createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 16

    .line 209
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Lio/bidmachine/media3/exoplayer/source/MediaSource;

    array-length v0, v0

    new-array v1, v0, [Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 210
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->timelines:[Lio/bidmachine/media3/common/Timeline;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    :goto_10
    if-ge v3, v0, :cond_46

    .line 212
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->timelines:[Lio/bidmachine/media3/common/Timeline;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lio/bidmachine/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v4

    .line 213
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Lio/bidmachine/media3/exoplayer/source/MediaSource;

    aget-object v5, v5, v3

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    sub-long v6, p3, v7

    .line 214
    invoke-interface {v5, v4, p2, v6, v7}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    move-result-object v5

    aput-object v5, v1, v3

    .line 216
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    aget-object v7, v1, v3

    const/4 v8, 0x0

    invoke-direct {v6, v4, v7, v8}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaPeriod;Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$1;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 218
    :cond_46
    new-instance v5, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object p3, p3, v2

    invoke-direct {v5, p2, p3, v1}, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;-><init>(Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[J[Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    .line 221
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    if-eqz p2, :cond_79

    .line 222
    new-instance v4, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    iget-object p3, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 227
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v4 .. v10}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;ZJJ)V

    .line 228
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-interface {p2, p1, v4}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v4

    :cond_79
    return-object v5
.end method

.method public getMediaItem()Lio/bidmachine/media3/common/MediaItem;
    .registers 3

    .line 178
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Lio/bidmachine/media3/exoplayer/source/MediaSource;

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Lio/bidmachine/media3/common/MediaItem;

    return-object v0
.end method

.method public getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 6

    .line 302
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    .line 303
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 304
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->access$200(Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    invoke-virtual {v2, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 305
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->access$200(Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_3a
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 3

    .line 54
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mergeError:Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_8

    .line 204
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    .line 202
    :cond_8
    throw v0
.end method

.method public onChildSourceInfoRefreshed(Ljava/lang/Integer;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V
    .registers 9

    .line 271
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mergeError:Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_5

    goto :goto_70

    .line 274
    :cond_5
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    .line 275
    invoke-virtual {p3}, Lio/bidmachine/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    goto :goto_22

    .line 276
    :cond_12
    invoke-virtual {p3}, Lio/bidmachine/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    if-eq v0, v1, :cond_22

    .line 277
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {p1, v2}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mergeError:Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    return-void

    .line 280
    :cond_22
    :goto_22
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    array-length v0, v0

    if-nez v0, :cond_3e

    .line 281
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->timelines:[Lio/bidmachine/media3/common/Timeline;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    .line 283
    :cond_3e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->timelines:[Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    .line 285
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 286
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->adjustPeriodTimeOffsets:Z

    if-eqz p1, :cond_5a

    .line 287
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->computePeriodTimeOffsets()V

    .line 289
    :cond_5a
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->timelines:[Lio/bidmachine/media3/common/Timeline;

    aget-object p1, p1, v2

    .line 290
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    if-eqz p2, :cond_6d

    .line 291
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->updateClippedDuration()V

    .line 292
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;-><init>(Lio/bidmachine/media3/common/Timeline;Ljava/util/Map;)V

    move-object p1, p2

    .line 294
    :cond_6d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Lio/bidmachine/media3/common/Timeline;)V

    :cond_70
    :goto_70
    return-void
.end method

.method public bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V
    .registers 4

    .line 54
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Integer;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 4

    .line 193
    invoke-super {p0, p1}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V

    const/4 p1, 0x0

    .line 194
    :goto_4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Lio/bidmachine/media3/exoplayer/source/MediaSource;

    array-length v0, v0

    if-ge p1, v0, :cond_17

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Lio/bidmachine/media3/exoplayer/source/MediaSource;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MediaSource;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_17
    return-void
.end method

.method public releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 8

    .line 235
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    if-eqz v0, :cond_37

    .line 236
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    .line 237
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 239
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    :cond_35
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 245
    :cond_37
    move-object v0, p1

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;

    const/4 v1, 0x0

    move v2, v1

    .line 246
    :goto_3c
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Lio/bidmachine/media3/exoplayer/source/MediaSource;

    array-length v3, v3

    if-ge v2, v3, :cond_75

    .line 247
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v1

    .line 248
    :goto_4a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_67

    .line 249
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->access$100(Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 250
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_67

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 254
    :cond_67
    :goto_67
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Lio/bidmachine/media3/exoplayer/source/MediaSource;

    aget-object v3, v3, v2

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/source/MergingMediaPeriod;->getChildPeriod(I)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_75
    return-void
.end method

.method public releaseSourceInternal()V
    .registers 3

    .line 260
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 261
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->timelines:[Lio/bidmachine/media3/common/Timeline;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 262
    iput v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    .line 263
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mergeError:Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    .line 264
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Lio/bidmachine/media3/exoplayer/source/MediaSource;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateClippedDuration()V
    .registers 14

    .line 326
    new-instance v0, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 327
    :goto_7
    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    if-ge v2, v3, :cond_69

    const-wide/high16 v3, -0x8000000000000000L

    move v5, v1

    move-wide v6, v3

    .line 329
    :goto_f
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->timelines:[Lio/bidmachine/media3/common/Timeline;

    array-length v9, v8

    if-ge v5, v9, :cond_3b

    .line 330
    aget-object v8, v8, v5

    invoke-virtual {v8, v2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v8

    invoke-virtual {v8}, Lio/bidmachine/media3/common/Timeline$Period;->getDurationUs()J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v8, v10

    if-nez v10, :cond_28

    goto :goto_38

    .line 334
    :cond_28
    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v10, v10, v2

    aget-wide v11, v10, v5

    add-long/2addr v8, v11

    cmp-long v10, v6, v3

    if-eqz v10, :cond_37

    cmp-long v10, v8, v6

    if-gez v10, :cond_38

    :cond_37
    move-wide v6, v8

    :cond_38
    :goto_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 339
    :cond_3b
    aget-object v3, v8, v1

    invoke-virtual {v3, v2}, Lio/bidmachine/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v3

    .line 340
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v4, v3}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    const-wide/16 v8, 0x0

    .line 342
    invoke-virtual {v4, v8, v9, v6, v7}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->updateClipping(JJ)V

    goto :goto_54

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_69
    return-void
.end method

.method public updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V
    .registers 4

    .line 188
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Lio/bidmachine/media3/exoplayer/source/MediaSource;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MergingMediaSource.AnonymousClass1 (io.bidmachine.media3.exoplayer.source.MergingMediaSource$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$1;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.source.MergingMediaSource.ClippedTimeline (io.bidmachine.media3.exoplayer.source.MergingMediaSource$ClippedTimeline)
.class public final Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;
.super Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClippedTimeline"
.end annotation


# instance fields
.field public final periodDurationsUs:[J

.field public final windowDurationsUs:[J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Timeline;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Timeline;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 353
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;-><init>(Lio/bidmachine/media3/common/Timeline;)V

    .line 354
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v0

    .line 355
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    .line 356
    new-instance v1, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v0, :cond_25

    .line 358
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    invoke-virtual {p1, v3, v1}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v5

    iget-wide v5, v5, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 360
    :cond_25
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    .line 361
    new-array v1, v0, [J

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    .line 362
    new-instance v1, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    :goto_32
    if-ge v2, v0, :cond_6f

    const/4 v3, 0x1

    .line 364
    invoke-virtual {p1, v2, v1, v3}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    .line 365
    iget-object v3, v1, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 366
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v3, v6

    if-eqz v6, :cond_53

    goto :goto_55

    .line 367
    :cond_53
    iget-wide v3, v1, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    :goto_55
    aput-wide v3, v5, v2

    .line 368
    iget-wide v5, v1, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v5, v7

    if-eqz v7, :cond_6c

    .line 369
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    iget v8, v1, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    aget-wide v9, v7, v8

    sub-long/2addr v5, v3

    sub-long/2addr v9, v5

    aput-wide v9, v7, v8

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_6f
    return-void
.end method


# virtual methods
.method public getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 6

    .line 387
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    .line 388
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    return-object p2
.end method

.method public getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;
    .registers 9

    .line 376
    invoke-super {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;

    .line 377
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, p3

    if-eqz p1, :cond_1e

    .line 379
    iget-wide v2, p2, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    cmp-long p1, v2, p3

    if-nez p1, :cond_19

    goto :goto_1e

    .line 381
    :cond_19
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    goto :goto_20

    .line 380
    :cond_1e
    :goto_1e
    iget-wide p3, p2, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 381
    :goto_20
    iput-wide p3, p2, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    return-object p2
.end method

###### Class io.bidmachine.media3.exoplayer.source.MergingMediaSource.IllegalMergeException (io.bidmachine.media3.exoplayer.source.MergingMediaSource$IllegalMergeException)
.class public final Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;
.super Ljava/io/IOException;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IllegalMergeException"
.end annotation


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 77
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;->reason:I

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MergingMediaSource.MediaPeriodAndId (io.bidmachine.media3.exoplayer.source.MergingMediaSource$MediaPeriodAndId)
.class public final Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodAndId"
.end annotation


# instance fields
.field public final mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

.field public final mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 3

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 399
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaPeriod;Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$1;)V
    .registers 4

    .line 393
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 1

    .line 393
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 1

    .line 393
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object p0
.end method
