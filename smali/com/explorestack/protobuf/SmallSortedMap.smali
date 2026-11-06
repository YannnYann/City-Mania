###### Class com.explorestack.protobuf.SmallSortedMap (com.explorestack.protobuf.SmallSortedMap)
.class public Lcom/explorestack/protobuf/SmallSortedMap;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/SmallSortedMap$EmptySet;,
        Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;,
        Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;,
        Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntrySet;,
        Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;,
        Lcom/explorestack/protobuf/SmallSortedMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TK;TV;>.Entry;>;"
        }
    .end annotation
.end field

.field public isImmutable:Z

.field public volatile lazyDescendingEntrySet:Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TK;TV;>.DescendingEntrySet;"
        }
    .end annotation
.end field

.field public volatile lazyEntrySet:Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field public final maxArraySize:I

.field public overflowEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public overflowEntriesDescending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 146
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 147
    iput p1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->maxArraySize:I

    .line 148
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 149
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 150
    iput-object p1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/explorestack/protobuf/SmallSortedMap$1;)V
    .registers 3

    .line 83
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;-><init>(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/explorestack/protobuf/SmallSortedMap;)V
    .registers 1

    .line 83
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->checkMutable()V

    return-void
.end method

.method public static synthetic access$600(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/List;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/Map;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/explorestack/protobuf/SmallSortedMap;I)Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/Map;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    return-object p0
.end method

