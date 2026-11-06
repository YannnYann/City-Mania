###### Class info.flowersoft.theotown.util.Layer (info.flowersoft.theotown.util.Layer)
.class public final Linfo/flowersoft/theotown/util/Layer;
.super Ljava/lang/Object;
.source "QuadTree.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final gridHeight:I

.field public final gridWidth:I

.field public final indexMask:I

.field public final shift:I

.field public final shiftStep:I

.field public size:I

.field public final values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p3, p0, Linfo/flowersoft/theotown/util/Layer;->shift:I

    .line 47
    iput p4, p0, Linfo/flowersoft/theotown/util/Layer;->shiftStep:I

    .line 49
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    shr-int/2addr p1, p3

    const/4 p4, 0x1

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/util/Layer;->gridWidth:I

    .line 50
    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p2

    shr-int/2addr p2, p3

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Linfo/flowersoft/theotown/util/Layer;->gridHeight:I

    shl-int p3, p4, p3

    sub-int/2addr p3, p4

    .line 51
    iput p3, p0, Linfo/flowersoft/theotown/util/Layer;->indexMask:I

    mul-int/2addr p1, p2

    .line 53
    new-array p2, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    :goto_27
    if-ge p3, p1, :cond_2f

    const/4 p4, 0x0

    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_27

    :cond_2f
    iput-object p2, p0, Linfo/flowersoft/theotown/util/Layer;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 7

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/util/Layer;->values:[Ljava/lang/Object;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Linfo/flowersoft/theotown/util/Layer;->size:I

    return-void
.end method

.method public final get(II)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/util/Layer;->values:[Ljava/lang/Object;

    iget v1, p0, Linfo/flowersoft/theotown/util/Layer;->shift:I

    shr-int v2, p1, v1

    shr-int v1, p2, v1

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/util/Layer;->index(II)I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_12

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_12
    iget v1, p0, Linfo/flowersoft/theotown/util/Layer;->shift:I

    if-nez v1, :cond_17

    return-object v0

    .line 66
    :cond_17
    check-cast v0, Linfo/flowersoft/theotown/util/Layer;

    .line 67
    iget v1, p0, Linfo/flowersoft/theotown/util/Layer;->indexMask:I

    and-int/2addr p1, v1

    and-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/Layer;->get(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getDepth(II)I
    .registers 6

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/util/Layer;->values:[Ljava/lang/Object;

    iget v1, p0, Linfo/flowersoft/theotown/util/Layer;->shift:I

    shr-int v2, p1, v1

    shr-int v1, p2, v1

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/util/Layer;->index(II)I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_12

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_12
    iget v1, p0, Linfo/flowersoft/theotown/util/Layer;->shift:I

    const/4 v2, 0x1

    if-nez v1, :cond_18

    return v2

    .line 77
    :cond_18
    check-cast v0, Linfo/flowersoft/theotown/util/Layer;

    .line 78
    iget v1, p0, Linfo/flowersoft/theotown/util/Layer;->indexMask:I

    and-int/2addr p1, v1

    and-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/Layer;->getDepth(II)I

    move-result p1

    add-int/2addr p1, v2

    return p1
.end method

.method public final getShift()I
    .registers 2

    .line 46
    iget v0, p0, Linfo/flowersoft/theotown/util/Layer;->shift:I

    return v0
.end method

.method public final getShiftStep()I
    .registers 2

    .line 47
    iget v0, p0, Linfo/flowersoft/theotown/util/Layer;->shiftStep:I

    return v0
.end method

.method public final getSize()I
    .registers 2

    .line 57
    iget v0, p0, Linfo/flowersoft/theotown/util/Layer;->size:I

    return v0
.end method

.method public final index(II)I
    .registers 4

    .line 55
    iget v0, p0, Linfo/flowersoft/theotown/util/Layer;->gridWidth:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public final set(IILjava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .line 83
    iget v0, p0, Linfo/flowersoft/theotown/util/Layer;->shift:I

    shr-int v1, p1, v0

    shr-int v0, p2, v0

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/util/Layer;->index(II)I

    move-result v0

    .line 85
    iget v1, p0, Linfo/flowersoft/theotown/util/Layer;->shift:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2f

    .line 86
    iget-object p1, p0, Linfo/flowersoft/theotown/util/Layer;->values:[Ljava/lang/Object;

    aget-object p2, p1, v0

    if-nez p2, :cond_18

    move p2, v3

    goto :goto_19

    :cond_18
    move p2, v2

    :goto_19
    if-nez p3, :cond_1c

    move v2, v3

    :cond_1c
    if-eq p2, v2, :cond_2c

    if-nez p3, :cond_27

    .line 89
    iget p2, p0, Linfo/flowersoft/theotown/util/Layer;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Linfo/flowersoft/theotown/util/Layer;->size:I

    goto :goto_2c

    .line 91
    :cond_27
    iget p2, p0, Linfo/flowersoft/theotown/util/Layer;->size:I

    add-int/2addr p2, v3

    iput p2, p0, Linfo/flowersoft/theotown/util/Layer;->size:I

    .line 94
    :cond_2c
    :goto_2c
    aput-object p3, p1, v0

    return-void

    .line 98
    :cond_2f
    iget-object v4, p0, Linfo/flowersoft/theotown/util/Layer;->values:[Ljava/lang/Object;

    aget-object v4, v4, v0

    check-cast v4, Linfo/flowersoft/theotown/util/Layer;

    if-nez v4, :cond_4f

    if-nez p3, :cond_3a

    goto :goto_6d

    .line 105
    :cond_3a
    new-instance v4, Linfo/flowersoft/theotown/util/Layer;

    shl-int v5, v3, v1

    shl-int/2addr v3, v1

    iget v6, p0, Linfo/flowersoft/theotown/util/Layer;->shiftStep:I

    sub-int/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Linfo/flowersoft/theotown/util/Layer;->shiftStep:I

    invoke-direct {v4, v5, v3, v1, v2}, Linfo/flowersoft/theotown/util/Layer;-><init>(IIII)V

    .line 106
    iget-object v1, p0, Linfo/flowersoft/theotown/util/Layer;->values:[Ljava/lang/Object;

    aput-object v4, v1, v0

    .line 108
    :cond_4f
    iget v1, p0, Linfo/flowersoft/theotown/util/Layer;->size:I

    iget v2, v4, Linfo/flowersoft/theotown/util/Layer;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/util/Layer;->size:I

    .line 109
    iget v1, p0, Linfo/flowersoft/theotown/util/Layer;->indexMask:I

    and-int/2addr p1, v1

    and-int/2addr p2, v1

    invoke-virtual {v4, p1, p2, p3}, Linfo/flowersoft/theotown/util/Layer;->set(IILjava/lang/Object;)V

    .line 110
    iget p1, p0, Linfo/flowersoft/theotown/util/Layer;->size:I

    iget p2, v4, Linfo/flowersoft/theotown/util/Layer;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Linfo/flowersoft/theotown/util/Layer;->size:I

    .line 112
    iget p1, v4, Linfo/flowersoft/theotown/util/Layer;->size:I

    if-nez p1, :cond_6d

    .line 114
    iget-object p1, p0, Linfo/flowersoft/theotown/util/Layer;->values:[Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p2, p1, v0

    :cond_6d
    :goto_6d
    return-void
.end method
