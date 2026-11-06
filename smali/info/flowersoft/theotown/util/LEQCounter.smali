###### Class info.flowersoft.theotown.util.LEQCounter (info.flowersoft.theotown.util.LEQCounter)
.class public Linfo/flowersoft/theotown/util/LEQCounter;
.super Ljava/lang/Object;
.source "LEQCounter.java"


# instance fields
.field public final arr:Lio/blueflower/stapel2d/util/IntList;

.field public total:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/LEQCounter;->arr:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 17
    iput v1, p0, Linfo/flowersoft/theotown/util/LEQCounter;->total:I

    return-void
.end method


# virtual methods
.method public countEqual(I)I
    .registers 3

    .line 37
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/LEQCounter;->countLessEqual(I)I

    move-result v0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/LEQCounter;->countLess(I)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public countInRange(II)I
    .registers 3

    .line 53
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/util/LEQCounter;->countLessEqual(I)I

    move-result p2

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/LEQCounter;->countLess(I)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public countLess(I)I
    .registers 2

    if-lez p1, :cond_9

    add-int/lit8 p1, p1, -0x1

    .line 42
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/LEQCounter;->countLessEqual(I)I

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public countLessEqual(I)I
    .registers 4

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LEQCounter;->arr:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getTotal()I
    .registers 2

    .line 57
    iget v0, p0, Linfo/flowersoft/theotown/util/LEQCounter;->total:I

    return v0
.end method

.method public insert(I)V
    .registers 3

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/util/LEQCounter;->insert(II)V

    return-void
.end method

.method public insert(II)V
    .registers 5

    .line 25
    :goto_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LEQCounter;->arr:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v0, p1, :cond_1a

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LEQCounter;->arr:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_0

    .line 29
    :cond_1a
    :goto_1a
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LEQCounter;->arr:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2f

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LEQCounter;->arr:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    .line 33
    :cond_2f
    iget p1, p0, Linfo/flowersoft/theotown/util/LEQCounter;->total:I

    add-int/2addr p1, p2

    iput p1, p0, Linfo/flowersoft/theotown/util/LEQCounter;->total:I

    return-void
.end method
