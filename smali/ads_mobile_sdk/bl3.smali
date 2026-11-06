###### Class ads_mobile_sdk.bl3 (ads_mobile_sdk.bl3)
.class Lads_mobile_sdk/bl3;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lads_mobile_sdk/bl3$a;,
        Lads_mobile_sdk/bl3$c;,
        Lads_mobile_sdk/bl3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lads_mobile_sdk/qr0$b<",
        "TK;>;>",
        "Ljava/util/AbstractMap<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:Z

.field private volatile d:Lads_mobile_sdk/bl3$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/bl3<",
            "TK;>.c;"
        }
    .end annotation
.end field

.field private volatile e:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgeta(Lads_mobile_sdk/bl3;)[Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetb(Lads_mobile_sdk/bl3;)I
    .registers 1

    .line 0
    iget p0, p0, Lads_mobile_sdk/bl3;->b:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$ma(Lads_mobile_sdk/bl3;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->a()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mb(Lads_mobile_sdk/bl3;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lads_mobile_sdk/bl3;->c:Z

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    .line 85
    iput v0, p0, Lads_mobile_sdk/bl3;->b:I

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    return-void
.end method

.method private a(Lads_mobile_sdk/qr0$b;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 347
    iget p1, p0, Lads_mobile_sdk/bl3;->b:I

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    ushr-int/lit8 p1, p1, 0x1

    .line 350
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lads_mobile_sdk/bl3$a;

    invoke-virtual {p1}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    const/4 p1, 0x0

    .line 351
    throw p1
.end method

.method private a()V
    .registers 2

    .line 734
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->c:Z

    if-nez v0, :cond_5

    return-void

    .line 735
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private a(I)V
    .registers 5

    .line 1003
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_33

    array-length v1, v0

    if-nez v1, :cond_8

    goto :goto_33

    .line 1007
    :cond_8
    array-length v0, v0

    if-le p1, v0, :cond_32

    .line 1010
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    if-nez v0, :cond_18

    .line 1011
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 1014
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-gt p1, v0, :cond_18

    goto :goto_32

    .line 1019
    :cond_18
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    array-length v1, v0

    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v2

    sub-int v2, v1, p1

    if-gez v2, :cond_23

    goto :goto_24

    :cond_23
    move p1, v1

    :goto_24
    const v1, 0x7ffffff7

    sub-int v2, p1, v1

    if-lez v2, :cond_2c

    move p1, v1

    .line 1028
    :cond_2c
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    :cond_32
    :goto_32
    return-void

    :cond_33
    :goto_33
    const/16 v0, 0x10

    .line 1029
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    return-void
.end method

.method private b()V
    .registers 7

    .line 303
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->c:Z

    if-eqz v0, :cond_5

    goto :goto_50

    .line 306
    :cond_5
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    if-nez v0, :cond_50

    .line 310
    monitor-enter p0

    .line 311
    :try_start_a
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    if-eqz v0, :cond_12

    .line 312
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    goto :goto_4e

    .line 314
    :cond_12
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_19

    .line 315
    monitor-exit p0

    return-void

    .line 317
    :cond_19
    iget-object v2, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    move v0, v3

    .line 321
    :goto_20
    iget v2, p0, Lads_mobile_sdk/bl3;->b:I

    const/4 v4, 0x0

    if-ge v3, v2, :cond_40

    .line 322
    iget-object v2, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object v5, v2, v3

    check-cast v5, Lads_mobile_sdk/bl3$a;

    if-gtz v0, :cond_34

    .line 326
    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_34
    sub-int/2addr v0, v1

    .line 327
    aget-object v0, v2, v0

    check-cast v0, Lads_mobile_sdk/bl3$a;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    invoke-virtual {v5}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    throw v4

    :cond_40
    if-ge v0, v2, :cond_4a

    .line 335
    iput v0, p0, Lads_mobile_sdk/bl3;->b:I

    .line 337
    iget-object v2, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    array-length v3, v2

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 339
    :cond_4a
    iput-boolean v1, p0, Lads_mobile_sdk/bl3;->e:Z

    .line 340
    monitor-exit p0

    return-void

    :goto_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_10

    throw v0

    :cond_50
    :goto_50
    return-void
.end method


# virtual methods
.method public b(I)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 467
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 468
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    if-ge p1, v0, :cond_e

    .line 471
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lads_mobile_sdk/bl3$a;

    return-object p1

    .line 472
    :cond_e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public c()V
    .registers 3

    .line 101
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->c:Z

    if-eqz v0, :cond_5

    return-void

    .line 104
    :cond_5
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 105
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_1b

    .line 106
    iget v1, p0, Lads_mobile_sdk/bl3;->b:I

    if-gtz v1, :cond_11

    goto :goto_1b

    :cond_11
    const/4 v1, 0x0

    .line 107
    aget-object v0, v0, v1

    check-cast v0, Lads_mobile_sdk/bl3$a;

    .line 108
    invoke-virtual {v0}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    const/4 v0, 0x0

    throw v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lads_mobile_sdk/bl3;->c:Z

    return-void
.end method

.method public clear()V
    .registers 2

    .line 234
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->a()V

    .line 235
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 237
    iput v0, p0, Lads_mobile_sdk/bl3;->b:I

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    :cond_10
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 152
    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    .line 153
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    const/4 p1, 0x0

    .line 154
    invoke-direct {p0, p1}, Lads_mobile_sdk/bl3;->a(Lads_mobile_sdk/qr0$b;)I

    move-result p1

    if-ltz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 373
    iget-object v0, p0, Lads_mobile_sdk/bl3;->d:Lads_mobile_sdk/bl3$c;

    if-nez v0, :cond_f

    .line 374
    new-instance v0, Lads_mobile_sdk/bl3$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lads_mobile_sdk/bl3$c;-><init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/bl3-IA;)V

    iput-object v0, p0, Lads_mobile_sdk/bl3;->d:Lads_mobile_sdk/bl3$c;

    .line 376
    :cond_f
    iget-object v0, p0, Lads_mobile_sdk/bl3;->d:Lads_mobile_sdk/bl3$c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 527
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/bl3;

    if-nez v1, :cond_d

    .line 528
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 531
    :cond_d
    check-cast p1, Lads_mobile_sdk/bl3;

    .line 532
    invoke-virtual {p0}, Lads_mobile_sdk/bl3;->size()I

    move-result v1

    .line 533
    invoke-virtual {p1}, Lads_mobile_sdk/bl3;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 537
    :cond_1b
    iget-object v2, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    .line 538
    iget-object p1, p1, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    move v4, v3

    :goto_20
    if-ge v4, v1, :cond_30

    .line 540
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    return v3

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_30
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 167
    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    const/4 p1, 0x0

    .line 169
    invoke-direct {p0, p1}, Lads_mobile_sdk/bl3;->a(Lads_mobile_sdk/qr0$b;)I

    move-result v0

    if-ltz v0, :cond_17

    .line 171
    iget-object p1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object p1, p1, v0

    check-cast p1, Lads_mobile_sdk/bl3$a;

    .line 172
    invoke-virtual {p1}, Lads_mobile_sdk/bl3$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_17
    return-object p1
.end method

.method public hashCode()I
    .registers 5

    .line 550
    invoke-virtual {p0}, Lads_mobile_sdk/bl3;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_14

    .line 552
    iget-object v3, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    return v2
.end method

.method public isEmpty()Z
    .registers 2

    .line 142
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public put(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->a()V

    .line 208
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    .line 214
    iget v1, p0, Lads_mobile_sdk/bl3;->b:I

    const/4 v2, 0x0

    if-lez v1, :cond_30

    .line 215
    iget-object v3, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v3, v1

    check-cast v1, Lads_mobile_sdk/bl3$a;

    invoke-virtual {v1}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_20

    const/4 v0, 0x0

    goto :goto_30

    :cond_20
    if-nez v1, :cond_30

    .line 220
    iget-object p1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    check-cast p1, Lads_mobile_sdk/bl3$a;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/bl3$a;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 226
    :cond_30
    :goto_30
    iget v1, p0, Lads_mobile_sdk/bl3;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lads_mobile_sdk/bl3;->a(I)V

    .line 227
    iget-object v1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    iget v3, p0, Lads_mobile_sdk/bl3;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lads_mobile_sdk/bl3;->b:I

    new-instance v4, Lads_mobile_sdk/bl3$a;

    invoke-direct {v4, p0, p1, p2}, Lads_mobile_sdk/bl3$a;-><init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)V

    aput-object v4, v1, v3

    .line 228
    iput-boolean v0, p0, Lads_mobile_sdk/bl3;->e:Z

    return-object v2
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 284
    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/bl3;->put(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;*>;)V"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->a()V

    .line 180
    instance-of v0, p1, Lads_mobile_sdk/bl3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 182
    check-cast p1, Lads_mobile_sdk/bl3;

    .line 185
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    iget v2, p1, Lads_mobile_sdk/bl3;->b:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lads_mobile_sdk/bl3;->a(I)V

    .line 186
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    .line 187
    iget v2, p1, Lads_mobile_sdk/bl3;->b:I

    add-int/2addr v2, v0

    move v3, v0

    :goto_18
    if-ge v3, v2, :cond_5c

    .line 189
    iget-object v4, p1, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    sub-int v5, v3, v0

    aget-object v4, v4, v5

    check-cast v4, Lads_mobile_sdk/bl3$a;

    .line 190
    invoke-virtual {v4}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    invoke-virtual {v4}, Lads_mobile_sdk/bl3$a;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lads_mobile_sdk/bl3;->put(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 193
    :cond_2f
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lads_mobile_sdk/bl3;->a(I)V

    .line 194
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lads_mobile_sdk/bl3;->put(Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    :cond_5c
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 253
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->a()V

    .line 254
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 255
    invoke-static {p1}, Lads_mobile_sdk/dr0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 256
    invoke-direct {p0, p1}, Lads_mobile_sdk/bl3;->a(Lads_mobile_sdk/qr0$b;)I

    move-result v0

    if-gez v0, :cond_11

    return-object p1

    .line 260
    :cond_11
    iget-object v1, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lads_mobile_sdk/bl3$a;

    invoke-virtual {v1}, Lads_mobile_sdk/bl3$a;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lads_mobile_sdk/bl3;->b:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-object v0, p0, Lads_mobile_sdk/bl3;->a:[Ljava/lang/Object;

    iget v2, p0, Lads_mobile_sdk/bl3;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lads_mobile_sdk/bl3;->b:I

    aput-object p1, v0, v2

    return-object v1
.end method

.method public size()I
    .registers 2

    .line 136
    invoke-direct {p0}, Lads_mobile_sdk/bl3;->b()V

    .line 137
    iget v0, p0, Lads_mobile_sdk/bl3;->b:I

    return v0
.end method

###### Class ads_mobile_sdk.bl3.a (ads_mobile_sdk.bl3$a)
.class Lads_mobile_sdk/bl3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/bl3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lads_mobile_sdk/bl3<",
        "TK;>.a;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field final synthetic b:Lads_mobile_sdk/bl3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/qr0$b;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lads_mobile_sdk/bl3$a;->b:Lads_mobile_sdk/bl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p3, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1

    .line 873
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lads_mobile_sdk/bl3$a;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lads_mobile_sdk/bl3<",
            "TK;>.a;)I"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    invoke-virtual {p1}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 392
    check-cast p1, Lads_mobile_sdk/bl3$a;

    invoke-virtual {p0, p1}, Lads_mobile_sdk/bl3$a;->a(Lads_mobile_sdk/bl3$a;)I

    move-result p1

    return p1
.end method

.method public d()Lads_mobile_sdk/qr0$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 435
    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 438
    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    .line 439
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lads_mobile_sdk/bl3$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lads_mobile_sdk/bl3$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    return v0

    :cond_24
    return v2
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 392
    invoke-virtual {p0}, Lads_mobile_sdk/bl3$a;->d()Lads_mobile_sdk/qr0$b;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 409
    iget-object v0, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 444
    iget-object v0, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 420
    iget-object v0, p0, Lads_mobile_sdk/bl3$a;->b:Lads_mobile_sdk/bl3;

    invoke-static {v0}, Lads_mobile_sdk/bl3;->-$$Nest$ma(Lads_mobile_sdk/bl3;)V

    .line 421
    iget-object v0, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    .line 422
    iput-object p1, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 449
    iget-object v0, p0, Lads_mobile_sdk/bl3$a;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.bl3.b (ads_mobile_sdk.bl3$b)
.class Lads_mobile_sdk/bl3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/bl3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lads_mobile_sdk/bl3;


# direct methods
.method private constructor <init>(Lads_mobile_sdk/bl3;)V
    .registers 2

    .line 495
    iput-object p1, p0, Lads_mobile_sdk/bl3$b;->b:Lads_mobile_sdk/bl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 497
    iput p1, p0, Lads_mobile_sdk/bl3$b;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/bl3-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lads_mobile_sdk/bl3$b;-><init>(Lads_mobile_sdk/bl3;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lads_mobile_sdk/bl3$b;->b:Lads_mobile_sdk/bl3;

    invoke-static {v0}, Lads_mobile_sdk/bl3;->-$$Nest$mb(Lads_mobile_sdk/bl3;)V

    .line 510
    invoke-virtual {p0}, Lads_mobile_sdk/bl3$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 513
    iget-object v0, p0, Lads_mobile_sdk/bl3$b;->b:Lads_mobile_sdk/bl3;

    invoke-static {v0}, Lads_mobile_sdk/bl3;->-$$Nest$fgeta(Lads_mobile_sdk/bl3;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lads_mobile_sdk/bl3$b;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lads_mobile_sdk/bl3$b;->a:I

    aget-object v0, v0, v1

    check-cast v0, Lads_mobile_sdk/bl3$a;

    return-object v0

    .line 514
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 4

    .line 502
    iget-object v0, p0, Lads_mobile_sdk/bl3$b;->b:Lads_mobile_sdk/bl3;

    invoke-static {v0}, Lads_mobile_sdk/bl3;->-$$Nest$mb(Lads_mobile_sdk/bl3;)V

    .line 503
    iget v0, p0, Lads_mobile_sdk/bl3$b;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/bl3$b;->b:Lads_mobile_sdk/bl3;

    invoke-static {v2}, Lads_mobile_sdk/bl3;->-$$Nest$fgetb(Lads_mobile_sdk/bl3;)I

    move-result v2

    if-ge v0, v2, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 495
    invoke-virtual {p0}, Lads_mobile_sdk/bl3$b;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

###### Class ads_mobile_sdk.bl3.c (ads_mobile_sdk.bl3$c)
.class Lads_mobile_sdk/bl3$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/bl3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lads_mobile_sdk/bl3;


# direct methods
.method private constructor <init>(Lads_mobile_sdk/bl3;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lads_mobile_sdk/bl3$c;->a:Lads_mobile_sdk/bl3;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/bl3-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lads_mobile_sdk/bl3$c;-><init>(Lads_mobile_sdk/bl3;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 4

    .line 484
    check-cast p1, Ljava/util/Map$Entry;

    .line 485
    iget-object v0, p0, Lads_mobile_sdk/bl3$c;->a:Lads_mobile_sdk/bl3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lads_mobile_sdk/bl3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 486
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_1d

    if-eqz v0, :cond_1b

    .line 487
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
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lads_mobile_sdk/bl3$c;->a:Lads_mobile_sdk/bl3;

    invoke-static {v0}, Lads_mobile_sdk/bl3;->-$$Nest$mb(Lads_mobile_sdk/bl3;)V

    .line 469
    new-instance v0, Lads_mobile_sdk/bl3$b;

    iget-object v1, p0, Lads_mobile_sdk/bl3$c;->a:Lads_mobile_sdk/bl3;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/bl3$b;-><init>(Lads_mobile_sdk/bl3;Lads_mobile_sdk/bl3-IA;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 474
    iget-object v0, p0, Lads_mobile_sdk/bl3$c;->a:Lads_mobile_sdk/bl3;

    invoke-virtual {v0}, Lads_mobile_sdk/bl3;->size()I

    move-result v0

    return v0
.end method
