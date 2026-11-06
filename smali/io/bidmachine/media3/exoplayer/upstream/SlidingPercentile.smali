###### Class io.bidmachine.media3.exoplayer.upstream.SlidingPercentile (io.bidmachine.media3.exoplayer.upstream.SlidingPercentile)
.class public Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;
    }
.end annotation


# static fields
.field public static final INDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currentSortOrder:I

.field public final maxWeight:I

.field public nextSampleIndex:I

.field public recycledSampleCount:I

.field public final recycledSamples:[Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

.field public final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field public totalWeight:I


# direct methods
.method public static synthetic $r8$lambda$11RryvUrOAJFExzDiW7VjDPqF_A(Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;)I
    .registers 2

    .line 46
    iget p0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    iget p1, p1, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VxenKhypCpJc5vDQJYgiJVjCqjc(Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;)I
    .registers 2

    .line 44
    iget p0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->index:I

    iget p1, p1, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->index:I

    sub-int/2addr p0, p1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    .line 45
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->maxWeight:I

    const/4 p1, 0x5

    .line 69
    new-array p1, p1, [Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->recycledSamples:[Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    return-void
.end method


# virtual methods
.method public addSample(IF)V
    .registers 6

    .line 89
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->ensureSortedByIndex()V

    .line 92
    iget v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    if-lez v0, :cond_10

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->recycledSamples:[Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    aget-object v0, v1, v0

    goto :goto_16

    :cond_10
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;-><init>(Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$1;)V

    .line 93
    :goto_16
    iget v1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->nextSampleIndex:I

    iput v1, v0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->index:I

    .line 94
    iput p1, v0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    .line 95
    iput p2, v0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    .line 96
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget p2, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    .line 99
    :cond_2c
    :goto_2c
    iget p1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    iget p2, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->maxWeight:I

    if-le p1, p2, :cond_61

    sub-int/2addr p1, p2

    .line 101
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    .line 102
    iget v1, p2, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    if-gt v1, p1, :cond_58

    .line 103
    iget p1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    sub-int/2addr p1, v1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    .line 104
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    iget p1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2c

    .line 106
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->recycledSamples:[Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->recycledSampleCount:I

    aput-object p2, v0, p1

    goto :goto_2c

    :cond_58
    sub-int/2addr v1, p1

    .line 109
    iput v1, p2, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    .line 110
    iget p2, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    sub-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    goto :goto_2c

    :cond_61
    return-void
.end method

.method public final ensureSortedByIndex()V
    .registers 4

    .line 138
    iget v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 139
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v2, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    iput v1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    :cond_e
    return-void
.end method

.method public final ensureSortedByValue()V
    .registers 3

    .line 146
    iget v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    if-eqz v0, :cond_e

    .line 147
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    :cond_e
    return-void
.end method

.method public getPercentile(F)F
    .registers 6

    .line 122
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->ensureSortedByValue()V

    .line 123
    iget v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    .line 125
    :goto_9
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 126
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    .line 127
    iget v3, v2, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->weight:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_24

    .line 129
    iget p1, v2, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    return p1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 133
    :cond_27
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_32

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_32
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget p1, p1, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;->value:F

    return p1
.end method

.method public reset()V
    .registers 2

    .line 76
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->nextSampleIndex:I

    .line 79
    iput v0, p0, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.SlidingPercentile.AnonymousClass1 (io.bidmachine.media3.exoplayer.upstream.SlidingPercentile$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$1;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.upstream.SlidingPercentile.Sample (io.bidmachine.media3.exoplayer.upstream.SlidingPercentile$Sample)
.class public Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sample"
.end annotation


# instance fields
.field public index:I

.field public value:F

.field public weight:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$1;)V
    .registers 2

    .line 152
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;-><init>()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.SlidingPercentile$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.upstream.SlidingPercentile$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    check-cast p2, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->$r8$lambda$VxenKhypCpJc5vDQJYgiJVjCqjc(Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.SlidingPercentile$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.upstream.SlidingPercentile$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    check-cast p2, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile;->$r8$lambda$11RryvUrOAJFExzDiW7VjDPqF_A(Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;Lio/bidmachine/media3/exoplayer/upstream/SlidingPercentile$Sample;)I

    move-result p1

    return p1
.end method
