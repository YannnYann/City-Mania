###### Class com.badlogic.gdx.utils.IntArray (com.badlogic.gdx.utils.IntArray)
.class public Lcom/badlogic/gdx/utils/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field public items:[I

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    .line 46
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 77
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_16

    int-to-float v0, v1

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v0

    .line 78
    :cond_16
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aput p1, v0, v1

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 331
    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 423
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 424
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntArray;

    if-nez v1, :cond_f

    return v2

    .line 425
    :cond_f
    check-cast p1, Lcom/badlogic/gdx/utils/IntArray;

    .line 426
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-nez v1, :cond_16

    return v2

    .line 427
    :cond_16
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 428
    iget v3, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-eq v1, v3, :cond_1d

    return v2

    .line 429
    :cond_1d
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget-object p1, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    move v4, v2

    :goto_22
    if-ge v4, v1, :cond_2e

    .line 431
    aget v5, v3, v4

    aget v6, p1, v4

    if-eq v5, v6, :cond_2b

    return v2

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_2e
    return v0
.end method

.method public get(I)I
    .registers 5

    .line 131
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_9

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget p1, v0, p1

    return p1

    .line 131
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 6

    .line 413
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 414
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 416
    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_19

    mul-int/lit8 v2, v2, 0x1f

    .line 417
    aget v4, v0, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_19
    return v2
.end method

.method public insert(II)V
    .registers 6

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-gt p1, v0, :cond_34

    .line 164
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 165
    array-length v2, v1

    if-ne v0, v2, :cond_18

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntArray;->resize(I)[I

    move-result-object v1

    .line 166
    :cond_18
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntArray;->ordered:Z

    if-eqz v0, :cond_25

    add-int/lit8 v0, p1, 0x1

    .line 167
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    sub-int/2addr v2, p1

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2b

    .line 169
    :cond_25
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v2, v1, p1

    aput v2, v1, v0

    .line 170
    :goto_2b
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .line 171
    aput p2, v1, p1

    return-void

    .line 163
    :cond_34
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be > size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public pop()I
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    aget v0, v0, v1

    return v0
.end method

.method public resize(I)[I
    .registers 5

    .line 362
    new-array v0, p1, [I

    .line 363
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 364
    iget v2, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    return-object v0
.end method

.method public set(II)V
    .registers 5

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_9

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aput p2, v0, p1

    return-void

    .line 136
    :cond_9
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index can\'t be >= size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toArray()[I
    .registers 5

    .line 407
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    new-array v1, v0, [I

    .line 408
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 436
    iget v0, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 437
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 440
    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 441
    :goto_1c
    iget v3, p0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v2, v3, :cond_2d

    .line 442
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2d
    const/16 v0, 0x5d

    .line 445
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
