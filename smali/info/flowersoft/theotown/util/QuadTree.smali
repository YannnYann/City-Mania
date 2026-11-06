###### Class info.flowersoft.theotown.util.QuadTree (info.flowersoft.theotown.util.QuadTree)
.class public final Linfo/flowersoft/theotown/util/QuadTree;
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
.field public final height:I

.field public final layers:I

.field public final root:Linfo/flowersoft/theotown/util/Layer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/Layer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final shiftStep:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .registers 6

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Linfo/flowersoft/theotown/util/QuadTree;->width:I

    .line 10
    iput p2, p0, Linfo/flowersoft/theotown/util/QuadTree;->height:I

    .line 11
    iput p3, p0, Linfo/flowersoft/theotown/util/QuadTree;->shiftStep:I

    .line 13
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->log2(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p3

    iput v0, p0, Linfo/flowersoft/theotown/util/QuadTree;->layers:I

    .line 15
    new-instance v1, Linfo/flowersoft/theotown/util/Layer;

    mul-int/2addr v0, p3

    invoke-direct {v1, p1, p2, v0, p3}, Linfo/flowersoft/theotown/util/Layer;-><init>(IIII)V

    iput-object v1, p0, Linfo/flowersoft/theotown/util/QuadTree;->root:Linfo/flowersoft/theotown/util/Layer;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/util/QuadTree;->root:Linfo/flowersoft/theotown/util/Layer;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/Layer;->clear()V

    return-void
.end method

.method public final get(II)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/util/QuadTree;->root:Linfo/flowersoft/theotown/util/Layer;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/Layer;->get(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getDepth(II)I
    .registers 4

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/util/QuadTree;->root:Linfo/flowersoft/theotown/util/Layer;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/Layer;->getDepth(II)I

    move-result p1

    return p1
.end method

.method public final getHeight()I
    .registers 2

    .line 10
    iget v0, p0, Linfo/flowersoft/theotown/util/QuadTree;->height:I

    return v0
.end method

.method public final getShiftStep()I
    .registers 2

    .line 11
    iget v0, p0, Linfo/flowersoft/theotown/util/QuadTree;->shiftStep:I

    return v0
.end method

.method public final getSize()I
    .registers 2

    .line 23
    iget-object v0, p0, Linfo/flowersoft/theotown/util/QuadTree;->root:Linfo/flowersoft/theotown/util/Layer;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/Layer;->getSize()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 9
    iget v0, p0, Linfo/flowersoft/theotown/util/QuadTree;->width:I

    return v0
.end method

.method public final set(IILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/util/QuadTree;->root:Linfo/flowersoft/theotown/util/Layer;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/util/Layer;->set(IILjava/lang/Object;)V

    return-void
.end method
