###### Class ads_mobile_sdk.u34 (ads_mobile_sdk.u34)
.class public final Lads_mobile_sdk/u34;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lads_mobile_sdk/p34;

.field public c:Lads_mobile_sdk/c34;

.field public final d:Lads_mobile_sdk/d34;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g34;)V
    .registers 5

    .line 2
    sget-object v0, Lads_mobile_sdk/p34;->b:Lads_mobile_sdk/p34;

    new-instance v1, Lads_mobile_sdk/e34;

    invoke-direct {v1}, Lads_mobile_sdk/e34;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lads_mobile_sdk/u34;-><init>(Lads_mobile_sdk/p34;ILads_mobile_sdk/c34;)V

    iput-object p1, p0, Lads_mobile_sdk/u34;->d:Lads_mobile_sdk/d34;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/p34;ILads_mobile_sdk/c34;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/u34;->b:Lads_mobile_sdk/p34;

    iput p2, p0, Lads_mobile_sdk/u34;->a:I

    iput-object p3, p0, Lads_mobile_sdk/u34;->c:Lads_mobile_sdk/c34;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/p34;ILads_mobile_sdk/c34;Lads_mobile_sdk/d34;)V
    .registers 5

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lads_mobile_sdk/u34;-><init>(Lads_mobile_sdk/p34;ILads_mobile_sdk/c34;)V

    iput-object p4, p0, Lads_mobile_sdk/u34;->d:Lads_mobile_sdk/d34;

    return-void
.end method

