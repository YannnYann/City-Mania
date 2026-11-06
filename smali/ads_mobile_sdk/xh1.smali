###### Class ads_mobile_sdk.xh1 (ads_mobile_sdk.xh1)
.class final Lads_mobile_sdk/xh1;
.super Lads_mobile_sdk/i;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$c;
.implements Ljava/util/RandomAccess;
.implements Lads_mobile_sdk/mu2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lads_mobile_sdk/i<",
        "Ljava/lang/Integer;",
        ">;",
        "Lads_mobile_sdk/yh1$c;",
        "Ljava/util/RandomAccess;",
        "Lads_mobile_sdk/mu2;"
    }
.end annotation


# static fields
.field private static final d:[I

.field private static final e:Lads_mobile_sdk/xh1;


# instance fields
.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    .line 27
    new-array v1, v0, [I

    sput-object v1, Lads_mobile_sdk/xh1;->d:[I

    .line 29
    new-instance v2, Lads_mobile_sdk/xh1;

    invoke-direct {v2, v1, v0, v0}, Lads_mobile_sdk/xh1;-><init>([IIZ)V

    sput-object v2, Lads_mobile_sdk/xh1;->e:Lads_mobile_sdk/xh1;

    return-void
.end method

.method private constructor <init>([IIZ)V
    .registers 4

    .line 53
    invoke-direct {p0, p3}, Lads_mobile_sdk/i;-><init>(Z)V

    .line 54
    iput-object p1, p0, Lads_mobile_sdk/xh1;->b:[I

    .line 55
    iput p2, p0, Lads_mobile_sdk/xh1;->c:I

    return-void
.end method

.method private a(II)V
    .registers 7

    .line 206
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    if-ltz p1, :cond_3f

    .line 207
    iget v0, p0, Lads_mobile_sdk/xh1;->c:I

    if-gt p1, v0, :cond_3f

    .line 211
    iget-object v1, p0, Lads_mobile_sdk/xh1;->b:[I

    array-length v2, v1

    if-ge v0, v2, :cond_15

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 213
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    .line 215
    :cond_15
    array-length v0, v1

    invoke-static {v0}, Lads_mobile_sdk/xh1;->f(I)I

    move-result v0

    .line 216
    new-array v0, v0, [I

    .line 219
    iget-object v1, p0, Lads_mobile_sdk/xh1;->b:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object v1, p0, Lads_mobile_sdk/xh1;->b:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lads_mobile_sdk/xh1;->c:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iput-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    .line 226
    :goto_2e
    iget-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    aput p2, v0, p1

    .line 227
    iget p1, p0, Lads_mobile_sdk/xh1;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lads_mobile_sdk/xh1;->c:I

    .line 228
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 229
    :cond_3f
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lads_mobile_sdk/xh1;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static e()Lads_mobile_sdk/xh1;
    .registers 1

    .line 312
    sget-object v0, Lads_mobile_sdk/xh1;->e:Lads_mobile_sdk/xh1;

    return-object v0
.end method

.method private e(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 310
    iget v0, p0, Lads_mobile_sdk/xh1;->c:I

    if-ge p1, v0, :cond_7

    return-void

    .line 311
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lads_mobile_sdk/xh1;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f(I)I
    .registers 2

    mul-int/lit8 p0, p0, 0x3

    .line 300
    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private g(I)Ljava/lang/String;
    .registers 5

    .line 316
    iget v0, p0, Lads_mobile_sdk/xh1;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)Lads_mobile_sdk/yh1$c;
    .registers 5

    .line 347
    iget v0, p0, Lads_mobile_sdk/xh1;->c:I

    if-lt p1, v0, :cond_18

    if-nez p1, :cond_9

    .line 350
    sget-object p1, Lads_mobile_sdk/xh1;->d:[I

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    .line 351
    :goto_f
    new-instance v0, Lads_mobile_sdk/xh1;

    iget v1, p0, Lads_mobile_sdk/xh1;->c:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lads_mobile_sdk/xh1;-><init>([IIZ)V

    return-object v0

    .line 352
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic a(I)Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 376
    invoke-virtual {p0, p1}, Lads_mobile_sdk/xh1;->a(I)Lads_mobile_sdk/yh1$c;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/Integer;)V
    .registers 3

    .line 186
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lads_mobile_sdk/xh1;->a(II)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 210
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/xh1;->add(ILjava/lang/Integer;)V

    return-void
.end method

.method public add(Ljava/lang/Integer;)Z
    .registers 2

    .line 390
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lads_mobile_sdk/xh1;->b(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 414
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lads_mobile_sdk/xh1;->add(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 236
    invoke-static {p1}, Lads_mobile_sdk/yh1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    instance-of v0, p1, Lads_mobile_sdk/xh1;

    if-nez v0, :cond_f

    .line 240
    invoke-super {p0, p1}, Lads_mobile_sdk/i;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 243
    :cond_f
    check-cast p1, Lads_mobile_sdk/xh1;

    .line 244
    iget v0, p1, Lads_mobile_sdk/xh1;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return v1

    .line 248
    :cond_17
    iget v2, p0, Lads_mobile_sdk/xh1;->c:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_3f

    add-int/2addr v2, v0

    .line 255
    iget-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    array-length v3, v0

    if-le v2, v3, :cond_2b

    .line 256
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    .line 259
    :cond_2b
    iget-object v0, p1, Lads_mobile_sdk/xh1;->b:[I

    iget-object v3, p0, Lads_mobile_sdk/xh1;->b:[I

    iget v4, p0, Lads_mobile_sdk/xh1;->c:I

    iget p1, p1, Lads_mobile_sdk/xh1;->c:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iput v2, p0, Lads_mobile_sdk/xh1;->c:I

    .line 261
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    .line 262
    :cond_3f
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public b(II)I
    .registers 5

    .line 371
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 372
    invoke-direct {p0, p1}, Lads_mobile_sdk/xh1;->e(I)V

    .line 373
    iget-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    aget v1, v0, p1

    .line 374
    aput p2, v0, p1

    return v1
.end method

.method public b(I)V
    .registers 6

    .line 192
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 193
    iget v0, p0, Lads_mobile_sdk/xh1;->c:I

    iget-object v1, p0, Lads_mobile_sdk/xh1;->b:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1b

    .line 194
    array-length v0, v1

    invoke-static {v0}, Lads_mobile_sdk/xh1;->f(I)I

    move-result v0

    .line 195
    new-array v0, v0, [I

    .line 197
    iget-object v1, p0, Lads_mobile_sdk/xh1;->b:[I

    iget v2, p0, Lads_mobile_sdk/xh1;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iput-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    .line 201
    :cond_1b
    iget-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    iget v1, p0, Lads_mobile_sdk/xh1;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lads_mobile_sdk/xh1;->c:I

    aput p1, v0, v1

    return-void
.end method

.method public c(I)I
    .registers 3

    .line 132
    invoke-direct {p0, p1}, Lads_mobile_sdk/xh1;->e(I)V

    .line 133
    iget-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 153
    invoke-virtual {p0, p1}, Lads_mobile_sdk/xh1;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public d(I)V
    .registers 4

    .line 281
    iget-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    array-length v1, v0

    if-gt p1, v1, :cond_6

    return-void

    .line 284
    :cond_6
    array-length v1, v0

    if-nez v1, :cond_14

    const/16 v0, 0xa

    .line 285
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lads_mobile_sdk/xh1;->b:[I

    return-void

    .line 291
    :cond_14
    array-length v0, v0

    :goto_15
    if-ge v0, p1, :cond_1c

    .line 293
    invoke-static {v0}, Lads_mobile_sdk/xh1;->f(I)I

    move-result v0

    goto :goto_15

    .line 295
    :cond_1c
    iget-object p1, p0, Lads_mobile_sdk/xh1;->b:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/xh1;->b:[I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 89
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/xh1;

    if-nez v1, :cond_d

    .line 90
    invoke-super {p0, p1}, Lads_mobile_sdk/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 92
    :cond_d
    check-cast p1, Lads_mobile_sdk/xh1;

    .line 93
    iget v1, p0, Lads_mobile_sdk/xh1;->c:I

    iget v2, p1, Lads_mobile_sdk/xh1;->c:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    return v3

    .line 97
    :cond_17
    iget-object p1, p1, Lads_mobile_sdk/xh1;->b:[I

    move v1, v3

    .line 98
    :goto_1a
    iget v2, p0, Lads_mobile_sdk/xh1;->c:I

    if-ge v1, v2, :cond_2a

    .line 99
    iget-object v2, p0, Lads_mobile_sdk/xh1;->b:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_27

    return v3

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2a
    return v0
.end method

.method public get(I)Ljava/lang/Integer;
    .registers 2

    .line 127
    invoke-virtual {p0, p1}, Lads_mobile_sdk/xh1;->c(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 151
    invoke-virtual {p0, p1}, Lads_mobile_sdk/xh1;->get(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    :goto_2
    iget v2, p0, Lads_mobile_sdk/xh1;->c:I

    if-ge v1, v2, :cond_10

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v2, p0, Lads_mobile_sdk/xh1;->b:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6

    .line 138
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 141
    :cond_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 142
    invoke-virtual {p0}, Lads_mobile_sdk/xh1;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1d

    .line 144
    iget-object v3, p0, Lads_mobile_sdk/xh1;->b:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    return v1
.end method

.method public remove(I)Ljava/lang/Integer;
    .registers 6

    .line 268
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 269
    invoke-direct {p0, p1}, Lads_mobile_sdk/xh1;->e(I)V

    .line 270
    iget-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    aget v1, v0, p1

    .line 271
    iget v2, p0, Lads_mobile_sdk/xh1;->c:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_18

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 272
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    :cond_18
    iget p1, p0, Lads_mobile_sdk/xh1;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lads_mobile_sdk/xh1;->c:I

    .line 275
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 300
    invoke-virtual {p0, p1}, Lads_mobile_sdk/xh1;->remove(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public removeRange(II)V
    .registers 5

    .line 70
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    if-lt p2, p1, :cond_1a

    .line 75
    iget-object v0, p0, Lads_mobile_sdk/xh1;->b:[I

    iget v1, p0, Lads_mobile_sdk/xh1;->c:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget v0, p0, Lads_mobile_sdk/xh1;->c:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lads_mobile_sdk/xh1;->c:I

    .line 77
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 78
    :cond_1a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    .line 164
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/xh1;->b(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 188
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/xh1;->set(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 158
    iget v0, p0, Lads_mobile_sdk/xh1;->c:I

    return v0
.end method
