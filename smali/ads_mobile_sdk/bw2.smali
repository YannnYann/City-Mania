###### Class ads_mobile_sdk.bw2 (ads_mobile_sdk.bw2)
.class final Lads_mobile_sdk/bw2;
.super Lads_mobile_sdk/i;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lads_mobile_sdk/i<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/Object;

.field private static final e:Lads_mobile_sdk/bw2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lads_mobile_sdk/bw2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    .line 43
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lads_mobile_sdk/bw2;->d:[Ljava/lang/Object;

    .line 45
    new-instance v2, Lads_mobile_sdk/bw2;

    invoke-direct {v2, v1, v0, v0}, Lads_mobile_sdk/bw2;-><init>([Ljava/lang/Object;IZ)V

    sput-object v2, Lads_mobile_sdk/bw2;->e:Lads_mobile_sdk/bw2;

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;IZ)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p3}, Lads_mobile_sdk/i;-><init>(Z)V

    .line 63
    iput-object p1, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    .line 64
    iput p2, p0, Lads_mobile_sdk/bw2;->c:I

    return-void
.end method

.method private static d(I)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)[TE;"
        }
    .end annotation

    .line 247
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static e()Lads_mobile_sdk/bw2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lads_mobile_sdk/bw2<",
            "TE;>;"
        }
    .end annotation

    .line 243
    sget-object v0, Lads_mobile_sdk/bw2;->e:Lads_mobile_sdk/bw2;

    return-object v0
.end method

.method private f(I)V
    .registers 3

    if-ltz p1, :cond_7

    .line 251
    iget v0, p0, Lads_mobile_sdk/bw2;->c:I

    if-ge p1, v0, :cond_7

    return-void

    .line 252
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lads_mobile_sdk/bw2;->h(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static g(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x3

    .line 99
    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private h(I)Ljava/lang/String;
    .registers 5

    .line 257
    iget v0, p0, Lads_mobile_sdk/bw2;->c:I

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
.method public bridge synthetic a(I)Lads_mobile_sdk/yh1$f;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lads_mobile_sdk/bw2;->i(I)Lads_mobile_sdk/bw2;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    if-ltz p1, :cond_41

    .line 106
    iget v0, p0, Lads_mobile_sdk/bw2;->c:I

    if-gt p1, v0, :cond_41

    .line 110
    iget-object v1, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 112
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_30

    .line 114
    :cond_15
    array-length v0, v1

    invoke-static {v0}, Lads_mobile_sdk/bw2;->g(I)I

    move-result v0

    .line 115
    invoke-static {v0}, Lads_mobile_sdk/bw2;->d(I)[Ljava/lang/Object;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v1, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lads_mobile_sdk/bw2;->c:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iput-object v0, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    .line 125
    :goto_30
    iget-object v0, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 126
    iget p1, p0, Lads_mobile_sdk/bw2;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lads_mobile_sdk/bw2;->c:I

    .line 127
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 128
    :cond_41
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lads_mobile_sdk/bw2;->h(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 212
    iget v0, p0, Lads_mobile_sdk/bw2;->c:I

    iget-object v1, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_17

    .line 213
    array-length v0, v1

    invoke-static {v0}, Lads_mobile_sdk/bw2;->g(I)I

    move-result v0

    .line 214
    iget-object v1, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 216
    iput-object v0, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    .line 219
    :cond_17
    iget-object v0, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    iget v1, p0, Lads_mobile_sdk/bw2;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lads_mobile_sdk/bw2;->c:I

    aput-object p1, v0, v1

    .line 220
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0
.end method

.method public e(I)V
    .registers 4

    .line 228
    iget-object v0, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    array-length v1, v0

    if-gt p1, v1, :cond_6

    return-void

    .line 231
    :cond_6
    array-length v1, v0

    if-nez v1, :cond_14

    const/16 v0, 0xa

    .line 232
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    return-void

    .line 238
    :cond_14
    array-length v0, v0

    :goto_15
    if-ge v0, p1, :cond_1c

    .line 240
    invoke-static {v0}, Lads_mobile_sdk/bw2;->g(I)I

    move-result v0

    goto :goto_15

    .line 242
    :cond_1c
    iget-object p1, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 139
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 145
    :cond_a
    instance-of v1, p1, Ljava/util/RandomAccess;

    if-nez v1, :cond_13

    .line 146
    invoke-super {p0, p1}, Lads_mobile_sdk/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 149
    :cond_13
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 150
    invoke-virtual {p0}, Lads_mobile_sdk/bw2;->size()I

    move-result v3

    .line 151
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_21

    return v2

    .line 155
    :cond_21
    instance-of v4, p1, Lads_mobile_sdk/bw2;

    if-eqz v4, :cond_3d

    .line 156
    check-cast p1, Lads_mobile_sdk/bw2;

    move v1, v2

    :goto_28
    if-ge v1, v3, :cond_3c

    .line 159
    iget-object v4, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    aget-object v4, v4, v1

    iget-object v5, p1, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    return v2

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    return v0

    :cond_3d
    move p1, v2

    :goto_3e
    if-ge p1, v3, :cond_52

    .line 168
    iget-object v4, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    aget-object v4, v4, p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    return v2

    :cond_4f
    add-int/lit8 p1, p1, 0x1

    goto :goto_3e

    :cond_52
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lads_mobile_sdk/bw2;->f(I)V

    .line 188
    iget-object v0, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .registers 5

    .line 177
    invoke-virtual {p0}, Lads_mobile_sdk/bw2;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_16

    mul-int/lit8 v1, v1, 0x1f

    .line 180
    iget-object v3, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    return v1
.end method

.method public i(I)Lads_mobile_sdk/bw2;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lads_mobile_sdk/bw2<",
            "TE;>;"
        }
    .end annotation

    .line 70
    iget v0, p0, Lads_mobile_sdk/bw2;->c:I

    if-lt p1, v0, :cond_18

    if-nez p1, :cond_9

    .line 74
    sget-object p1, Lads_mobile_sdk/bw2;->d:[Ljava/lang/Object;

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 76
    :goto_f
    new-instance v0, Lads_mobile_sdk/bw2;

    iget v1, p0, Lads_mobile_sdk/bw2;->c:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lads_mobile_sdk/bw2;-><init>([Ljava/lang/Object;IZ)V

    return-object v0

    .line 77
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 195
    invoke-direct {p0, p1}, Lads_mobile_sdk/bw2;->f(I)V

    .line 197
    iget-object v0, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 198
    iget v2, p0, Lads_mobile_sdk/bw2;->c:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_18

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 199
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    :cond_18
    iget p1, p0, Lads_mobile_sdk/bw2;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lads_mobile_sdk/bw2;->c:I

    .line 203
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 211
    invoke-direct {p0, p1}, Lads_mobile_sdk/bw2;->f(I)V

    .line 213
    iget-object v0, p0, Lads_mobile_sdk/bw2;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 214
    aput-object p2, v0, p1

    .line 216
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public size()I
    .registers 2

    .line 222
    iget v0, p0, Lads_mobile_sdk/bw2;->c:I

    return v0
.end method
