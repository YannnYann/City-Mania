###### Class com.badlogic.gdx.utils.ObjectLongMap (com.badlogic.gdx.utils.ObjectLongMap)
.class public Lcom/badlogic/gdx/utils/ObjectLongMap;
.super Ljava/lang/Object;
.source "ObjectLongMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;,
        Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;,
        Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field public transient entries1:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

.field public transient entries2:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

.field public keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public loadFactor:F

.field public mask:I

.field public shift:I

.field public size:I

.field public threshold:I

.field public valueTable:[J


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectLongMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_2d

    .line 86
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->loadFactor:F

    .line 88
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 89
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 90
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->mask:I

    int-to-long v0, p2

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->shift:I

    .line 93
    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 94
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    return-void

    .line 85
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
.method public containsKey(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 295
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 410
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    return-object v0

    .line 411
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->entries1:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    if-nez v0, :cond_1c

    .line 412
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->entries1:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    .line 413
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->entries2:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    .line 415
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->entries1:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->valid:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_30

    .line 416
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->reset()V

    .line 417
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->entries1:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->valid:Z

    .line 418
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->entries2:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->valid:Z

    return-object v0

    .line 421
    :cond_30
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->entries2:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->reset()V

    .line 422
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->entries2:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->valid:Z

    .line 423
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->entries1:Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->valid:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 13

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 350
    :cond_4
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 351
    :cond_a
    check-cast p1, Lcom/badlogic/gdx/utils/ObjectLongMap;

    .line 352
    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    if-eq v1, v3, :cond_13

    return v2

    .line 353
    :cond_13
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 354
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    .line 355
    array-length v4, v1

    move v5, v2

    :goto_19
    if-ge v5, v4, :cond_3a

    .line 356
    aget-object v6, v1, v5

    if-eqz v6, :cond_37

    const-wide/16 v7, 0x0

    .line 358
    invoke-virtual {p1, v6, v7, v8}, Lcom/badlogic/gdx/utils/ObjectLongMap;->get(Ljava/lang/Object;J)J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-nez v7, :cond_30

    .line 359
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/ObjectLongMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    return v2

    .line 360
    :cond_30
    aget-wide v6, v3, v5

    cmp-long v6, v9, v6

    if-eqz v6, :cond_37

    return v2

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_3a
    return v0
.end method

.method public get(Ljava/lang/Object;J)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_7

    return-wide p2

    .line 207
    :cond_7
    iget-object p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public hashCode()I
    .registers 13

    .line 338
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    .line 339
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 340
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    .line 341
    array-length v3, v1

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_1c

    .line 342
    aget-object v5, v1, v4

    if-eqz v5, :cond_19

    int-to-long v6, v0

    .line 343
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v8, v0

    aget-wide v10, v2, v4

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v0, v6

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1c
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap;->entries()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap;->iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public locateKey(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_1d

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 129
    :goto_8
    aget-object v2, v0, v1

    if-nez v2, :cond_10

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    .line 131
    :cond_10
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 128
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_8

    .line 126
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public place(Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public put(Ljava/lang/Object;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_b

    .line 138
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    aput-wide p2, p1, v0

    return-void

    :cond_b
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 142
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 143
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    aput-wide p2, p1, v0

    .line 144
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->threshold:I

    if-lt p1, p2, :cond_26

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->resize(I)V

    :cond_26
    return-void
.end method

.method public final putResize(Ljava/lang/Object;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 195
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 196
    :goto_6
    aget-object v2, v0, v1

    if-nez v2, :cond_11

    .line 197
    aput-object p1, v0, v1

    .line 198
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    aput-wide p2, p1, v1

    return-void

    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 195
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_6
.end method

.method public final resize(I)V
    .registers 8

    .line 318
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v1, p1

    .line 319
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 320
    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->mask:I

    int-to-long v1, v1

    .line 321
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->shift:I

    .line 323
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 324
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    .line 326
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 327
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    .line 329
    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    if-lez p1, :cond_34

    const/4 p1, 0x0

    :goto_26
    if-ge p1, v0, :cond_34

    .line 331
    aget-object v3, v1, p1

    if-eqz v3, :cond_31

    .line 332
    aget-wide v4, v2, p1

    invoke-virtual {p0, v3, v4, v5}, Lcom/badlogic/gdx/utils/ObjectLongMap;->putResize(Ljava/lang/Object;J)V

    :cond_31
    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    :cond_34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 371
    const-string v0, ", "

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectLongMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    .line 375
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    if-nez v0, :cond_c

    if-eqz p2, :cond_9

    const-string p1, "{}"

    return-object p1

    :cond_9
    const-string p1, ""

    return-object p1

    .line 376
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_1a

    const/16 v1, 0x7b

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    :cond_1a
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 379
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    .line 380
    array-length v3, v1

    :goto_1f
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    if-lez v3, :cond_36

    .line 382
    aget-object v3, v1, v4

    if-nez v3, :cond_2b

    move v3, v4

    goto :goto_1f

    .line 384
    :cond_2b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    aget-wide v6, v2, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_36
    :goto_36
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_4f

    .line 390
    aget-object v4, v1, v3

    if-nez v4, :cond_3f

    goto :goto_4d

    .line 392
    :cond_3f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    aget-wide v6, v2, v3

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_4d
    move v4, v3

    goto :goto_36

    :cond_4f
    if-eqz p2, :cond_56

    const/16 p1, 0x7d

    .line 397
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.badlogic.gdx.utils.ObjectLongMap.Entries (com.badlogic.gdx.utils.ObjectLongMap$Entries)
.class public Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
.super Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;
.source "ObjectLongMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectLongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
        "TK;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field public entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 536
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    .line 533
    new-instance p1, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 552
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->valid:Z

    if-eqz v0, :cond_7

    .line 553
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    return v0

    .line 552
    :cond_7
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 0
    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 532
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 541
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    if-eqz v0, :cond_2a

    .line 542
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->valid:Z

    if-eqz v0, :cond_22

    .line 543
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 544
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    aget-object v1, v1, v3

    iput-object v1, v2, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->key:Ljava/lang/Object;

    .line 545
    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    aget-wide v4, v0, v3

    iput-wide v4, v2, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->value:J

    .line 546
    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    .line 547
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->findNextIndex()V

    .line 548
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    return-object v0

    .line 542
    :cond_22
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_2a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 532
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 532
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .registers 1

    .line 532
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->reset()V

    return-void
.end method

###### Class com.badlogic.gdx.utils.ObjectLongMap.Entry (com.badlogic.gdx.utils.ObjectLongMap$Entry)
.class public Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;
.super Ljava/lang/Object;
.source "ObjectLongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectLongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public value:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->value:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.badlogic.gdx.utils.ObjectLongMap.MapIterator (com.badlogic.gdx.utils.ObjectLongMap$MapIterator)
.class public Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectLongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectLongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public currentIndex:I

.field public hasNext:Z

.field public final map:Lcom/badlogic/gdx/utils/ObjectLongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "TK;>;"
        }
    .end annotation
.end field

.field public nextIndex:I

.field public valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->valid:Z

    .line 488
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    .line 489
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method public findNextIndex()V
    .registers 5

    .line 499
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 500
    array-length v1, v0

    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_14

    .line 501
    aget-object v2, v0, v2

    if-eqz v2, :cond_5

    .line 502
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    return-void

    :cond_14
    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public remove()V
    .registers 9

    .line 510
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    if-ltz v0, :cond_44

    .line 512
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 513
    iget-object v3, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    .line 514
    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->mask:I

    add-int/lit8 v4, v0, 0x1

    :goto_e
    and-int/2addr v4, v1

    .line 516
    aget-object v5, v2, v4

    if-eqz v5, :cond_2b

    .line 517
    iget-object v6, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/ObjectLongMap;->place(Ljava/lang/Object;)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v1

    sub-int v6, v0, v6

    and-int/2addr v6, v1

    if-le v7, v6, :cond_28

    .line 519
    aput-object v5, v2, v0

    .line 520
    aget-wide v5, v3, v4

    aput-wide v5, v3, v0

    move v0, v4

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_2b
    const/4 v1, 0x0

    .line 525
    aput-object v1, v2, v0

    .line 526
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->size:I

    .line 527
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    if-eq v0, v1, :cond_40

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    :cond_40
    const/4 v0, -0x1

    .line 528
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    return-void

    .line 511
    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, -0x1

    .line 493
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->currentIndex:I

    .line 494
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->nextIndex:I

    .line 495
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->findNextIndex()V

    return-void
.end method
