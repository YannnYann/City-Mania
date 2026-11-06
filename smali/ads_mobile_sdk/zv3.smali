###### Class ads_mobile_sdk.zv3 (ads_mobile_sdk.zv3)
.class public final Lads_mobile_sdk/zv3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Lads_mobile_sdk/zv3;


# instance fields
.field private a:I

.field private b:[I

.field private c:[Ljava/lang/Object;

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/zv3;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lads_mobile_sdk/zv3;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lads_mobile_sdk/zv3;->f:Lads_mobile_sdk/zv3;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    .line 83
    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lads_mobile_sdk/zv3;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 171
    iput v0, p0, Lads_mobile_sdk/zv3;->d:I

    .line 183
    iput p1, p0, Lads_mobile_sdk/zv3;->a:I

    .line 184
    iput-object p2, p0, Lads_mobile_sdk/zv3;->b:[I

    .line 185
    iput-object p3, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    .line 186
    iput-boolean p4, p0, Lads_mobile_sdk/zv3;->e:Z

    return-void
.end method

.method private static a([II)I
    .registers 5

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_d

    mul-int/lit8 v0, v0, 0x1f

    .line 814
    aget v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    return v0
.end method

.method private static a([Ljava/lang/Object;I)I
    .registers 5

    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_11

    mul-int/lit8 v0, v0, 0x1f

    .line 1142
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    return v0
.end method

.method public static a(Lads_mobile_sdk/zv3;Lads_mobile_sdk/zv3;)Lads_mobile_sdk/zv3;
    .registers 8

    .line 1687
    iget v0, p0, Lads_mobile_sdk/zv3;->a:I

    iget v1, p1, Lads_mobile_sdk/zv3;->a:I

    add-int/2addr v0, v1

    .line 1688
    iget-object v1, p0, Lads_mobile_sdk/zv3;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 1689
    iget-object v2, p1, Lads_mobile_sdk/zv3;->b:[I

    iget v3, p0, Lads_mobile_sdk/zv3;->a:I

    iget v4, p1, Lads_mobile_sdk/zv3;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1690
    iget-object v2, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 1691
    iget-object v3, p1, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    iget p0, p0, Lads_mobile_sdk/zv3;->a:I

    iget p1, p1, Lads_mobile_sdk/zv3;->a:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1692
    new-instance p0, Lads_mobile_sdk/zv3;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lads_mobile_sdk/zv3;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private a(I)V
    .registers 5

    .line 479
    iget-object v0, p0, Lads_mobile_sdk/zv3;->b:[I

    array-length v1, v0

    if-le p1, v1, :cond_21

    .line 481
    iget v1, p0, Lads_mobile_sdk/zv3;->a:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    if-ge v2, p1, :cond_d

    goto :goto_e

    :cond_d
    move p1, v2

    :goto_e
    const/16 v1, 0x8

    if-ge p1, v1, :cond_13

    move p1, v1

    .line 493
    :cond_13
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/zv3;->b:[I

    .line 494
    iget-object v0, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    :cond_21
    return-void
.end method

.method private static a(ILjava/lang/Object;Lads_mobile_sdk/py;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3310
    invoke-static {p0}, Lads_mobile_sdk/u24;->a(I)I

    move-result v0

    .line 3311
    invoke-static {p0}, Lads_mobile_sdk/u24;->b(I)I

    move-result p0

    if-eqz p0, :cond_46

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_36

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2a

    const/4 v1, 0x5

    if-ne p0, v1, :cond_20

    .line 3332
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, v0, p0}, Lads_mobile_sdk/py;->b(II)V

    return-void

    .line 3331
    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lads_mobile_sdk/np1;->e()Lads_mobile_sdk/np1$a;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 3341
    :cond_2a
    invoke-virtual {p2, v0}, Lads_mobile_sdk/py;->b(I)V

    .line 3342
    check-cast p1, Lads_mobile_sdk/zv3;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/zv3;->b(Lads_mobile_sdk/py;)V

    .line 3343
    invoke-virtual {p2, v0}, Lads_mobile_sdk/py;->a(I)V

    return-void

    .line 3344
    :cond_36
    check-cast p1, Lads_mobile_sdk/du;

    invoke-virtual {p2, v0, p1}, Lads_mobile_sdk/py;->a(ILads_mobile_sdk/du;)V

    return-void

    .line 3345
    :cond_3c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, v0, p0, p1}, Lads_mobile_sdk/py;->a(IJ)V

    return-void

    .line 3346
    :cond_46
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2, v0, p0, p1}, Lads_mobile_sdk/py;->b(IJ)V

    return-void
.end method

.method private static a([I[II)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_e

    .line 2968
    aget v2, p0, v1

    aget v3, p1, v1

    if-eq v2, v3, :cond_b

    return v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method private static a([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_12

    .line 1974
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public static b()Lads_mobile_sdk/zv3;
    .registers 1

    .line 175
    sget-object v0, Lads_mobile_sdk/zv3;->f:Lads_mobile_sdk/zv3;

    return-object v0
.end method

.method public static f()Lads_mobile_sdk/zv3;
    .registers 1

    .line 1
    new-instance v0, Lads_mobile_sdk/zv3;

    invoke-direct {v0}, Lads_mobile_sdk/zv3;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lads_mobile_sdk/zv3;)Lads_mobile_sdk/zv3;
    .registers 8

    .line 1620
    invoke-static {}, Lads_mobile_sdk/zv3;->b()Lads_mobile_sdk/zv3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lads_mobile_sdk/zv3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 1624
    :cond_b
    invoke-virtual {p0}, Lads_mobile_sdk/zv3;->a()V

    .line 1625
    iget v0, p0, Lads_mobile_sdk/zv3;->a:I

    iget v1, p1, Lads_mobile_sdk/zv3;->a:I

    add-int/2addr v0, v1

    .line 1626
    invoke-direct {p0, v0}, Lads_mobile_sdk/zv3;->a(I)V

    .line 1627
    iget-object v1, p1, Lads_mobile_sdk/zv3;->b:[I

    iget-object v2, p0, Lads_mobile_sdk/zv3;->b:[I

    iget v3, p0, Lads_mobile_sdk/zv3;->a:I

    iget v4, p1, Lads_mobile_sdk/zv3;->a:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1628
    iget-object v1, p1, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    iget-object v2, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    iget v3, p0, Lads_mobile_sdk/zv3;->a:I

    iget p1, p1, Lads_mobile_sdk/zv3;->a:I

    invoke-static {v1, v5, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1629
    iput v0, p0, Lads_mobile_sdk/zv3;->a:I

    return-object p0
.end method

.method public a()V
    .registers 2

    .line 107
    iget-boolean v0, p0, Lads_mobile_sdk/zv3;->e:Z

    if-eqz v0, :cond_5

    return-void

    .line 108
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(ILjava/lang/Object;)V
    .registers 5

    .line 2690
    invoke-virtual {p0}, Lads_mobile_sdk/zv3;->a()V

    .line 2691
    iget v0, p0, Lads_mobile_sdk/zv3;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lads_mobile_sdk/zv3;->a(I)V

    .line 2693
    iget-object v0, p0, Lads_mobile_sdk/zv3;->b:[I

    iget v1, p0, Lads_mobile_sdk/zv3;->a:I

    aput p1, v0, v1

    .line 2694
    iget-object p1, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 2695
    iput v1, p0, Lads_mobile_sdk/zv3;->a:I

    return-void
.end method

.method public a(Lads_mobile_sdk/py;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3128
    :goto_1
    iget v1, p0, Lads_mobile_sdk/zv3;->a:I

    if-ge v0, v1, :cond_17

    .line 3129
    iget-object v1, p0, Lads_mobile_sdk/zv3;->b:[I

    aget v1, v1, v0

    invoke-static {v1}, Lads_mobile_sdk/u24;->a(I)I

    move-result v1

    .line 3130
    iget-object v2, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lads_mobile_sdk/py;->a(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x0

    .line 2327
    :goto_1
    iget v1, p0, Lads_mobile_sdk/zv3;->a:I

    if-ge v0, v1, :cond_1b

    .line 2328
    iget-object v1, p0, Lads_mobile_sdk/zv3;->b:[I

    aget v1, v1, v0

    invoke-static {v1}, Lads_mobile_sdk/u24;->a(I)I

    move-result v1

    .line 2329
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lads_mobile_sdk/vw1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method public b(Lads_mobile_sdk/py;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget v0, p0, Lads_mobile_sdk/zv3;->a:I

    if-nez v0, :cond_5

    goto :goto_18

    :cond_5
    const/4 v0, 0x0

    .line 173
    :goto_6
    iget v1, p0, Lads_mobile_sdk/zv3;->a:I

    if-ge v0, v1, :cond_18

    .line 174
    iget-object v1, p0, Lads_mobile_sdk/zv3;->b:[I

    aget v1, v1, v0

    iget-object v2, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lads_mobile_sdk/zv3;->a(ILjava/lang/Object;Lads_mobile_sdk/py;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    :goto_18
    return-void
.end method

.method public c()I
    .registers 7

    .line 234
    iget v0, p0, Lads_mobile_sdk/zv3;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 240
    :goto_8
    iget v2, p0, Lads_mobile_sdk/zv3;->a:I

    if-ge v0, v2, :cond_80

    .line 241
    iget-object v2, p0, Lads_mobile_sdk/zv3;->b:[I

    aget v2, v2, v0

    .line 242
    invoke-static {v2}, Lads_mobile_sdk/u24;->a(I)I

    move-result v3

    .line 243
    invoke-static {v2}, Lads_mobile_sdk/u24;->b(I)I

    move-result v2

    if-eqz v2, :cond_6e

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5f

    const/4 v4, 0x2

    if-eq v2, v4, :cond_54

    const/4 v5, 0x3

    if-eq v2, v5, :cond_41

    const/4 v4, 0x5

    if-ne v2, v4, :cond_37

    .line 263
    iget-object v2, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lads_mobile_sdk/oy;->b(II)I

    move-result v2

    :goto_34
    add-int/2addr v2, v1

    move v1, v2

    goto :goto_7d

    .line 262
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lads_mobile_sdk/np1;->e()Lads_mobile_sdk/np1$a;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 273
    :cond_41
    invoke-static {v3}, Lads_mobile_sdk/oy;->h(I)I

    move-result v2

    mul-int/2addr v2, v4

    iget-object v3, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lads_mobile_sdk/zv3;

    .line 274
    invoke-virtual {v3}, Lads_mobile_sdk/zv3;->c()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    move v1, v3

    goto :goto_7d

    .line 275
    :cond_54
    iget-object v2, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lads_mobile_sdk/du;

    invoke-static {v3, v2}, Lads_mobile_sdk/oy;->a(ILads_mobile_sdk/du;)I

    move-result v2

    goto :goto_34

    .line 276
    :cond_5f
    iget-object v2, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lads_mobile_sdk/oy;->a(IJ)I

    move-result v2

    goto :goto_34

    .line 277
    :cond_6e
    iget-object v2, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lads_mobile_sdk/oy;->e(IJ)I

    move-result v2

    goto :goto_34

    :goto_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 298
    :cond_80
    iput v1, p0, Lads_mobile_sdk/zv3;->d:I

    return v1
.end method

.method public d()I
    .registers 5

    .line 210
    iget v0, p0, Lads_mobile_sdk/zv3;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    .line 216
    :goto_8
    iget v2, p0, Lads_mobile_sdk/zv3;->a:I

    if-ge v0, v2, :cond_22

    .line 217
    iget-object v2, p0, Lads_mobile_sdk/zv3;->b:[I

    aget v2, v2, v0

    .line 218
    invoke-static {v2}, Lads_mobile_sdk/u24;->a(I)I

    move-result v2

    .line 219
    iget-object v3, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lads_mobile_sdk/du;

    .line 220
    invoke-static {v2, v3}, Lads_mobile_sdk/oy;->b(ILads_mobile_sdk/du;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 223
    :cond_22
    iput v1, p0, Lads_mobile_sdk/zv3;->d:I

    return v1
.end method

.method public e()V
    .registers 2

    .line 100
    iget-boolean v0, p0, Lads_mobile_sdk/zv3;->e:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lads_mobile_sdk/zv3;->e:Z

    :cond_7
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 303
    :cond_8
    instance-of v2, p1, Lads_mobile_sdk/zv3;

    if-nez v2, :cond_d

    return v1

    .line 307
    :cond_d
    check-cast p1, Lads_mobile_sdk/zv3;

    .line 308
    iget v2, p0, Lads_mobile_sdk/zv3;->a:I

    iget v3, p1, Lads_mobile_sdk/zv3;->a:I

    if-ne v2, v3, :cond_2d

    iget-object v3, p0, Lads_mobile_sdk/zv3;->b:[I

    iget-object v4, p1, Lads_mobile_sdk/zv3;->b:[I

    .line 309
    invoke-static {v3, v4, v2}, Lads_mobile_sdk/zv3;->a([I[II)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    iget-object p1, p1, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    iget v3, p0, Lads_mobile_sdk/zv3;->a:I

    .line 310
    invoke-static {v2, p1, v3}, Lads_mobile_sdk/zv3;->a([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 337
    iget v0, p0, Lads_mobile_sdk/zv3;->a:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    .line 338
    iget-object v2, p0, Lads_mobile_sdk/zv3;->b:[I

    invoke-static {v2, v0}, Lads_mobile_sdk/zv3;->a([II)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 339
    iget-object v0, p0, Lads_mobile_sdk/zv3;->c:[Ljava/lang/Object;

    iget v2, p0, Lads_mobile_sdk/zv3;->a:I

    invoke-static {v0, v2}, Lads_mobile_sdk/zv3;->a([Ljava/lang/Object;I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
