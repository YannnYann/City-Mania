###### Class io.bidmachine.media3.extractor.text.CuesWithTimingSubtitle (io.bidmachine.media3.extractor.text.CuesWithTimingSubtitle)
.class public final Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;
.super Ljava/lang/Object;
.source "CuesWithTimingSubtitle.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/Subtitle;


# static fields
.field public static final CUES_BY_START_TIME_ASCENDING:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final eventCues:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;>;"
        }
    .end annotation
.end field

.field public final eventTimesUs:[J


# direct methods
.method public static synthetic $r8$lambda$A3FVmfj1JXjV_NiXczK-GAWMPh4(Lio/bidmachine/media3/extractor/text/CuesWithTiming;)Ljava/lang/Comparable;
    .registers 3

    .line 48
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->normalizeUnsetStartTimeToZero(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 48
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->CUES_BY_START_TIME_ASCENDING:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v3, v4, :cond_4c

    .line 52
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    .line 53
    iget-wide v7, v3, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    invoke-static {v7, v8}, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->normalizeUnsetStartTimeToZero(J)J

    move-result-wide v7

    .line 54
    iget-wide v9, v3, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->durationUs:J

    cmp-long v5, v9, v5

    if-nez v5, :cond_34

    .line 55
    iget-object v1, v3, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Lcom/google/common/collect/ImmutableList;

    .line 56
    new-array v1, v4, [J

    aput-wide v7, v1, v2

    iput-object v1, v0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    return-void

    .line 58
    :cond_34
    iget-object v5, v3, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iput-object v5, v0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Lcom/google/common/collect/ImmutableList;

    .line 59
    iget-wide v5, v3, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->durationUs:J

    add-long/2addr v5, v7

    new-array v1, v1, [J

    aput-wide v7, v1, v2

    aput-wide v5, v1, v4

    iput-object v1, v0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    return-void

    .line 64
    :cond_4c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    new-array v1, v3, [J

    iput-object v1, v0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    const-wide v7, 0x7fffffffffffffffL

    .line 67
    invoke-static {v1, v7, v8}, Ljava/util/Arrays;->fill([JJ)V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    sget-object v3, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->CUES_BY_START_TIME_ASCENDING:Lcom/google/common/collect/Ordering;

    move-object/from16 v7, p1

    .line 70
    invoke-static {v3, v7}, Lcom/google/common/collect/ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move v7, v2

    .line 72
    :goto_6b
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v2, v8, :cond_d6

    .line 73
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    .line 75
    iget-wide v9, v8, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->startTimeUs:J

    invoke-static {v9, v10}, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->normalizeUnsetStartTimeToZero(J)J

    move-result-wide v9

    .line 76
    iget-wide v11, v8, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->durationUs:J

    add-long/2addr v11, v9

    if-eqz v7, :cond_b4

    .line 77
    iget-object v13, v0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    add-int/lit8 v14, v7, -0x1

    aget-wide v15, v13, v14

    cmp-long v13, v15, v9

    if-gez v13, :cond_8d

    goto :goto_b4

    :cond_8d
    cmp-long v13, v15, v9

    if-nez v13, :cond_a3

    .line 81
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a3

    .line 84
    iget-object v9, v8, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v14, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c0

    .line 86
    :cond_a3
    const-string v13, "CuesWithTimingSubtitle"

    const-string v15, "Truncating unsupported overlapping cues."

    invoke-static {v13, v15}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v13, v0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    aput-wide v9, v13, v14

    .line 90
    iget-object v9, v8, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v14, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c0

    .line 78
    :cond_b4
    :goto_b4
    iget-object v13, v0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    add-int/lit8 v14, v7, 0x1

    aput-wide v9, v13, v7

    .line 79
    iget-object v7, v8, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v14

    .line 92
    :goto_c0
    iget-wide v8, v8, Lio/bidmachine/media3/extractor/text/CuesWithTiming;->durationUs:J

    cmp-long v8, v8, v5

    if-eqz v8, :cond_d4

    .line 93
    iget-object v8, v0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    add-int/lit8 v9, v7, 0x1

    aput-wide v11, v8, v7

    .line 94
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v9

    :cond_d4
    add-int/2addr v2, v4

    goto :goto_6b

    .line 97
    :cond_d6
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static normalizeUnsetStartTimeToZero(J)J
    .registers 4

    .line 0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const-wide/16 p0, 0x0

    :cond_b
    return-wide p0
.end method


# virtual methods
.method public getCues(J)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-static {v0, p1, p2, v1, v2}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_10

    .line 124
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    :cond_10
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    return-object p1
.end method

.method public bridge synthetic getCues(J)Ljava/util/List;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->getCues(J)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public getEventTime(I)J
    .registers 5

    .line 115
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 116
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getEventTimeCount()I
    .registers 2

    .line 110
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 5

    .line 102
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventTimesUs:[J

    const/4 v1, 0x0

    .line 103
    invoke-static {v0, p1, p2, v1, v1}, Lio/bidmachine/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    .line 105
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->eventCues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-ge p1, p2, :cond_10

    return p1

    :cond_10
    const/4 p1, -0x1

    return p1
.end method

###### Class io.bidmachine.media3.extractor.text.CuesWithTimingSubtitle$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.text.CuesWithTimingSubtitle$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    invoke-static {p1}, Lio/bidmachine/media3/extractor/text/CuesWithTimingSubtitle;->$r8$lambda$A3FVmfj1JXjV_NiXczK-GAWMPh4(Lio/bidmachine/media3/extractor/text/CuesWithTiming;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