.method public static final c(J)V
    .registers 23

    const/16 v0, 0x9

    .line 2
    new-array v0, v0, [J

    fill-array-data v0, :array_42

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    const/4 v7, 0x3

    aget-wide v7, v0, v7

    const/4 v9, 0x4

    aget-wide v9, v0, v9

    const/4 v11, 0x5

    aget-wide v11, v0, v11

    const/4 v13, 0x6

    aget-wide v13, v0, v13

    const/4 v15, 0x7

    aget-wide v15, v0, v15

    const/16 v17, 0x8

    aget-wide v17, v0, v17

    move-wide/from16 v19, v3

    not-long v3, v1

    and-long v3, v3, v19

    or-long/2addr v3, v5

    and-long v0, v1, v7

    or-long/2addr v0, v9

    add-long/2addr v3, v0

    sub-long/2addr v3, v11

    add-long/2addr v3, v13

    rem-long v15, v15, v17

    xor-long v0, v3, v15

    rem-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3c

    return-void

    :cond_3c
    new-instance v0, Lads_mobile_sdk/s34;

    invoke-direct {v0}, Lads_mobile_sdk/s34;-><init>()V

    throw v0

    :array_42
    .array-data 8
        0x86fbbe2
        0x1b37c8a2
        0x44085648
        0x3b379caa
        0x60403609
        0xc6f58bedL
        0x187370eb
        0x664f224e
        0x1c7062c7
    .end array-data
.end method


# virtual methods
.method public final a()J
    .registers 22

    const/16 v0, 0x9

    .line 5
    new-array v0, v0, [J

    fill-array-data v0, :array_3a

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    const/4 v7, 0x3

    aget-wide v7, v0, v7

    const/4 v9, 0x4

    aget-wide v9, v0, v9

    const/4 v11, 0x5

    aget-wide v11, v0, v11

    const/4 v13, 0x6

    aget-wide v13, v0, v13

    const/4 v15, 0x7

    aget-wide v15, v0, v15

    const/16 v17, 0x8

    aget-wide v17, v0, v17

    move-wide/from16 v19, v3

    not-long v3, v1

    and-long v3, v3, v19

    or-long/2addr v3, v5

    and-long v0, v1, v7

    or-long/2addr v0, v9

    add-long/2addr v3, v0

    sub-long/2addr v3, v11

    add-long/2addr v3, v13

    rem-long v15, v15, v17

    xor-long v0, v3, v15

    move-object/from16 v2, p0

    iget v3, v2, Lads_mobile_sdk/u34;->a:I

    int-to-long v3, v3

    mul-long/2addr v3, v0

    return-wide v3

    :array_3a
    .array-data 8
        0x1d4ed43b
        0x30ca86e2
        0x47a4c80d
        0x304b07e6
        0x4a25891c
        0xdca15f79L
        0x211012a4
        0x70a64e2a
        0x6a2342ec
    .end array-data
.end method

.method public final a(J)V
    .registers 25

    move-object/from16 v0, p0

    const/16 v1, 0x9

    .line 1
    new-array v1, v1, [J

    fill-array-data v1, :array_56

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    const/4 v6, 0x2

    aget-wide v6, v1, v6

    const/4 v8, 0x3

    aget-wide v8, v1, v8

    const/4 v10, 0x4

    aget-wide v10, v1, v10

    const/4 v12, 0x5

    aget-wide v12, v1, v12

    const/4 v14, 0x6

    aget-wide v14, v1, v14

    const/16 v16, 0x7

    aget-wide v16, v1, v16

    const/16 v18, 0x8

    aget-wide v18, v1, v18

    move-wide/from16 v20, v4

    not-long v4, v2

    and-long v4, v4, v20

    or-long/2addr v4, v6

    and-long v1, v2, v8

    or-long/2addr v1, v10

    add-long/2addr v4, v1

    sub-long/2addr v4, v12

    add-long/2addr v4, v14

    rem-long v16, v16, v18

    xor-long v1, v4, v16

    invoke-static/range {p1 .. p2}, Lads_mobile_sdk/u34;->c(J)V

    div-long v1, p1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_4f

    iget-object v3, v0, Lads_mobile_sdk/u34;->b:Lads_mobile_sdk/p34;

    .line 2
    iget-object v3, v3, Lads_mobile_sdk/p34;->a:[B

    .line 3
    array-length v3, v3

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_4f

    long-to-int v1, v1

    .line 4
    iput v1, v0, Lads_mobile_sdk/u34;->a:I

    return-void

    :cond_4f
    new-instance v1, Lads_mobile_sdk/t34;

    invoke-direct {v1}, Lads_mobile_sdk/t34;-><init>()V

    throw v1

    nop

    :array_56
    .array-data 8
        0x7f8b6605
        0x2b6d0211
        0x2cc25112
        0x53ad0681
        0x70d21df2
        0x10fbc8866L
        0x726b9f7c
        0x6ea607c9
        0x359abfdb
    .end array-data
.end method

.method public final b()J
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/u34;->c:Lads_mobile_sdk/c34;

    iget-object v1, p0, Lads_mobile_sdk/u34;->b:Lads_mobile_sdk/p34;

    iget v2, p0, Lads_mobile_sdk/u34;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lads_mobile_sdk/u34;->a:I

    invoke-interface {v0, v1, v2}, Lads_mobile_sdk/c34;->a(Lads_mobile_sdk/p34;I)B

    move-result v0
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_e} :catch_10

    int-to-long v0, v0

    return-wide v0

    :catch_10
    move-exception v0

    new-instance v1, Lads_mobile_sdk/t34;

    invoke-direct {v1, v0}, Lads_mobile_sdk/t34;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1
.end method

.method public final b(J)Lads_mobile_sdk/p34;
    .registers 13

    const/16 v0, 0x9

    .line 2
    new-array v0, v0, [I

    fill-array-data v0, :array_68

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x5

    aget v6, v0, v6

    const/4 v7, 0x6

    aget v7, v0, v7

    const/4 v8, 0x7

    aget v8, v0, v8

    const/16 v9, 0x8

    aget v0, v0, v9

    not-int v9, v1

    and-int/2addr v2, v9

    or-int/2addr v2, v3

    and-int/2addr v1, v4

    or-int/2addr v1, v5

    invoke-static {v2, v1, v6, v7}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v1

    rem-int/2addr v8, v0

    xor-int v0, v1, v8

    invoke-virtual {p0}, Lads_mobile_sdk/u34;->a()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-static {v1, v2}, Lads_mobile_sdk/u34;->c(J)V

    iget v1, p0, Lads_mobile_sdk/u34;->a:I

    int-to-long v2, v1

    iget-object v4, p0, Lads_mobile_sdk/u34;->b:Lads_mobile_sdk/p34;

    .line 3
    iget-object v5, v4, Lads_mobile_sdk/p34;->a:[B

    .line 4
    array-length v5, v5

    int-to-long v5, v5

    shr-long/2addr p1, v0

    add-long/2addr p1, v2

    cmp-long v0, p1, v5

    if-gtz v0, :cond_61

    cmp-long v0, p1, v2

    if-ltz v0, :cond_61

    .line 5
    :try_start_4a
    iget-object v0, p0, Lads_mobile_sdk/u34;->c:Lads_mobile_sdk/c34;

    long-to-int p1, p1

    invoke-interface {v0, v4, v1, p1}, Lads_mobile_sdk/c34;->a(Lads_mobile_sdk/p34;II)Lads_mobile_sdk/p34;

    move-result-object p2
    :try_end_51
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4a .. :try_end_51} :catch_54

    iput p1, p0, Lads_mobile_sdk/u34;->a:I

    return-object p2

    :catch_54
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "CEiv6BFfPnitUE+D"

    invoke-static {v0}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_61
    new-instance p1, Lads_mobile_sdk/t34;

    invoke-direct {p1}, Lads_mobile_sdk/t34;-><init>()V

    throw p1

    nop

    :array_68
    .array-data 4
        0x6366b17f
        0x5989c625
        0x475aaf55
        0x1c81602a
        0x251a3b9b
        -0x627f16db
        0x32181957
        0x47b486c9
        0x2e272b88
    .end array-data
.end method

.method public final c()I
    .registers 7

    const v0, 0x18a35fe3

    not-int v1, v0

    const v2, 0x60a8d984

    and-int/2addr v1, v2

    const v2, 0x506ad9c

    or-int/2addr v1, v2

    const v2, 0x60a85448

    and-int/2addr v0, v2

    const v2, 0x17002ff9

    or-int/2addr v0, v2

    const v2, 0x5a93d273

    const v3, 0x5ca941

    .line 1
    invoke-static {v1, v0, v2, v3}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v0

    const v1, 0x5fedc0e3

    const v2, 0x3d75bc47    # 0.05999401f

    rem-int/2addr v1, v2

    xor-int/2addr v0, v1

    :try_start_26
    iget-object v1, p0, Lads_mobile_sdk/u34;->c:Lads_mobile_sdk/c34;

    iget-object v2, p0, Lads_mobile_sdk/u34;->b:Lads_mobile_sdk/p34;

    iget v3, p0, Lads_mobile_sdk/u34;->a:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lads_mobile_sdk/u34;->a:I

    invoke-interface {v1, v2, v3}, Lads_mobile_sdk/c34;->a(Lads_mobile_sdk/p34;I)B

    move-result v1

    and-int/2addr v1, v0

    iget-object v2, p0, Lads_mobile_sdk/u34;->c:Lads_mobile_sdk/c34;

    iget-object v3, p0, Lads_mobile_sdk/u34;->b:Lads_mobile_sdk/p34;

    iget v4, p0, Lads_mobile_sdk/u34;->a:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lads_mobile_sdk/u34;->a:I

    invoke-interface {v2, v3, v4}, Lads_mobile_sdk/c34;->a(Lads_mobile_sdk/p34;I)B

    move-result v2

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lads_mobile_sdk/u34;->c:Lads_mobile_sdk/c34;

    iget-object v3, p0, Lads_mobile_sdk/u34;->b:Lads_mobile_sdk/p34;

    iget v4, p0, Lads_mobile_sdk/u34;->a:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lads_mobile_sdk/u34;->a:I

    invoke-interface {v2, v3, v4}, Lads_mobile_sdk/c34;->a(Lads_mobile_sdk/p34;I)B

    move-result v2

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lads_mobile_sdk/u34;->c:Lads_mobile_sdk/c34;

    iget-object v2, p0, Lads_mobile_sdk/u34;->b:Lads_mobile_sdk/p34;

    iget v3, p0, Lads_mobile_sdk/u34;->a:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lads_mobile_sdk/u34;->a:I

    invoke-interface {v1, v2, v3}, Lads_mobile_sdk/c34;->a(Lads_mobile_sdk/p34;I)B

    move-result v1
    :try_end_67
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_26 .. :try_end_67} :catch_6b

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0

    :catch_6b
    move-exception v0

    new-instance v1, Lads_mobile_sdk/t34;

    invoke-direct {v1, v0}, Lads_mobile_sdk/t34;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1
.end method

.method public final d()J
    .registers 9

    const v0, 0x4a495ddd    # 3299191.2f

    not-int v1, v0

    const v2, 0x103b005d

    and-int/2addr v1, v2

    const v2, 0x6dc13630

    or-int/2addr v1, v2

    const v2, 0x313ad04d

    and-int/2addr v0, v2

    const v2, 0x2744d712

    or-int/2addr v0, v2

    const v2, -0x6a63ef33

    const v3, 0x24e8596

    .line 2
    invoke-static {v1, v0, v2, v3}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v0

    const v1, 0x5f69c330

    const v2, 0x26bba08c

    rem-int/2addr v1, v2

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_29
    if-ge v1, v0, :cond_5e

    :try_start_2b
    iget-object v4, p0, Lads_mobile_sdk/u34;->c:Lads_mobile_sdk/c34;

    iget-object v5, p0, Lads_mobile_sdk/u34;->b:Lads_mobile_sdk/p34;

    iget v6, p0, Lads_mobile_sdk/u34;->a:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lads_mobile_sdk/u34;->a:I

    invoke-interface {v4, v5, v6}, Lads_mobile_sdk/c34;->a(Lads_mobile_sdk/p34;I)B

    move-result v4

    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    const/4 v5, 0x1

    const/16 v6, 0x3f

    if-ne v1, v6, :cond_4f

    if-gt v4, v5, :cond_47

    move v1, v6

    goto :goto_4f

    :cond_47
    new-instance v0, Lads_mobile_sdk/r34;

    invoke-direct {v0}, Lads_mobile_sdk/r34;-><init>()V

    throw v0

    :catch_4d
    move-exception v0

    goto :goto_64

    :cond_4f
    :goto_4f
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_5b

    ushr-long v0, v2, v5

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0

    :cond_5b
    add-int/lit8 v1, v1, 0x7

    goto :goto_29

    :cond_5e
    new-instance v0, Lads_mobile_sdk/r34;

    invoke-direct {v0}, Lads_mobile_sdk/r34;-><init>()V

    throw v0
    :try_end_64
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2b .. :try_end_64} :catch_4d

    :goto_64
    new-instance v1, Lads_mobile_sdk/t34;

    invoke-direct {v1, v0}, Lads_mobile_sdk/t34;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1
.end method
