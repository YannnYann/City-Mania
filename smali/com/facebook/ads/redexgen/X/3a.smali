###### Class com.facebook.ads.redexgen.X.C12913a (com.facebook.ads.redexgen.X.3a)
.class public final Lcom/facebook/ads/redexgen/X/3a;
.super Lcom/facebook/ads/redexgen/X/4k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/4k<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/9l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9l;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/9l<",
            "TE;>;I)V"
        }
    .end annotation

    .line 7133
    .local p0, "this":Lcom/facebook/ads/redexgen/X/3a;, "Lcom/google/common/collect/ImmutableList$Itr<TE;>;"
    .local p1, "list":Lcom/facebook/ads/redexgen/X/9l;, "Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/9l;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/4k;-><init>(II)V

    .line 7134
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3a;->A00:Lcom/facebook/ads/redexgen/X/9l;

    .line 7135
    return-void
.end method


# virtual methods
.method public final A00(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 7136
    .local p0, "this":Lcom/facebook/ads/redexgen/X/3a;, "Lcom/google/common/collect/ImmutableList$Itr<TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3a;->A00:Lcom/facebook/ads/redexgen/X/9l;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9l;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.AbstractC13254k (com.facebook.ads.redexgen.X.4k)
.class public abstract Lcom/facebook/ads/redexgen/X/4k;
.super Lcom/facebook/ads/redexgen/X/9R;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/9R<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public A00:I

.field public final A01:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "position"
        }
    .end annotation

    .line 11219
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4k;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9R;-><init>()V

    .line 11220
    invoke-static {p2, p1}, Lcom/facebook/ads/redexgen/X/Wu;->A01(II)I

    .line 11221
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:I

    .line 11222
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    .line 11223
    return-void
.end method


# virtual methods
.method public abstract A00(I)Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 3

    .line 11224
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4k;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A01:I

    if-ge v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final hasPrevious()Z
    .registers 2

    .line 11225
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4k;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 11226
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4k;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4k;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11227
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4k;->A00(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 11228
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .registers 2

    .line 11229
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4k;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 11230
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4k;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4k;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 11231
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4k;->A00(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 11232
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .registers 2

    .line 11233
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4k;, "Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4k;->A00:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