.method public static newFieldMap(I)Lcom/explorestack/protobuf/SmallSortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite<",
            "TFieldDescriptorType;>;>(I)",
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/explorestack/protobuf/SmallSortedMap$1;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/SmallSortedMap$1;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final binarySearchInArray(Ljava/lang/Comparable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_23

    .line 322
    iget-object v2, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_20

    add-int/lit8 v0, v0, 0x1

    :goto_1e
    neg-int p1, v0

    return p1

    :cond_20
    if-nez v2, :cond_23

    return v1

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-gt v0, v1, :cond_47

    add-int v2, v0, v1

    .line 331
    div-int/lit8 v2, v2, 0x2

    .line 332
    iget-object v3, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_40

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    goto :goto_24

    :cond_40
    if-lez v3, :cond_46

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_24

    :cond_46
    return v2

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method public final checkMutable()V
    .registers 2

    .line 368
    iget-boolean v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_5

    return-void

    .line 369
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .line 264
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->checkMutable()V

    .line 265
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 266
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 269
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1d
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 218
    check-cast p1, Ljava/lang/Comparable;

    .line 219
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public descendingEntrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntrySet;

    if-nez v0, :cond_c

    .line 361
    new-instance v0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;Lcom/explorestack/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 363
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntrySet;

    return-object v0
.end method

.method public final ensureEntryArrayMutable()V
    .registers 3

    .line 389
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->checkMutable()V

    .line 390
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->maxArraySize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    :cond_1a
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;

    if-nez v0, :cond_c

    .line 354
    new-instance v0, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;Lcom/explorestack/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;

    .line 356
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 670
    :cond_4
    instance-of v1, p1, Lcom/explorestack/protobuf/SmallSortedMap;

    if-nez v1, :cond_d

    .line 671
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 674
    :cond_d
    check-cast p1, Lcom/explorestack/protobuf/SmallSortedMap;

    .line 675
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->size()I

    move-result v1

    .line 676
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SmallSortedMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 681
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    .line 682
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v4

    if-eq v2, v4, :cond_32

    .line 683
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_32
    move v4, v3

    :goto_33
    if-ge v4, v2, :cond_47

    .line 687
    invoke-virtual {p0, v4}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    return v3

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_47
    if-eq v2, v1, :cond_52

    .line 693
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    iget-object p1, p1, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_52
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 230
    check-cast p1, Ljava/lang/Comparable;

    .line 231
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_15

    .line 233
    iget-object p1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 235
    :cond_15
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayEntryAt(I)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public getNumArrayEntries()I
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumOverflowEntries()I
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOverflowEntries()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 195
    invoke-static {}, Lcom/explorestack/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 196
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getOverflowEntriesMutable()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->checkMutable()V

    .line 380
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_1e

    .line 381
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 382
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 384
    :cond_1e
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_18

    .line 704
    iget-object v3, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 707
    :cond_18
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumOverflowEntries()I

    move-result v0

    if-lez v0, :cond_25

    .line 708
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_25
    return v2
.end method

.method public isImmutable()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->isImmutable:Z

    return v0
.end method

.method public makeImmutable()V
    .registers 2

    .line 155
    iget-boolean v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_2d

    .line 160
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 161
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 162
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_15
    iput-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 164
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 165
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 166
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_28

    :cond_22
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 167
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_28
    iput-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->isImmutable:Z

    :cond_2d
    return-void
.end method

.method public put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->checkMutable()V

    .line 241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_16

    .line 244
    iget-object p1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 246
    :cond_16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->ensureEntryArrayMutable()V

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 248
    iget v1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->maxArraySize:I

    if-lt v0, v1, :cond_29

    .line 250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 253
    :cond_29
    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/explorestack/protobuf/SmallSortedMap;->maxArraySize:I

    if-ne v1, v2, :cond_4c

    .line 255
    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/SmallSortedMap$Entry;

    .line 256
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_4c
    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v2, Lcom/explorestack/protobuf/SmallSortedMap$Entry;

    invoke-direct {v2, p0, p1, p2}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 83
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->checkMutable()V

    .line 282
    check-cast p1, Ljava/lang/Comparable;

    .line 283
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_10

    .line 285
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 289
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p1, 0x0

    return-object p1

    .line 292
    :cond_1a
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final removeArrayEntryAt(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->checkMutable()V

    .line 298
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 299
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v2, Lcom/explorestack/protobuf/SmallSortedMap$Entry;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_36
    return-object p1
.end method

.method public size()I
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class com.explorestack.protobuf.SmallSortedMap.AnonymousClass1 (com.explorestack.protobuf.SmallSortedMap$1)
.class public final Lcom/explorestack/protobuf/SmallSortedMap$1;
.super Lcom/explorestack/protobuf/SmallSortedMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/explorestack/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/SmallSortedMap<",
        "TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/explorestack/protobuf/SmallSortedMap;-><init>(ILcom/explorestack/protobuf/SmallSortedMap$1;)V

    return-void
.end method


# virtual methods
.method public makeImmutable()V
    .registers 4

    .line 99
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_5b

    const/4 v0, 0x0

    .line 100
    :goto_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 101
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 104
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 107
    :cond_2d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 110
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 114
    :cond_5b
    invoke-super {p0}, Lcom/explorestack/protobuf/SmallSortedMap;->makeImmutable()V

    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 95
    check-cast p1, Lcom/explorestack/protobuf/FieldSet$FieldDescriptorLite;

    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.SmallSortedMap.DescendingEntryIterator (com.explorestack.protobuf.SmallSortedMap$DescendingEntryIterator)
.class public Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DescendingEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public lazyOverflowIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public pos:I

.field public final synthetic this$0:Lcom/explorestack/protobuf/SmallSortedMap;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    invoke-static {p1}, Lcom/explorestack/protobuf/SmallSortedMap;->access$600(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->pos:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;Lcom/explorestack/protobuf/SmallSortedMap$1;)V
    .registers 3

    .line 589
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;)V

    return-void
.end method


# virtual methods
.method public final getOverflowIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 619
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->access$900(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    .line 621
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .line 596
    iget v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->pos:I

    if-lez v0, :cond_10

    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->access$600(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1a

    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 589
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 601
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 602
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 604
    :cond_15
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->access$600(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 609
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class com.explorestack.protobuf.SmallSortedMap.DescendingEntrySet (com.explorestack.protobuf.SmallSortedMap$DescendingEntrySet)
.class public Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntrySet;
.super Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DescendingEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/SmallSortedMap<",
        "TK;TV;>.EntrySet;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/explorestack/protobuf/SmallSortedMap;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;)V
    .registers 3

    .line 523
    iput-object p1, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntrySet;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;Lcom/explorestack/protobuf/SmallSortedMap$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;Lcom/explorestack/protobuf/SmallSortedMap$1;)V
    .registers 3

    .line 523
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 526
    new-instance v0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;

    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntrySet;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/SmallSortedMap$DescendingEntryIterator;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;Lcom/explorestack/protobuf/SmallSortedMap$1;)V

    return-object v0
.end method

###### Class com.explorestack.protobuf.SmallSortedMap.EmptySet (com.explorestack.protobuf.SmallSortedMap$EmptySet)
.class public Lcom/explorestack/protobuf/SmallSortedMap$EmptySet;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptySet"
.end annotation


# static fields
.field public static final ITERABLE:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 632
    new-instance v0, Lcom/explorestack/protobuf/SmallSortedMap$EmptySet$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/SmallSortedMap$EmptySet$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/SmallSortedMap$EmptySet;->ITERATOR:Ljava/util/Iterator;

    .line 650
    new-instance v0, Lcom/explorestack/protobuf/SmallSortedMap$EmptySet$2;

    invoke-direct {v0}, Lcom/explorestack/protobuf/SmallSortedMap$EmptySet$2;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/SmallSortedMap$EmptySet;->ITERABLE:Ljava/lang/Iterable;

    return-void
.end method

.method public static synthetic access$1000()Ljava/util/Iterator;
    .registers 1

    .line 630
    sget-object v0, Lcom/explorestack/protobuf/SmallSortedMap$EmptySet;->ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public static iterable()Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 660
    sget-object v0, Lcom/explorestack/protobuf/SmallSortedMap$EmptySet;->ITERABLE:Ljava/lang/Iterable;

    return-object v0
.end method

###### Class com.explorestack.protobuf.SmallSortedMap.EmptySet.AnonymousClass1 (com.explorestack.protobuf.SmallSortedMap$EmptySet$1)
.class public final Lcom/explorestack/protobuf/SmallSortedMap$EmptySet$1;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/SmallSortedMap$EmptySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .line 641
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    .line 646
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class com.explorestack.protobuf.SmallSortedMap.EmptySet.AnonymousClass2 (com.explorestack.protobuf.SmallSortedMap$EmptySet$2)
.class public final Lcom/explorestack/protobuf/SmallSortedMap$EmptySet$2;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/SmallSortedMap$EmptySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 654
    invoke-static {}, Lcom/explorestack/protobuf/SmallSortedMap$EmptySet;->access$1000()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.SmallSortedMap.Entry (com.explorestack.protobuf.SmallSortedMap$Entry)
.class public Lcom/explorestack/protobuf/SmallSortedMap$Entry;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Ljava/lang/Comparable<",
        "Lcom/explorestack/protobuf/SmallSortedMap<",
        "TK;TV;>.Entry;>;"
    }
.end annotation


# instance fields
.field public final key:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/explorestack/protobuf/SmallSortedMap;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    .line 410
    iput-object p3, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 405
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/explorestack/protobuf/SmallSortedMap$Entry;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/SmallSortedMap<",
            "TK;TV;>.Entry;)I"
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 399
    check-cast p1, Lcom/explorestack/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->compareTo(Lcom/explorestack/protobuf/SmallSortedMap$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 441
    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 445
    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    .line 446
    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    return v2
.end method

.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 461
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getKey()Ljava/lang/Comparable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 399
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 451
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->access$300(Lcom/explorestack/protobuf/SmallSortedMap;)V

    .line 431
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    .line 432
    iput-object p1, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->key:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.SmallSortedMap.EntryIterator (com.explorestack.protobuf.SmallSortedMap$EntryIterator)
.class public Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public lazyOverflowIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public nextCalledBeforeRemove:Z

.field public pos:I

.field public final synthetic this$0:Lcom/explorestack/protobuf/SmallSortedMap;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;)V
    .registers 2

    .line 534
    iput-object p1, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 536
    iput p1, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->pos:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;Lcom/explorestack/protobuf/SmallSortedMap$1;)V
    .registers 3

    .line 534
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;)V

    return-void
