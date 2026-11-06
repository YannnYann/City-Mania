###### Class com.badlogic.gdx.utils.IntSet (com.badlogic.gdx.utils.IntSet)
.class public Lcom/badlogic/gdx/utils/IntSet;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    }
.end annotation


# instance fields
.field public hasZeroValue:Z

.field public transient iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field public transient iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field public keyTable:[I

.field public final loadFactor:F

.field public mask:I

.field public shift:I

.field public size:I

.field public threshold:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const v0, 0x3f4ccccd    # 0.8f

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_29

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_29

    .line 82
    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    .line 84
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 85
    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 86
    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    int-to-long v0, p2

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->shift:I

    .line 89
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    return-void

    .line 81
    :cond_29
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
.method public add(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_11

    .line 131
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz p1, :cond_9

    return v0

    .line 132
    :cond_9
    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 133
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v1

    .line 136
    :cond_11
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->locateKey(I)I

    move-result v2

    if-ltz v2, :cond_18

    return v0

    :cond_18
    add-int/2addr v2, v1

    neg-int v0, v2

    .line 139
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput p1, v2, v0

    .line 140
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt p1, v0, :cond_2c

    array-length p1, v2

    shl-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    :cond_2c
    return v1
.end method

.method public final addResize(I)V
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 177
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->place(I)I

    move-result v1

    .line 178
    :goto_6
    aget v2, v0, v1

    if-nez v2, :cond_d

    .line 179
    aput p1, v0, v1

    return-void

    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 177
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v1, v2

    goto :goto_6
.end method

.method public clear()V
    .registers 3

    .line 243
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 244
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 245
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 246
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    return-void
.end method

.method public contains(I)Z
    .registers 2

    if-nez p1, :cond_5

    .line 250
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    return p1

    .line 251
    :cond_5
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 298
    instance-of v0, p1, Lcom/badlogic/gdx/utils/IntSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 299
    :cond_6
    check-cast p1, Lcom/badlogic/gdx/utils/IntSet;

    .line 300
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-eq v0, v2, :cond_f

    return v1

    .line 301
    :cond_f
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eq v0, v2, :cond_16

    return v1

    .line 302
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 303
    array-length v2, v0

    move v3, v1

    :goto_1a
    if-ge v3, v2, :cond_2a

    .line 304
    aget v4, v0, v3

    if-eqz v4, :cond_27

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_27

    return v1

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2a
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 6

    .line 288
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 289
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 290
    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_10

    .line 291
    aget v4, v1, v3

    if-eqz v4, :cond_d

    add-int/2addr v0, v4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_10
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 218
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    .registers 5

    .line 339
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    return-object v0

    .line 340
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    if-nez v0, :cond_1c

    .line 341
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 342
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 344
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_30

    .line 345
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 347
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    return-object v0

    .line 350
    :cond_30
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 351
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v3, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 352
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v1, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    return-object v0
.end method

.method public final locateKey(I)I
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 121
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->place(I)I

    move-result v1

    .line 122
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

    .line 121
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v1, v2

    goto :goto_6
.end method

.method public place(I)I
    .registers 6

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    .line 115
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public remove(I)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_11

    .line 188
    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-nez p1, :cond_9

    return v0

    .line 189
    :cond_9
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 190
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v1

    .line 194
    :cond_11
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->locateKey(I)I

    move-result p1

    if-gez p1, :cond_18

    return v0

    .line 196
    :cond_18
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 197
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    add-int/lit8 v4, p1, 0x1

    :goto_1e
    and-int/2addr v4, v3

    .line 198
    aget v5, v2, v4

    if-eqz v5, :cond_35

    .line 199
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/IntSet;->place(I)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, p1, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_32

    .line 201
    aput v5, v2, p1

    move p1, v4

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 206
    :cond_35
    aput v0, v2, p1

    .line 207
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    return v1
.end method

.method public final resize(I)V
    .registers 5

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v0, v0

    int-to-float v1, p1

    .line 271
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 272
    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    int-to-long v1, v1

    .line 273
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->shift:I

    .line 275
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 277
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 279
    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-lez p1, :cond_2c

    const/4 p1, 0x0

    :goto_20
    if-ge p1, v0, :cond_2c

    .line 281
    aget v2, v1, p1

    if-eqz v2, :cond_29

    .line 282
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/IntSet;->addResize(I)V

    :cond_29
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_2c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 309
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 310
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 313
    array-length v2, v1

    .line 314
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v3, :cond_20

    .line 315
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_20
    :goto_20
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_2d

    .line 318
    aget v2, v1, v3

    if-nez v2, :cond_2a

    move v2, v3

    goto :goto_20

    .line 320
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2d
    :goto_2d
    move v2, v3

    :goto_2e
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_40

    .line 325
    aget v2, v1, v3

    if-nez v2, :cond_37

    goto :goto_2d

    .line 327
    :cond_37
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_40
    const/16 v1, 0x5d

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.badlogic.gdx.utils.IntSet.IntSetIterator (com.badlogic.gdx.utils.IntSet$IntSetIterator)
.class public Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntSetIterator"
.end annotation


# instance fields
.field public currentIndex:I

.field public hasNext:Z

.field public nextIndex:I

.field public final set:Lcom/badlogic/gdx/utils/IntSet;

.field public valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntSet;)V
    .registers 3

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 369
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 372
    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    .line 373
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    return-void
.end method


# virtual methods
.method public findNextIndex()V
    .registers 5

    .line 386
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 387
    array-length v1, v0

    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    if-ge v2, v1, :cond_14

    .line 388
    aget v2, v0, v2

    if-eqz v2, :cond_5

    .line 389
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    return-void

    :cond_14
    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    return-void
.end method

.method public next()I
    .registers 3

    .line 421
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v0, :cond_23

    .line 422
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    if-eqz v0, :cond_1b

    .line 423
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v1, 0x0

    goto :goto_15

    :cond_f
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v1, v1, v0

    .line 424
    :goto_15
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    .line 425
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->findNextIndex()V

    return v1

    .line 422
    :cond_1b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_23
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, -0x2

    .line 377
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->currentIndex:I

    const/4 v0, -0x1

    .line 378
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->nextIndex:I

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->set:Lcom/badlogic/gdx/utils/IntSet;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    return-void

    .line 382
    :cond_10
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->findNextIndex()V

    return-void
.end method
