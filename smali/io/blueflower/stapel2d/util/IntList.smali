###### Class io.blueflower.stapel2d.util.IntList (io.blueflower.stapel2d.util.IntList)
.class public final Lio/blueflower/stapel2d/util/IntList;
.super Ljava/lang/Object;
.source "IntList.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/blueflower/stapel2d/util/IntList$IntConsumer;
    }
.end annotation


# static fields
.field public static EMPTY_LIST:Lio/blueflower/stapel2d/util/IntList;

.field public static final random:Ljava/util/Random;


# instance fields
.field public data:[I

.field public size:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    sput-object v0, Lio/blueflower/stapel2d/util/IntList;->EMPTY_LIST:Lio/blueflower/stapel2d/util/IntList;

    .line 23
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/blueflower/stapel2d/util/IntList;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x10

    .line 35
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-array p1, p1, [I

    iput-object p1, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/IntList;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    const/16 v1, 0x10

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    .line 46
    iget-object v1, p1, Lio/blueflower/stapel2d/util/IntList;->data:[I

    const/4 v2, 0x0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p1

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([I)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    .line 40
    array-length p1, p1

    iput p1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    return-void
.end method

.method public static varargs asList([I)Lio/blueflower/stapel2d/util/IntList;
    .registers 2

    .line 420
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0, p0}, Lio/blueflower/stapel2d/util/IntList;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 4

    .line 50
    iget v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    iget-object v1, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 51
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/IntList;->increaseCapacity()V

    .line 53
    :cond_a
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    iget v1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 54
    iput v1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    return-void
.end method

.method public add([I)V
    .registers 4

    .line 105
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/blueflower/stapel2d/util/IntList;->add([III)V

    return-void
.end method

.method public add([III)V
    .registers 7

    .line 109
    iget v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    add-int v1, v0, p3

    sub-int/2addr v1, p2

    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    array-length v2, v2

    if-le v1, v2, :cond_f

    add-int/2addr v0, p3

    sub-int/2addr v0, p2

    .line 110
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/IntList;->increaseCapacity(I)V

    .line 112
    :cond_f
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    iget v1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    sub-int/2addr p3, p2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget p1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    return-void
.end method

.method public clearAndRelease()V
    .registers 2

    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    .line 233
    new-array v0, v0, [I

    iput-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    return-void
.end method

.method public clone()Lio/blueflower/stapel2d/util/IntList;
    .registers 2

    .line 349
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0, p0}, Lio/blueflower/stapel2d/util/IntList;-><init>(Lio/blueflower/stapel2d/util/IntList;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/IntList;->clone()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    return-object v0
.end method

.method public contains(I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 181
    :goto_2
    iget v2, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-ge v1, v2, :cond_11

    .line 182
    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    .line 389
    instance-of v1, p1, Lio/blueflower/stapel2d/util/IntList;

    if-eqz v1, :cond_24

    .line 390
    check-cast p1, Lio/blueflower/stapel2d/util/IntList;

    .line 391
    iget v1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    iget v2, p1, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-ne v1, v2, :cond_24

    move v1, v0

    .line 392
    :goto_10
    iget v2, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-ge v1, v2, :cond_22

    .line 393
    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v2, v2, v1

    iget-object v3, p1, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_1f

    return v0

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    const/4 p1, 0x1

    return p1

    :cond_24
    return v0
.end method

.method public forEach(Lio/blueflower/stapel2d/util/IntList$IntConsumer;)V
    .registers 4

    const/4 v0, 0x0

    .line 289
    :goto_1
    iget v1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-ge v0, v1, :cond_f

    .line 290
    iget-object v1, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/IntList$IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public get(I)I
    .registers 3

    .line 145
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget p1, v0, p1

    return p1
.end method

.method public getCapacity()I
    .registers 2

    .line 316
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 375
    iget v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    const/4 v1, 0x0

    if-lez v0, :cond_b

    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v1, v2, v1

    mul-int/lit8 v1, v1, 0xd

    :cond_b
    const/4 v2, 0x1

    if-le v0, v2, :cond_15

    .line 376
    iget-object v3, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v2, v3, v2

    mul-int/lit8 v2, v2, 0x11

    add-int/2addr v1, v2

    :cond_15
    const/4 v2, 0x2

    if-le v0, v2, :cond_1f

    .line 377
    iget-object v3, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v2, v3, v2

    mul-int/lit8 v2, v2, 0x13

    add-int/2addr v1, v2

    :cond_1f
    const/4 v2, 0x3

    if-le v0, v2, :cond_29

    .line 378
    iget-object v3, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v2, v3, v2

    mul-int/lit8 v2, v2, 0x17

    add-int/2addr v1, v2

    :cond_29
    const/4 v2, 0x4

    if-le v0, v2, :cond_35

    .line 379
    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x1d

    add-int/2addr v1, v2

    :cond_35
    const/4 v2, 0x5

    if-le v0, v2, :cond_41

    .line 380
    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    add-int/lit8 v3, v0, -0x2

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    :cond_41
    const/4 v2, 0x6

    if-le v0, v2, :cond_4d

    .line 381
    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    add-int/lit8 v3, v0, -0x3

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x25

    add-int/2addr v1, v2

    :cond_4d
    const/4 v2, 0x7

    if-le v0, v2, :cond_59

    .line 382
    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    add-int/lit8 v3, v0, -0x4

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x29

    add-int/2addr v1, v2

    :cond_59
    mul-int/lit8 v0, v0, 0x2b

    add-int/2addr v1, v0

    return v1
.end method

.method public final increaseCapacity()V
    .registers 4

    .line 330
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    return-void
.end method

.method public final increaseCapacity(I)V
    .registers 4

    .line 334
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    array-length v0, v0

    :goto_3
    mul-int/lit8 v0, v0, 0x2

    if-ge v0, p1, :cond_8

    goto :goto_3

    .line 336
    :cond_8
    iget-object p1, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    return-void
.end method

.method public indexOf(I)I
    .registers 3

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, v0}, Lio/blueflower/stapel2d/util/IntList;->indexOf(II)I

    move-result p1

    return p1
.end method

.method public indexOf(II)I
    .registers 4

    .line 163
    :goto_0
    iget v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-ge p2, v0, :cond_e

    .line 164
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v0, v0, p2

    if-ne v0, p1, :cond_b

    return p2

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 285
    iget v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 365
    :goto_6
    iget v2, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-ge v1, v2, :cond_1d

    .line 366
    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    iget v2, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 369
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public last(I)I
    .registers 3

    .line 154
    iget v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-nez v0, :cond_5

    return p1

    .line 155
    :cond_5
    iget-object p1, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    return p1
.end method

.method public reduce()[I
    .registers 4

    .line 241
    iget v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    iget-object v1, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    array-length v2, v1

    if-ge v0, v2, :cond_d

    .line 242
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    .line 244
    :cond_d
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    return-object v0
.end method

.method public removeAt(I)I
    .registers 6

    .line 188
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 189
    iget v3, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-ge v2, v3, :cond_10

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    .line 190
    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    :cond_10
    iget p1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    .line 193
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    if-gt p1, v0, :cond_24

    const/16 v0, 0x20

    if-le p1, v0, :cond_24

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/IntList;->reduce()[I

    :cond_24
    return v1
.end method

.method public removeAt(II)I
    .registers 7

    .line 198
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v1, v0, p1

    add-int v2, p1, p2

    .line 199
    iget v3, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-ge v2, v3, :cond_f

    sub-int/2addr v3, p2

    sub-int/2addr v3, p1

    .line 200
    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    :cond_f
    iget p1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    .line 203
    iget-object p2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    array-length p2, p2

    div-int/lit8 p2, p2, 0x4

    if-gt p1, p2, :cond_22

    const/16 p2, 0x20

    if-le p1, p2, :cond_22

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/IntList;->reduce()[I

    :cond_22
    return v1
.end method

.method public removeLast(I)I
    .registers 3

    .line 213
    iget v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-nez v0, :cond_5

    return p1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 214
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result p1

    return p1
.end method

.method public removeValue(I)Z
    .registers 2

    .line 218
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/IntList;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_b

    .line 220
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public reverse()V
    .registers 3

    const/4 v0, 0x0

    .line 272
    iget v1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    invoke-virtual {p0, v0, v1}, Lio/blueflower/stapel2d/util/IntList;->reverse(II)V

    return-void
.end method

.method public reverse(II)V
    .registers 9

    sub-int/2addr p2, p1

    const/4 v0, 0x0

    .line 277
    :goto_2
    div-int/lit8 v1, p2, 0x2

    if-ge v0, v1, :cond_1a

    .line 278
    iget-object v1, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    add-int v2, p1, v0

    aget v3, v1, v2

    add-int v4, p1, p2

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    .line 279
    aget v5, v1, v4

    aput v5, v1, v2

    .line 280
    aput v3, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    return-void
.end method

.method public set(II)V
    .registers 4

    .line 126
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aput p2, v0, p1

    return-void
.end method

.method public setCapacity(I)V
    .registers 3

    .line 311
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    .line 312
    array-length p1, p1

    iget v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    return-void
.end method

.method public size()I
    .registers 2

    .line 134
    iget v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    return v0
.end method

.method public sort()V
    .registers 4

    .line 326
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    const/4 v1, 0x0

    iget v2, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    return-void
.end method

.method public sum()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 415
    :goto_2
    iget v2, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    return v1
.end method

.method public swap(II)V
    .registers 6

    .line 320
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v1, v0, p1

    .line 321
    aget v2, v0, p2

    aput v2, v0, p1

    .line 322
    aput v1, v0, p2

    return-void
.end method

.method public toArray()[I
    .registers 5

    .line 253
    iget v0, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    new-array v1, v0, [I

    .line 254
    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntList[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 355
    :goto_8
    iget v2, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    if-ge v1, v2, :cond_21

    .line 356
    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntList;->data:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    iget v2, p0, Lio/blueflower/stapel2d/util/IntList;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1e

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 359
    :cond_21
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.blueflower.stapel2d.util.IntList.IntConsumer (io.blueflower.stapel2d.util.IntList$IntConsumer)
.class public interface abstract Lio/blueflower/stapel2d/util/IntList$IntConsumer;
.super Ljava/lang/Object;
.source "IntList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/blueflower/stapel2d/util/IntList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IntConsumer"
.end annotation


# virtual methods
.method public abstract accept(I)V
.end method
