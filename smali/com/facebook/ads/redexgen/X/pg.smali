###### Class com.facebook.ads.redexgen.X.C3053pg (com.facebook.ads.redexgen.X.pg)
.class public final Lcom/facebook/ads/redexgen/X/pg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 108210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108211
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A00:Landroid/util/SparseArray;

    .line 108212
    return-void
.end method


# virtual methods
.method public final A00(I[I)V
    .registers 4

    .line 108213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108214
    return-void
.end method

.method public final A01(I)Z
    .registers 3

    .line 108215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final A02(I)[I
    .registers 3

    .line 108216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A00:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
