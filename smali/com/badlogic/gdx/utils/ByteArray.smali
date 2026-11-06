###### Class com.badlogic.gdx.utils.ByteArray (com.badlogic.gdx.utils.ByteArray)
.class public Lcom/badlogic/gdx/utils/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field public items:[B

.field public ordered:Z

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x10

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    .line 46
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    return-void
.end method


# virtual methods
.method public ensureCapacity(I)[B
    .registers 5

    if-ltz p1, :cond_21

    .line 347
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    add-int/2addr v0, p1

    .line 348
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    array-length p1, p1

    if-le v0, p1, :cond_1e

    const/16 p1, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    int-to-float v0, v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ByteArray;->resize(I)[B

    .line 349
    :cond_1e
    iget-object p1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    return-object p1

    .line 346
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 424
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 425
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ByteArray;

    if-nez v1, :cond_f

    return v2

    .line 426
    :cond_f
    check-cast p1, Lcom/badlogic/gdx/utils/ByteArray;

    .line 427
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    if-nez v1, :cond_16

    return v2

    .line 428
    :cond_16
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    .line 429
    iget v3, p1, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-eq v1, v3, :cond_1d

    return v2

    .line 430
    :cond_1d
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    iget-object p1, p1, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    move v4, v2

    :goto_22
    if-ge v4, v1, :cond_2e

    .line 432
    aget-byte v5, v3, v4

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_2b

    return v2

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 413
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 414
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 416
    iget v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_19

    mul-int/lit8 v2, v2, 0x1f

    .line 417
    aget-byte v4, v0, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_19
    return v2
.end method

.method public resize(I)[B
    .registers 5

    .line 362
    new-array v0, p1, [B

    .line 363
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 364
    iget v2, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 437
    iget v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 438
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 441
    aget-byte v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 442
    :goto_1c
    iget v3, p0, Lcom/badlogic/gdx/utils/ByteArray;->size:I

    if-ge v2, v3, :cond_2d

    .line 443
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    aget-byte v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2d
    const/16 v0, 0x5d

    .line 446
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