.end method


# virtual methods
.method public final getOverflowIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 579
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->access$700(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    .line 581
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .registers 4

    .line 542
    iget v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v2}, Lcom/explorestack/protobuf/SmallSortedMap;->access$600(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_29

    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    .line 543
    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->access$700(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 534
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 548
    iput-boolean v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 551
    iget v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->access$600(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 552
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->access$600(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 554
    :cond_23
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .registers 4

    .line 559
    iget-boolean v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 563
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->access$300(Lcom/explorestack/protobuf/SmallSortedMap;)V

    .line 565
    iget v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-static {v1}, Lcom/explorestack/protobuf/SmallSortedMap;->access$600(Lcom/explorestack/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 566
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    iget v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->pos:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->access$800(Lcom/explorestack/protobuf/SmallSortedMap;I)Ljava/lang/Object;

    return-void

    .line 568
    :cond_26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 560
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.explorestack.protobuf.SmallSortedMap.EntrySet (com.explorestack.protobuf.SmallSortedMap$EntrySet)
.class public Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/explorestack/protobuf/SmallSortedMap;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;)V
    .registers 2

    .line 466
    iput-object p1, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/SmallSortedMap;Lcom/explorestack/protobuf/SmallSortedMap$1;)V
    .registers 3

    .line 466
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 466
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 494
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 495
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    .line 486
    check-cast p1, Ljava/util/Map$Entry;

    .line 487
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 488
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_1d

    if-eqz v0, :cond_1b

    .line 489
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 470
    new-instance v0, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;

    iget-object v1, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/SmallSortedMap$EntryIterator;-><init>(Lcom/explorestack/protobuf/SmallSortedMap;Lcom/explorestack/protobuf/SmallSortedMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 509
    check-cast p1, Ljava/util/Map$Entry;

    .line 510
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 511
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/explorestack/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/explorestack/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SmallSortedMap;->size()I

    move-result v0

    return v0
.end method
