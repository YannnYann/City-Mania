###### Class kotlin.ranges.LongProgressionIterator (kotlin.ranges.LongProgressionIterator)
.class public final Lkotlin/ranges/LongProgressionIterator;
.super Lkotlin/collections/LongIterator;
.source "ProgressionIterators.kt"


# instance fields
.field public final finalElement:J

.field public hasNext:Z

.field public next:J

.field public final step:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 9

    .line 64
    invoke-direct {p0}, Lkotlin/collections/LongIterator;-><init>()V

    iput-wide p5, p0, Lkotlin/ranges/LongProgressionIterator;->step:J

    .line 65
    iput-wide p3, p0, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    const-wide/16 v0, 0x0

    cmp-long p5, p5, v0

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-lez p5, :cond_15

    cmp-long p5, p1, p3

    if-gtz p5, :cond_1a

    :goto_13
    move p6, v0

    goto :goto_1a

    :cond_15
    cmp-long p5, p1, p3

    if-ltz p5, :cond_1a

    goto :goto_13

    .line 66
    :cond_1a
    :goto_1a
    iput-boolean p6, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-eqz p6, :cond_1f

    goto :goto_20

    :cond_1f
    move-wide p1, p3

    .line 67
    :goto_20
    iput-wide p1, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    return v0
.end method

.method public nextLong()J
    .registers 5

    .line 72
    iget-wide v0, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    .line 73
    iget-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_16

    .line 74
    iget-boolean v2, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    .line 75
    iput-boolean v2, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    return-wide v0

    .line 74
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 78
    :cond_16
    iget-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->step:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    return-wide v0
.end method
