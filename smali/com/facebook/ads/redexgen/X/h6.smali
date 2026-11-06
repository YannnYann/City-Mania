###### Class com.facebook.ads.redexgen.X.AbstractC2535h6 (com.facebook.ads.redexgen.X.h6)
.class public abstract Lcom/facebook/ads/redexgen/X/h6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/h2;,
        Lcom/facebook/ads/redexgen/X/h3;,
        Lcom/facebook/ads/redexgen/X/h5;,
        Lcom/facebook/ads/redexgen/X/h4;,
        Lcom/facebook/ads/redexgen/X/h1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/h2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/h6<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/h3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/h6<",
            "TK;TV;>.KeySet;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/h5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/h6<",
            "TK;TV;>.ValuesCollection;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92528
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h6;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 92529
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92530
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 92531
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 92532
    const/4 v0, 0x0

    return v0

    .line 92533
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public static A01(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 92534
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    .line 92535
    .local v0, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92536
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 92537
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 92538
    :cond_16
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v2, v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static A02(Ljava/util/Map;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 92539
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    .line 92540
    .local v0, "oldSize":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92541
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 92542
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 92543
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 92544
    :cond_20
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v2, v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static A03(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 92545
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v3, 0x1

    if-ne p0, p1, :cond_4

    .line 92546
    return v3

    .line 92547
    :cond_4
    instance-of v0, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 92548
    check-cast p1, Ljava/util/Set;

    .line 92549
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_b
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v1, v0, :cond_1c

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    return v3
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_1e} :catch_1f
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_1e} :catch_1e

    .line 92550
    .local v0, "ignored":Ljava/lang/ClassCastException;
    :catch_1e
    return v2

    .line 92551
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    .local v0, "ignored":Ljava/lang/NullPointerException;
    :catch_1f
    return v2

    .line 92552
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_20
    return v2
.end method


# virtual methods
.method public abstract A04()I
.end method

.method public abstract A05(Ljava/lang/Object;)I
.end method

.method public abstract A06(Ljava/lang/Object;)I
.end method

.method public abstract A07()Lcom/facebook/ads/redexgen/X/JR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/h2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 92553
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h6;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A00:Lcom/facebook/ads/redexgen/X/h2;

    if-nez v0, :cond_b

    .line 92554
    new-instance v0, Lcom/facebook/ads/redexgen/X/h2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/h2;-><init>(Lcom/facebook/ads/redexgen/X/h6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A00:Lcom/facebook/ads/redexgen/X/h2;

    .line 92555
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A00:Lcom/facebook/ads/redexgen/X/h2;

    return-object v0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/h3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 92556
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h6;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h3;

    if-nez v0, :cond_b

    .line 92557
    new-instance v0, Lcom/facebook/ads/redexgen/X/h3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/h3;-><init>(Lcom/facebook/ads/redexgen/X/h6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h3;

    .line 92558
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A01:Lcom/facebook/ads/redexgen/X/h3;

    return-object v0
.end method

.method public final A0A()Lcom/facebook/ads/redexgen/X/h5;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 92559
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h6;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A02:Lcom/facebook/ads/redexgen/X/h5;

    if-nez v0, :cond_b

    .line 92560
    new-instance v0, Lcom/facebook/ads/redexgen/X/h5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/h5;-><init>(Lcom/facebook/ads/redexgen/X/h6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A02:Lcom/facebook/ads/redexgen/X/h5;

    .line 92561
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/h6;->A02:Lcom/facebook/ads/redexgen/X/h5;

    return-object v0
.end method

.method public abstract A0B(II)Ljava/lang/Object;
.end method

.method public abstract A0C(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public abstract A0D()V
.end method

.method public abstract A0E(I)V
.end method

.method public abstract A0F(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public final A0G(I)[Ljava/lang/Object;
    .registers 6

    .line 92562
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h6;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/h6;->A04()I

    move-result v3

    .line 92563
    .local v0, "N":I
    new-array v2, v3, [Ljava/lang/Object;

    .line 92564
    .local v1, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v1, v3, :cond_12

    .line 92565
    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/h6;->A0B(II)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    .line 92566
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 92567
    .end local v2    # "i":I
    :cond_12
    return-object v2
.end method

.method public final A0H([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 92568
    .local p0, "this":Lcom/facebook/ads/redexgen/X/h6;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/h6;->A04()I

    move-result v2

    .line 92569
    .local v0, "N":I
    array-length v0, p1

    if-ge v0, v2, :cond_15

    .line 92570
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 92571
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v2, :cond_21

    .line 92572
    invoke-virtual {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/h6;->A0B(II)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v1

    .line 92573
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 92574
    .end local v1    # "i":I
    :cond_21
    array-length v0, p1

    if-le v0, v2, :cond_27

    .line 92575
    const/4 v0, 0x0

    aput-object v0, p1, v2

    .line 92576
    :cond_27
    return-object p1
.end method
