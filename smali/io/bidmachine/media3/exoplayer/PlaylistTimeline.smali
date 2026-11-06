###### Class io.bidmachine.media3.exoplayer.PlaylistTimeline (io.bidmachine.media3.exoplayer.PlaylistTimeline)
.class public final Lio/bidmachine/media3/exoplayer/PlaylistTimeline;
.super Lio/bidmachine/media3/exoplayer/AbstractConcatenatedTimeline;
.source "PlaylistTimeline.java"


# instance fields
.field public final childIndexByUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final firstPeriodInChildIndices:[I

.field public final firstWindowInChildIndices:[I

.field public final periodCount:I

.field public final timelines:[Lio/bidmachine/media3/common/Timeline;

.field public final uids:[Ljava/lang/Object;

.field public final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/bidmachine/media3/exoplayer/MediaSourceInfoHolder;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->getTimelines(Ljava/util/Collection;)[Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->getUids(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;-><init>([Lio/bidmachine/media3/common/Timeline;[Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V

    return-void
.end method

.method public constructor <init>([Lio/bidmachine/media3/common/Timeline;[Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V
    .registers 11

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, p3}, Lio/bidmachine/media3/exoplayer/AbstractConcatenatedTimeline;-><init>(ZLio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V

    .line 50
    array-length p3, p1

    .line 51
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->timelines:[Lio/bidmachine/media3/common/Timeline;

    .line 52
    new-array v1, p3, [I

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    .line 53
    new-array p3, p3, [I

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    .line 54
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    .line 55
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 59
    array-length p3, p1

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_1c
    if-ge v0, p3, :cond_4b

    aget-object v4, p1, v0

    .line 60
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->timelines:[Lio/bidmachine/media3/common/Timeline;

    aput-object v4, v5, v3

    .line 61
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    aput v1, v5, v3

    .line 62
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aput v2, v5, v3

    .line 63
    invoke-virtual {v4}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 64
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->timelines:[Lio/bidmachine/media3/common/Timeline;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lio/bidmachine/media3/common/Timeline;->getPeriodCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 65
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    aget-object v5, p2, v3

    add-int/lit8 v6, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move v3, v6

    goto :goto_1c

    .line 67
    :cond_4b
    iput v1, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->windowCount:I

    .line 68
    iput v2, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->periodCount:I

    return-void
.end method

.method public static getTimelines(Ljava/util/Collection;)[Lio/bidmachine/media3/common/Timeline;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/bidmachine/media3/exoplayer/MediaSourceInfoHolder;",
            ">;)[",
            "Lio/bidmachine/media3/common/Timeline;"
        }
    .end annotation

    .line 178
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lio/bidmachine/media3/common/Timeline;

    .line 180
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/MediaSourceInfoHolder;

    add-int/lit8 v3, v1, 0x1

    .line 181
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/MediaSourceInfoHolder;->getTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public static getUids(Ljava/util/Collection;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/bidmachine/media3/exoplayer/MediaSourceInfoHolder;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 168
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/MediaSourceInfoHolder;

    add-int/lit8 v3, v1, 0x1

    .line 171
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/MediaSourceInfoHolder;->getUid()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_b

    :cond_21
    return-object v0
.end method


# virtual methods
.method public copyWithPlaceholderTimeline(Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/exoplayer/PlaylistTimeline;
    .registers 6

    .line 137
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->timelines:[Lio/bidmachine/media3/common/Timeline;

    array-length v0, v0

    new-array v0, v0, [Lio/bidmachine/media3/common/Timeline;

    const/4 v1, 0x0

    .line 138
    :goto_6
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->timelines:[Lio/bidmachine/media3/common/Timeline;

    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 139
    new-instance v3, Lio/bidmachine/media3/exoplayer/PlaylistTimeline$1;

    aget-object v2, v2, v1

    invoke-direct {v3, p0, v2}, Lio/bidmachine/media3/exoplayer/PlaylistTimeline$1;-><init>(Lio/bidmachine/media3/exoplayer/PlaylistTimeline;Lio/bidmachine/media3/common/Timeline;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 163
    :cond_17
    new-instance v1, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    invoke-direct {v1, v0, v2, p1}, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;-><init>([Lio/bidmachine/media3/common/Timeline;[Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V

    return-object v1
.end method

.method public getChildIndexByChildUid(Ljava/lang/Object;)I
    .registers 3

    .line 88
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_c

    const/4 p1, -0x1

    return p1

    .line 89
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getChildIndexByPeriodIndex(I)I
    .registers 4

    .line 78
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    return p1
.end method

.method public getChildIndexByWindowIndex(I)I
    .registers 4

    .line 83
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    return p1
.end method

.method public getChildTimelines()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Timeline;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->timelines:[Lio/bidmachine/media3/common/Timeline;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildUidByChildIndex(I)Ljava/lang/Object;
    .registers 3

    .line 109
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFirstPeriodIndexByChildIndex(I)I
    .registers 3

    .line 99
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method public getFirstWindowIndexByChildIndex(I)I
    .registers 3

    .line 104
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method public getPeriodCount()I
    .registers 2

    .line 119
    iget v0, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->periodCount:I

    return v0
.end method

.method public getTimelineByChildIndex(I)Lio/bidmachine/media3/common/Timeline;
    .registers 3

    .line 94
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->timelines:[Lio/bidmachine/media3/common/Timeline;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getWindowCount()I
    .registers 2

    .line 114
    iget v0, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->windowCount:I

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.PlaylistTimeline.AnonymousClass1 (io.bidmachine.media3.exoplayer.PlaylistTimeline$1)
.class public Lio/bidmachine/media3/exoplayer/PlaylistTimeline$1;
.super Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;
.source "PlaylistTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->copyWithPlaceholderTimeline(Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/exoplayer/PlaylistTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/PlaylistTimeline;

.field public final window:Lio/bidmachine/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/PlaylistTimeline;Lio/bidmachine/media3/common/Timeline;)V
    .registers 3

    .line 140
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline$1;->this$0:Lio/bidmachine/media3/exoplayer/PlaylistTimeline;

    invoke-direct {p0, p2}, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;-><init>(Lio/bidmachine/media3/common/Timeline;)V

    .line 141
    new-instance p1, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline$1;->window:Lio/bidmachine/media3/common/Timeline$Window;

    return-void
.end method


# virtual methods
.method public getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 14

    .line 145
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v0

    .line 146
    iget p1, v0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline$1;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-super {p0, p1, p3}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 148
    iget-object v1, p2, Lio/bidmachine/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v2, p2, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget v3, p2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    iget-wide v4, p2, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    iget-wide v6, p2, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    sget-object v8, Lio/bidmachine/media3/common/AdPlaybackState;->NONE:Lio/bidmachine/media3/common/AdPlaybackState;

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLio/bidmachine/media3/common/AdPlaybackState;Z)Lio/bidmachine/media3/common/Timeline$Period;

    return-object v0

    :cond_23
    const/4 p1, 0x1

    .line 157
    iput-boolean p1, v0, Lio/bidmachine/media3/common/Timeline$Period;->isPlaceholder:Z

    return-object v0
.end method
