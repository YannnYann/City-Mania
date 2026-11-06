###### Class com.badlogic.gdx.utils.IntIntMap (com.badlogic.gdx.utils.IntIntMap)
.class public Lcom/badlogic/gdx/utils/IntIntMap;
.super Ljava/lang/Object;
.source "IntIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntIntMap$Entries;,
        Lcom/badlogic/gdx/utils/IntIntMap$Keys;,
        Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public transient entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

.field public transient entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

.field public hasZeroValue:Z

.field public keyTable:[I

.field public transient keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

.field public transient keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

.field public final loadFactor:F

.field public mask:I

.field public shift:I

.field public size:I

.field public threshold:I

.field public valueTable:[I

.field public zeroValue:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 73
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_2d

    .line 88
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    .line 90
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 91
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 92
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    int-to-long v0, p2

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->shift:I

    .line 95
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 96
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    return-void

    .line 87
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFactor must be > 0 and < 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 334
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-nez v0, :cond_5

    return-void

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 336
    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 337
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    return-void
.end method

.method public containsKey(I)Z
    .registers 2

    if-nez p1, :cond_5

    .line 352
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    return p1

    .line 353
    :cond_5
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;
    .registers 5

    .line 471
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0

    .line 472
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    if-nez v0, :cond_1c

    .line 473
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    .line 474
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    .line 476
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_30

    .line 477
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->reset()V

    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    .line 479
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    return-object v0

    .line 482
    :cond_30
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->reset()V

    .line 483
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    .line 484
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 410
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 411
    :cond_a
    check-cast p1, Lcom/badlogic/gdx/utils/IntIntMap;

    .line 412
    iget v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-eq v1, v3, :cond_13

    return v2

    .line 413
    :cond_13
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    if-eqz v3, :cond_23

    .line 415
    iget v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-eq v1, v3, :cond_23

    return v2

    .line 417
    :cond_23
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 418
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 419
    array-length v4, v1

    move v5, v2

    :goto_29
    if-ge v5, v4, :cond_44

    .line 420
    aget v6, v1, v5

    if-eqz v6, :cond_41

    .line 422
    invoke-virtual {p1, v6, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v7

    if-nez v7, :cond_3c

    .line 423
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v6

    if-nez v6, :cond_3c

    return v2

    .line 424
    :cond_3c
    aget v6, v3, v5

    if-eq v7, v6, :cond_41

    return v2

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_44
    return v0
.end method

.method public get(II)I
    .registers 3

    if-nez p1, :cond_9

    .line 242
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz p1, :cond_14

    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    return p1

    .line 243
    :cond_9
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_14

    .line 244
    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget p1, p2, p1

    return p1

    :cond_14
    return p2
.end method

.method public getAndIncrement(III)I
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_18

    .line 251
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez p1, :cond_12

    .line 252
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    add-int/2addr p3, p2

    .line 253
    iput p3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 254
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    return p2

    .line 257
    :cond_12
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    add-int/2addr p3, p1

    .line 258
    iput p3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    return p1

    .line 261
    :cond_18
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_26

    .line 263
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget p2, p1, v1

    add-int/2addr p3, p2

    .line 264
    aput p3, p1, v1

    return p2

    :cond_26
    add-int/2addr v1, v0

    neg-int v1, v1

    .line 268
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v2, v1

    .line 269
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    add-int/2addr p3, p2

    aput p3, p1, v1

    .line 270
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget p3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt p1, p3, :cond_3f

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    :cond_3f
    return p2
.end method

.method public hashCode()I
    .registers 8

    .line 397
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 398
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    add-int/2addr v0, v1

    .line 399
    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 400
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 401
    array-length v3, v1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_1e

    .line 402
    aget v5, v1, v4

    if-eqz v5, :cond_1b

    mul-int/lit8 v5, v5, 0x1f

    .line 403
    aget v6, v2, v4

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1e
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap;->entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntIntMap$Keys;
    .registers 5

    .line 515
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0

    .line 516
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    if-nez v0, :cond_1c

    .line 517
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    .line 518
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    .line 520
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_30

    .line 521
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->reset()V

    .line 522
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    .line 523
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    return-object v0

    .line 526
    :cond_30
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->reset()V

    .line 527
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    .line 528
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    return-object v0
.end method

.method public final locateKey(I)I
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 130
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->place(I)I

    move-result v1

    .line 131
    :goto_6
    aget v2, v0, v1

    if-nez v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_e
    if-ne v2, p1, :cond_11

    return v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 130
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_6
.end method

.method public place(I)I
    .registers 6

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    .line 124
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public put(II)V
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_11

    .line 139
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 140
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez p1, :cond_34

    .line 141
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 142
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    return-void

    .line 146
    :cond_11
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_1c

    .line 148
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, p1, v1

    return-void

    :cond_1c
    add-int/2addr v1, v0

    neg-int v1, v1

    .line 152
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v2, v1

    .line 153
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, p1, v1

    .line 154
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt p1, p2, :cond_34

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    :cond_34
    return-void
.end method

.method public final putResize(II)V
    .registers 6

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 232
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->place(I)I

    move-result v1

    .line 233
    :goto_6
    aget v2, v0, v1

    if-nez v2, :cond_11

    .line 234
    aput p1, v0, v1

    .line 235
    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, p1, v1

    return-void

    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 232
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_6
.end method

.method public remove(II)I
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_13

    .line 277
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez p1, :cond_8

    goto :goto_19

    .line 278
    :cond_8
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 279
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 280
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    return p1

    .line 283
    :cond_13
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->locateKey(I)I

    move-result p1

    if-gez p1, :cond_1a

    :goto_19
    return p2

    .line 285
    :cond_1a
    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 286
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 287
    aget v2, v1, p1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    add-int/lit8 v4, p1, 0x1

    :goto_24
    and-int/2addr v4, v3

    .line 288
    aget v5, p2, v4

    if-eqz v5, :cond_3f

    .line 289
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/IntIntMap;->place(I)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, p1, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_3c

    .line 291
    aput v5, p2, p1

    .line 292
    aget v5, v1, v4

    aput v5, v1, p1

    move p1, v4

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 297
    :cond_3f
    aput v0, p2, p1

    .line 298
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    return v2
.end method

.method public final resize(I)V
    .registers 7

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v0, v0

    int-to-float v1, p1

    .line 378
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 379
    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    int-to-long v1, v1

    .line 380
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->shift:I

    .line 382
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 383
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 385
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 386
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 388
    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-lez p1, :cond_34

    const/4 p1, 0x0

    :goto_26
    if-ge p1, v0, :cond_34

    .line 390
    aget v3, v1, p1

    if-eqz v3, :cond_31

    .line 391
    aget v4, v2, p1

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->putResize(II)V

    :cond_31
    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    :cond_34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 431
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 432
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 435
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 436
    array-length v3, v1

    .line 437
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_29

    .line 438
    const-string v4, "0="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_29
    :goto_29
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3e

    .line 442
    aget v3, v1, v4

    if-nez v3, :cond_33

    move v3, v4

    goto :goto_29

    .line 444
    :cond_33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3e
    :goto_3e
    move v3, v4

    :goto_3f
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_59

    .line 451
    aget v3, v1, v4

    if-nez v3, :cond_48

    goto :goto_3e

    .line 453
    :cond_48
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_59
    const/16 v1, 0x5d

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.badlogic.gdx.utils.IntIntMap.Entries (com.badlogic.gdx.utils.IntIntMap$Entries)
.class public Lcom/badlogic/gdx/utils/IntIntMap$Entries;
.super Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;
.source "IntIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .registers 2

    .line 607
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    .line 604
    new-instance p1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/IntIntMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 628
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    if-eqz v0, :cond_7

    .line 629
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    return v0

    .line 628
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    .registers 5

    .line 612
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_37

    .line 613
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    if-eqz v0, :cond_2f

    .line 614
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 615
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 616
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    const/4 v3, 0x0

    iput v3, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    .line 617
    iget v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iput v0, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    goto :goto_27

    .line 619
    :cond_1b
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    aget v1, v1, v2

    iput v1, v3, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    .line 620
    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v0, v0, v2

    iput v0, v3, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    .line 622
    :goto_27
    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    .line 623
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->findNextIndex()V

    .line 624
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    return-object v0

    .line 613
    :cond_2f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_37
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 603
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->next()Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 603
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 603
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->reset()V

    return-void
.end method

###### Class com.badlogic.gdx.utils.IntIntMap.Entry (com.badlogic.gdx.utils.IntIntMap$Entry)
.class public Lcom/badlogic/gdx/utils/IntIntMap$Entry;
.super Ljava/lang/Object;
.source "IntIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public key:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.badlogic.gdx.utils.IntIntMap.Keys (com.badlogic.gdx.utils.IntIntMap$Keys)
.class public Lcom/badlogic/gdx/utils/IntIntMap$Keys;
.super Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;
.source "IntIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .registers 2

    .line 678
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-void
.end method


# virtual methods
.method public next()I
    .registers 3

    .line 682
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_23

    .line 683
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    if-eqz v0, :cond_1b

    .line 684
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v1, 0x0

    goto :goto_15

    :cond_f
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    .line 685
    :goto_15
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    .line 686
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->findNextIndex()V

    return v1

    .line 683
    :cond_1b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_23
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 676
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->reset()V

    return-void
.end method

###### Class com.badlogic.gdx.utils.IntIntMap.MapIterator (com.badlogic.gdx.utils.IntIntMap$MapIterator)
.class public Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;
.super Ljava/lang/Object;
.source "IntIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapIterator"
.end annotation


# instance fields
.field public currentIndex:I

.field public hasNext:Z

.field public final map:Lcom/badlogic/gdx/utils/IntIntMap;

.field public nextIndex:I

.field public valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .registers 3

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 549
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->valid:Z

    .line 552
    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 553
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method public findNextIndex()V
    .registers 5

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 567
    array-length v1, v0

    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_14

    .line 568
    aget v2, v0, v2

    if-eqz v2, :cond_5

    .line 569
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    return-void

    :cond_14
    const/4 v0, 0x0

    .line 573
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public remove()V
    .registers 10

    .line 577
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_f

    .line 578
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v3, :cond_f

    .line 579
    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    goto :goto_44

    :cond_f
    if-ltz v0, :cond_50

    .line 583
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v3, v1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 584
    iget-object v4, v1, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 585
    iget v1, v1, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    add-int/lit8 v5, v0, 0x1

    :goto_1b
    and-int/2addr v5, v1

    .line 586
    aget v6, v3, v5

    if-eqz v6, :cond_38

    .line 587
    iget-object v7, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/IntIntMap;->place(I)I

    move-result v7

    sub-int v8, v5, v7

    and-int/2addr v8, v1

    sub-int v7, v0, v7

    and-int/2addr v7, v1

    if-le v8, v7, :cond_35

    .line 589
    aput v6, v3, v0

    .line 590
    aget v6, v4, v5

    aput v6, v4, v0

    move v0, v5

    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 595
    :cond_38
    aput v2, v3, v0

    .line 596
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    if-eq v0, v1, :cond_44

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    :cond_44
    :goto_44
    const/4 v0, -0x2

    .line 598
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    .line 599
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    return-void

    .line 581
    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, -0x2

    .line 557
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->currentIndex:I

    const/4 v0, -0x1

    .line 558
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->nextIndex:I

    .line 559
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->hasNext:Z

    return-void

    .line 562
    :cond_10
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->findNextIndex()V

    return-void
.end method
