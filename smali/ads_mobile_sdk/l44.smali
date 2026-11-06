###### Class ads_mobile_sdk.l44 (ads_mobile_sdk.l44)
.class public final Lads_mobile_sdk/l44;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:J

.field public c:D

.field public d:Lads_mobile_sdk/p34;

.field public e:Ljava/util/List;

.field public f:Lads_mobile_sdk/d44;

.field public g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lads_mobile_sdk/l44;->g:I

    return-void
.end method

.method public static a(D)Lads_mobile_sdk/l44;
    .registers 13

    .line 3
    new-instance v0, Lads_mobile_sdk/l44;

    invoke-direct {v0}, Lads_mobile_sdk/l44;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_3c

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    const/4 v7, 0x5

    aget v7, v1, v7

    const/4 v8, 0x6

    aget v8, v1, v8

    const/4 v9, 0x7

    aget v9, v1, v9

    const/16 v10, 0x8

    aget v1, v1, v10

    not-int v10, v2

    and-int/2addr v3, v10

    or-int/2addr v3, v4

    and-int/2addr v2, v5

    or-int/2addr v2, v6

    invoke-static {v3, v2, v7, v8}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v2

    rem-int/2addr v9, v1

    xor-int v1, v2, v9

    invoke-virtual {v0}, Lads_mobile_sdk/l44;->h()V

    iput v1, v0, Lads_mobile_sdk/l44;->g:I

    iput-wide p0, v0, Lads_mobile_sdk/l44;->c:D

    return-object v0

    :array_3c
    .array-data 4
        0x488ac1a
        0x611d8d4e
        0x3667bc63
        0x4118018c
        0x2ec75af0
        -0x50770546
        0x19df5148
        0x7055a5f5
        0x5fb8370b
    .end array-data
.end method

.method public static a(J)Lads_mobile_sdk/l44;
    .registers 13

    .line 2
    new-instance v0, Lads_mobile_sdk/l44;

    invoke-direct {v0}, Lads_mobile_sdk/l44;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_3c

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    const/4 v7, 0x5

    aget v7, v1, v7

    const/4 v8, 0x6

    aget v8, v1, v8

    const/4 v9, 0x7

    aget v9, v1, v9

    const/16 v10, 0x8

    aget v1, v1, v10

    not-int v10, v2

    and-int/2addr v3, v10

    or-int/2addr v3, v4

    and-int/2addr v2, v5

    or-int/2addr v2, v6

    invoke-static {v3, v2, v7, v8}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v2

    rem-int/2addr v9, v1

    xor-int v1, v2, v9

    invoke-virtual {v0}, Lads_mobile_sdk/l44;->h()V

    iput v1, v0, Lads_mobile_sdk/l44;->g:I

    iput-wide p0, v0, Lads_mobile_sdk/l44;->b:J

    return-object v0

    :array_3c
    .array-data 4
        0x100f8fca
        0x61107249
        0x1e4e0fd0
        0x697e7109
        0x8ee0140
        -0x6794efe9
        0x1be5f762
        0x1f48eaa1
        0x1381823a
    .end array-data
.end method

.method public static a(Lads_mobile_sdk/d44;)Lads_mobile_sdk/l44;
    .registers 12

    .line 6
    new-instance v0, Lads_mobile_sdk/l44;

    invoke-direct {v0}, Lads_mobile_sdk/l44;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_3c

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    const/4 v7, 0x5

    aget v7, v1, v7

    const/4 v8, 0x6

    aget v8, v1, v8

    const/4 v9, 0x7

    aget v9, v1, v9

    const/16 v10, 0x8

    aget v1, v1, v10

    not-int v10, v2

    and-int/2addr v3, v10

    or-int/2addr v3, v4

    and-int/2addr v2, v5

    or-int/2addr v2, v6

    invoke-static {v3, v2, v7, v8}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v2

    rem-int/2addr v9, v1

    xor-int v1, v2, v9

    invoke-virtual {v0}, Lads_mobile_sdk/l44;->h()V

    iput v1, v0, Lads_mobile_sdk/l44;->g:I

    iput-object p0, v0, Lads_mobile_sdk/l44;->f:Lads_mobile_sdk/d44;

    return-object v0

    :array_3c
    .array-data 4
        0x4e647fe4    # 9.583967E8f
        0x40060a1
        0x60214b2c
        0x24802089
        0x7897530c
        -0x2e227c8a
        0x4c684f
        0x2771ac80
        0x1c4a08ec
    .end array-data
.end method

.method public static a(Lads_mobile_sdk/l44;)Lads_mobile_sdk/l44;
    .registers 11

    const/16 v0, 0x9

    .line 13
    new-array v0, v0, [I

    fill-array-data v0, :array_be

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

    :try_start_2f
    iget v1, p0, Lads_mobile_sdk/l44;->g:I
    :try_end_31
    .catch Lads_mobile_sdk/i44; {:try_start_2f .. :try_end_31} :catch_9e

    add-int/2addr v0, v1

    if-eqz v1, :cond_9c

    packed-switch v0, :pswitch_data_ac

    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "HkezqgQcPni/TE/NwjgYPC5H6Q2JRdEp275wOg=="

    invoke-static {v0}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_43
    :try_start_43
    invoke-virtual {p0}, Lads_mobile_sdk/l44;->g()D

    move-result-wide v0

    invoke-static {v0, v1}, Lads_mobile_sdk/l44;->a(D)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :pswitch_4c
    invoke-virtual {p0}, Lads_mobile_sdk/l44;->f()Lads_mobile_sdk/d44;

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/l44;->a(Lads_mobile_sdk/d44;)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :pswitch_55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lads_mobile_sdk/l44;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_62
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/l44;

    invoke-static {v1}, Lads_mobile_sdk/l44;->a(Lads_mobile_sdk/l44;)Lads_mobile_sdk/l44;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_76
    invoke-static {v0}, Lads_mobile_sdk/l44;->a(Ljava/util/ArrayList;)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :pswitch_7b
    invoke-virtual {p0}, Lads_mobile_sdk/l44;->d()Lads_mobile_sdk/p34;

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/l44;->a(Lads_mobile_sdk/p34;)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :pswitch_84
    invoke-virtual {p0}, Lads_mobile_sdk/l44;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lads_mobile_sdk/l44;->a(J)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :pswitch_8d
    invoke-virtual {p0}, Lads_mobile_sdk/l44;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/l44;->a(Ljava/lang/Object;)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :pswitch_96
    new-instance p0, Lads_mobile_sdk/l44;

    invoke-direct {p0}, Lads_mobile_sdk/l44;-><init>()V

    return-object p0

    :cond_9c
    const/4 p0, 0x0

    throw p0
    :try_end_9e
    .catch Lads_mobile_sdk/i44; {:try_start_43 .. :try_end_9e} :catch_9e

    :catch_9e
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "CEiv6BFfPnitUE+D"

    invoke-static {v1}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_96
        :pswitch_8d
        :pswitch_84
        :pswitch_7b
        :pswitch_55
        :pswitch_4c
        :pswitch_43
    .end packed-switch

    :array_be
    .array-data 4
        0x44cdf9e6
        0x5166589e
        0x2e0f6c81
        -0x21fefe2
        -0x5363f440
        0x35ff3bef
        0x3ea2947
        0x68e34ba7
        0x20f34075
    .end array-data
.end method

.method public static a(Lads_mobile_sdk/p34;)Lads_mobile_sdk/l44;
    .registers 12

    .line 4
    new-instance v0, Lads_mobile_sdk/l44;

    invoke-direct {v0}, Lads_mobile_sdk/l44;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_3c

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    const/4 v7, 0x5

    aget v7, v1, v7

    const/4 v8, 0x6

    aget v8, v1, v8

    const/4 v9, 0x7

    aget v9, v1, v9

    const/16 v10, 0x8

    aget v1, v1, v10

    not-int v10, v2

    and-int/2addr v3, v10

    or-int/2addr v3, v4

    and-int/2addr v2, v5

    or-int/2addr v2, v6

    invoke-static {v3, v2, v7, v8}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v2

    rem-int/2addr v9, v1

    xor-int v1, v2, v9

    invoke-virtual {v0}, Lads_mobile_sdk/l44;->h()V

    iput v1, v0, Lads_mobile_sdk/l44;->g:I

    iput-object p0, v0, Lads_mobile_sdk/l44;->d:Lads_mobile_sdk/p34;

    return-object v0

    :array_3c
    .array-data 4
        0x4427069a
        0x20726618
        0x704c1fd5
        0x4ba6109
        0x57c89107
        -0x2fc594d5
        0xbffae18
        0x57a61a29
        0x5399c654
    .end array-data
.end method

.method public static a(Ljava/lang/Object;)Lads_mobile_sdk/l44;
    .registers 12

    .line 1
    new-instance v0, Lads_mobile_sdk/l44;

    invoke-direct {v0}, Lads_mobile_sdk/l44;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_3c

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    const/4 v7, 0x5

    aget v7, v1, v7

    const/4 v8, 0x6

    aget v8, v1, v8

    const/4 v9, 0x7

    aget v9, v1, v9

    const/16 v10, 0x8

    aget v1, v1, v10

    not-int v10, v2

    and-int/2addr v3, v10

    or-int/2addr v3, v4

    and-int/2addr v2, v5

    or-int/2addr v2, v6

    invoke-static {v3, v2, v7, v8}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v2

    rem-int/2addr v9, v1

    xor-int v1, v2, v9

    invoke-virtual {v0}, Lads_mobile_sdk/l44;->h()V

    iput v1, v0, Lads_mobile_sdk/l44;->g:I

    iput-object p0, v0, Lads_mobile_sdk/l44;->a:Ljava/lang/Object;

    return-object v0

    :array_3c
    .array-data 4
        0x22221a70
        0x75041dea
        0x304bc003
        0x45ad1fe8
        0xbbc201
        -0x3d3e9696
        0x5577f8e1
        0x7c3dbd3d
        0x737b8ddc
    .end array-data
.end method

.method public static a(Ljava/util/ArrayList;)Lads_mobile_sdk/l44;
    .registers 12

    .line 5
    new-instance v0, Lads_mobile_sdk/l44;

    invoke-direct {v0}, Lads_mobile_sdk/l44;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_3c

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    const/4 v7, 0x5

    aget v7, v1, v7

    const/4 v8, 0x6

    aget v8, v1, v8

    const/4 v9, 0x7

    aget v9, v1, v9

    const/16 v10, 0x8

    aget v1, v1, v10

    not-int v10, v2

    and-int/2addr v3, v10

    or-int/2addr v3, v4

    and-int/2addr v2, v5

    or-int/2addr v2, v6

    invoke-static {v3, v2, v7, v8}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v2

    rem-int/2addr v9, v1

    xor-int v1, v2, v9

    invoke-virtual {v0}, Lads_mobile_sdk/l44;->h()V

    iput v1, v0, Lads_mobile_sdk/l44;->g:I

    iput-object p0, v0, Lads_mobile_sdk/l44;->e:Ljava/util/List;

    return-object v0

    :array_3c
    .array-data 4
        0xdcdf8f6
        0x16117085
        0x24e64480
        0x13113c0f
        0x296acdba
        0x54fb8764
        0x2619a0c
        0x2123d5f2
        0x135b8110
    .end array-data
.end method

.method public static b(Ljava/lang/Object;)Lads_mobile_sdk/l44;
    .registers 5

    .line 1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lads_mobile_sdk/l44;->a(J)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x1

    if-eq v0, p0, :cond_1f

    const-wide/16 v0, 0x0

    goto :goto_21

    :cond_1f
    const-wide/16 v0, 0x1

    :goto_21
    invoke-static {v0, v1}, Lads_mobile_sdk/l44;->a(J)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :cond_26
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_36

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lads_mobile_sdk/l44;->a(J)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :cond_36
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_45

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lads_mobile_sdk/l44;->a(D)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :cond_45
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_55

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lads_mobile_sdk/l44;->a(D)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :cond_55
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_65

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lads_mobile_sdk/l44;->a(J)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :cond_65
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_75

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lads_mobile_sdk/l44;->a(J)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :cond_75
    instance-of v0, p0, Lads_mobile_sdk/p34;

    if-eqz v0, :cond_80

    check-cast p0, Lads_mobile_sdk/p34;

    invoke-static {p0}, Lads_mobile_sdk/l44;->a(Lads_mobile_sdk/p34;)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :cond_80
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8f

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lads_mobile_sdk/p34;->a(Ljava/lang/String;)Lads_mobile_sdk/p34;

    move-result-object p0

    invoke-static {p0}, Lads_mobile_sdk/l44;->a(Lads_mobile_sdk/p34;)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :cond_8f
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_b4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9f
    if-ge v2, v1, :cond_af

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lads_mobile_sdk/l44;->b(Ljava/lang/Object;)Lads_mobile_sdk/l44;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_af
    invoke-static {v0}, Lads_mobile_sdk/l44;->a(Ljava/util/ArrayList;)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0

    :cond_b4
    invoke-static {p0}, Lads_mobile_sdk/l44;->a(Ljava/lang/Object;)Lads_mobile_sdk/l44;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 11

    const/16 v0, 0x9

    .line 7
    new-array v0, v0, [I

    fill-array-data v0, :array_a0

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

    iget v1, p0, Lads_mobile_sdk/l44;->g:I

    add-int/2addr v0, v1

    if-eqz v1, :cond_8b

    packed-switch v0, :pswitch_data_8e

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "HkezqgQcPni/TE/NwjgYPC5H6Q2JRdEp275wOg=="

    invoke-static {v1}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_43
    invoke-virtual {p0}, Lads_mobile_sdk/l44;->g()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_4c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lads_mobile_sdk/l44;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/l44;

    invoke-virtual {v2}, Lads_mobile_sdk/l44;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_6d
    return-object v0

    :pswitch_6e
    invoke-virtual {p0}, Lads_mobile_sdk/l44;->d()Lads_mobile_sdk/p34;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/p34;->a()[B

    move-result-object v0

    return-object v0

    :pswitch_77
    invoke-virtual {p0}, Lads_mobile_sdk/l44;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_80
    invoke-virtual {p0}, Lads_mobile_sdk/l44;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_85
    new-instance v0, Lads_mobile_sdk/i44;

    invoke-direct {v0}, Lads_mobile_sdk/i44;-><init>()V

    throw v0

    :cond_8b
    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_85
        :pswitch_80
        :pswitch_77
        :pswitch_6e
        :pswitch_4c
        :pswitch_85
        :pswitch_43
    .end packed-switch

    :array_a0
    .array-data 4
        0xa42ddb1
        0x3e9ab75c
        0x324991f0
        -0x332dd1f2    # -1.101948E8f
        -0xd9767fd
        0x34884a02
        0xd37178
        0x1eaf8a90
        0x1c3f0206
    .end array-data
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p1

    const v1, 0x32a81505

    not-int v2, v1

    const v3, 0xa821b1e

    and-int/2addr v2, v3

    const v3, 0x35c02860

    or-int/2addr v2, v3

    const v3, 0x4a02333e    # 2133199.5f

    and-int/2addr v1, v3

    const v3, 0x44002060

    or-int/2addr v1, v3

    const v3, -0x61689e07

    const v4, 0x2995565b

    .line 8
    invoke-static {v2, v1, v3, v4}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v1

    const v2, 0x4d4f5b53    # 2.174293E8f

    const v3, 0x3e8f0b03

    rem-int/2addr v2, v3

    xor-int/2addr v1, v2

    move-object/from16 v2, p0

    iget v3, v2, Lads_mobile_sdk/l44;->g:I

    add-int/lit8 v4, v3, -0x1

    if-eqz v3, :cond_2b7

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Double;

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Short;

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Byte;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Long;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/Integer;

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v15, Ljava/lang/Float;

    move/from16 v16, v1

    const-class v1, Ljava/lang/Object;

    packed-switch v4, :pswitch_data_2ba

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "HkezqgQcPni/TE/NwjgYPC5H6Q2JRdEp275wOg=="

    invoke-static {v1}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_5b
    move-object v4, v1

    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/l44;->g()D

    move-result-wide v1

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e7

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6e

    goto/16 :goto_e7

    :cond_6e
    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e1

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    goto :goto_e1

    :cond_7b
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_db

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_88

    goto :goto_db

    :cond_88
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d0

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_95

    goto :goto_d0

    :cond_95
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c5

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    goto :goto_c5

    :cond_a2
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    goto :goto_c0

    :cond_af
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_ba
    new-instance v0, Lads_mobile_sdk/i44;

    invoke-direct {v0}, Lads_mobile_sdk/i44;-><init>()V

    throw v0

    :cond_c0
    :goto_c0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_c5
    :goto_c5
    double-to-int v0, v1

    shl-int v0, v0, v16

    shr-int v0, v0, v16

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_d0
    :goto_d0
    double-to-int v0, v1

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_db
    :goto_db
    double-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_e1
    :goto_e1
    double-to-int v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_e7
    :goto_e7
    double-to-float v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_ed
    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/l44;->f()Lads_mobile_sdk/d44;

    move-result-object v0

    return-object v0

    :pswitch_f2
    move-object v4, v1

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_176

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_176

    const-class v1, Ljava/util/AbstractList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_176

    const-class v1, Ljava/util/AbstractCollection;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_176

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_176

    const-class v1, Ljava/lang/Cloneable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_176

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_176

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_176

    const-class v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_176

    const-class v1, Ljava/util/RandomAccess;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_142

    goto :goto_176

    :cond_142
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_170

    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/l44;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    :goto_159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_16f

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/l44;

    invoke-virtual {v4, v0}, Lads_mobile_sdk/l44;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_159

    :cond_16f
    return-object v2

    :cond_170
    new-instance v0, Lads_mobile_sdk/i44;

    invoke-direct {v0}, Lads_mobile_sdk/i44;-><init>()V

    throw v0

    :cond_176
    :goto_176
    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/l44;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_17b
    move-object v4, v1

    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/l44;->d()Lads_mobile_sdk/p34;

    move-result-object v1

    const-class v2, Lads_mobile_sdk/p34;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_189

    return-object v1

    :cond_189
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Hn2H4l0="

    if-eqz v2, :cond_1a6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {v3}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    iget-object v1, v1, Lads_mobile_sdk/p34;->a:[B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    :cond_1a6
    const/4 v4, 0x0

    .line 10
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {v3}, Lads_mobile_sdk/n34;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    iget-object v1, v1, Lads_mobile_sdk/p34;->a:[B

    array-length v3, v1

    invoke-direct {v2, v1, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    .line 12
    :cond_1c3
    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    invoke-virtual {v1}, Lads_mobile_sdk/p34;->a()[B

    move-result-object v0

    return-object v0

    :cond_1d0
    new-instance v0, Lads_mobile_sdk/i44;

    invoke-direct {v0}, Lads_mobile_sdk/i44;-><init>()V

    throw v0

    :pswitch_1d6
    move-object v4, v1

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/l44;->c()J

    move-result-wide v1

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2a1

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1eb

    goto/16 :goto_2a1

    :cond_1eb
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_296

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f9

    goto/16 :goto_296

    :cond_1f9
    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28d

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_207

    goto/16 :goto_28d

    :cond_207
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_288

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_215

    goto/16 :goto_288

    :cond_215
    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_282

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_222

    goto :goto_282

    :cond_222
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27c

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22f

    goto :goto_27c

    :cond_22f
    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26d

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_240

    goto :goto_26d

    :cond_240
    const-class v3, Ljava/lang/Character;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_262

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_251

    goto :goto_262

    :cond_251
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_25c
    new-instance v0, Lads_mobile_sdk/i44;

    invoke-direct {v0}, Lads_mobile_sdk/i44;-><init>()V

    throw v0

    :cond_262
    :goto_262
    long-to-int v0, v1

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_26d
    :goto_26d
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_275

    const/4 v1, 0x1

    goto :goto_277

    :cond_275
    move/from16 v1, v17

    :goto_277
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_27c
    :goto_27c
    long-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_282
    :goto_282
    long-to-float v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_288
    :goto_288
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_28d
    :goto_28d
    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_296
    :goto_296
    long-to-int v0, v1

    shl-int v0, v0, v16

    shr-int v0, v0, v16

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_2a1
    :goto_2a1
    long-to-int v0, v1

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_2ac
    invoke-virtual/range {p0 .. p0}, Lads_mobile_sdk/l44;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2b1
    new-instance v0, Lads_mobile_sdk/i44;

    invoke-direct {v0}, Lads_mobile_sdk/i44;-><init>()V

    throw v0

    :cond_2b7
    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_2ba
    .packed-switch 0x0
        :pswitch_2b1
        :pswitch_2ac
        :pswitch_1d6
        :pswitch_17b
        :pswitch_f2
        :pswitch_ed
        :pswitch_5b
    .end packed-switch
.end method

.method public final a(I)V
    .registers 3

    .line 26
    iget v0, p0, Lads_mobile_sdk/l44;->g:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    new-instance p1, Lads_mobile_sdk/i44;

    invoke-direct {p1}, Lads_mobile_sdk/i44;-><init>()V

    throw p1
.end method

.method public final a(Ljava/io/ByteArrayOutputStream;)V
    .registers 28

    move-object/from16 v0, p1

    const/16 v1, 0x9

    .line 14
    new-array v1, v1, [J

    fill-array-data v1, :array_f6

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/4 v8, 0x2

    aget-wide v9, v1, v8

    const/4 v11, 0x3

    aget-wide v11, v1, v11

    const/4 v13, 0x4

    aget-wide v13, v1, v13

    const/4 v15, 0x5

    aget-wide v15, v1, v15

    const/16 v17, 0x6

    aget-wide v17, v1, v17

    const/16 v19, 0x7

    aget-wide v19, v1, v19

    const/16 v21, 0x8

    aget-wide v22, v1, v21

    move v1, v5

    move-wide/from16 v24, v6

    not-long v5, v3

    and-long v5, v5, v24

    or-long/2addr v5, v9

    and-long/2addr v3, v11

    or-long/2addr v3, v13

    add-long/2addr v5, v3

    sub-long/2addr v5, v15

    add-long v5, v5, v17

    rem-long v19, v19, v22

    xor-long v3, v5, v19

    const v5, 0x74d2c83f

    not-int v6, v5

    const v7, 0x58cd0614

    and-int/2addr v6, v7

    const v7, 0x77261397

    or-int/2addr v6, v7

    const v7, -0x5636abb8

    and-int/2addr v5, v7

    const v7, -0xad9ad91

    or-int/2addr v5, v7

    const v7, -0x78b8e497

    const v9, 0x5768a51

    invoke-static {v6, v5, v7, v9}, Lads_mobile_sdk/p30;->a(IIII)I

    move-result v5

    const v6, 0x5c084fef

    const v7, 0x27a6946f

    rem-int/2addr v6, v7

    xor-int/2addr v5, v6

    move-object/from16 v6, p0

    iget v7, v6, Lads_mobile_sdk/l44;->g:I

    add-int/2addr v5, v7

    if-eqz v7, :cond_e2

    packed-switch v5, :pswitch_data_e4

    goto :goto_b6

    :pswitch_69
    invoke-virtual {v6}, Lads_mobile_sdk/l44;->g()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v4, v3

    :goto_82
    if-ge v2, v4, :cond_8b

    aget-byte v7, v3, v2

    .line 15
    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write(I)V

    add-int/2addr v2, v1

    goto :goto_82

    .line 16
    :cond_8b
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    return-void

    :pswitch_91
    invoke-virtual {v6}, Lads_mobile_sdk/l44;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    new-instance v5, Lads_mobile_sdk/k44;

    invoke-direct {v5, v0, v8}, Lads_mobile_sdk/k44;-><init>(Ljava/io/ByteArrayOutputStream;I)V

    .line 17
    invoke-static {v3, v4, v5, v1}, Lads_mobile_sdk/l34;->a(JLads_mobile_sdk/k44;Z)V

    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/l44;

    invoke-virtual {v2, v0}, Lads_mobile_sdk/l44;->a(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_a6

    :cond_b6
    :goto_b6
    return-void

    :pswitch_b7
    invoke-virtual {v6}, Lads_mobile_sdk/l44;->d()Lads_mobile_sdk/p34;

    move-result-object v5

    .line 19
    iget-object v7, v5, Lads_mobile_sdk/p34;->a:[B

    .line 20
    array-length v7, v7

    int-to-long v7, v7

    mul-long/2addr v7, v3

    .line 21
    new-instance v3, Lads_mobile_sdk/k44;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/k44;-><init>(Ljava/io/ByteArrayOutputStream;I)V

    const/4 v1, 0x1

    .line 22
    invoke-static {v7, v8, v3, v1}, Lads_mobile_sdk/l34;->a(JLads_mobile_sdk/k44;Z)V

    .line 23
    iget-object v1, v5, Lads_mobile_sdk/p34;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_cf
    invoke-virtual {v6}, Lads_mobile_sdk/l44;->c()J

    move-result-wide v2

    new-instance v4, Lads_mobile_sdk/k44;

    invoke-direct {v4, v0, v1}, Lads_mobile_sdk/k44;-><init>(Ljava/io/ByteArrayOutputStream;I)V

    .line 24
    invoke-static {v2, v3, v4, v1}, Lads_mobile_sdk/l34;->a(JLads_mobile_sdk/k44;Z)V

    return-void

    .line 25
    :pswitch_dc
    new-instance v0, Lads_mobile_sdk/i44;

    invoke-direct {v0}, Lads_mobile_sdk/i44;-><init>()V

    throw v0

    :cond_e2
    const/4 v0, 0x0

    throw v0

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_dc
        :pswitch_cf
        :pswitch_b7
        :pswitch_91
        :pswitch_dc
        :pswitch_69
    .end packed-switch

    :array_f6
    .array-data 8
        0x4bb01dcb
        0x61127142
        0x12660971
        0x611cf022
        0xee8c70
        0xc6f1431dL
        0x539ee92b
        0x248ca85d
        0x11bcfe32
    .end array-data
.end method

.method public final b()Ljava/lang/Object;
    .registers 11

    const/16 v0, 0x9

    .line 2
    new-array v0, v0, [I

    fill-array-data v0, :array_36

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

    invoke-virtual {p0, v0}, Lads_mobile_sdk/l44;->a(I)V

    iget-object v0, p0, Lads_mobile_sdk/l44;->a:Ljava/lang/Object;

    return-object v0

    nop

    :array_36
    .array-data 4
        0x1978ebeb
        0x181855e8
        0x4e99519e
        0x34228462
        0x6c76e283
        -0x39d1324d
        0x788bd9b
        0x6ec68664
        0xe0d31ff
    .end array-data
.end method

.method public final c()J
    .registers 11

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_36

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

    invoke-virtual {p0, v0}, Lads_mobile_sdk/l44;->a(I)V

    iget-wide v0, p0, Lads_mobile_sdk/l44;->b:J

    return-wide v0

    nop

    :array_36
    .array-data 4
        0x62234363
        0x2d7da8c8
        0x5b2c3e17
        0x245180f8
        0x53ac6730
        -0x52609bef
        0x1870041
        0x52c77402
        0x2bb5b1c6
    .end array-data
.end method

.method public final d()Lads_mobile_sdk/p34;
    .registers 11

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_36

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

    invoke-virtual {p0, v0}, Lads_mobile_sdk/l44;->a(I)V

    iget-object v0, p0, Lads_mobile_sdk/l44;->d:Lads_mobile_sdk/p34;

    return-object v0

    nop

    :array_36
    .array-data 4
        0x7abf196a
        0x724b30f3
        0x2c12869b
        0x53693260
        0x5b60606
        0x7cd5db0f
        0x30df306
        0x4e42b6a8    # 8.166876E8f
        0x43f8e1ac
    .end array-data
.end method

.method public final e()Ljava/util/List;
    .registers 11

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_36

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

    invoke-virtual {p0, v0}, Lads_mobile_sdk/l44;->a(I)V

    iget-object v0, p0, Lads_mobile_sdk/l44;->e:Ljava/util/List;

    return-object v0

    nop

    :array_36
    .array-data 4
        0x558bb10d
        0x412a149d
        0x3899805a
        0x41221485    # 10.13001f
        0x22548b58
        -0x7a7bde63
        0xfa085b0
        0x70ba39eb
        0x4a8db59c    # 4643534.0f
    .end array-data
.end method

.method public final f()Lads_mobile_sdk/d44;
    .registers 11

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_36

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

    invoke-virtual {p0, v0}, Lads_mobile_sdk/l44;->a(I)V

    iget-object v0, p0, Lads_mobile_sdk/l44;->f:Lads_mobile_sdk/d44;

    return-object v0

    nop

    :array_36
    .array-data 4
        0x28100a9c
        0x6c8aaa87
        0x611d78c9
        0xcc2c206    # 3.0007206E-31f
        0x31695459
        -0x55d11628
        0x2299dcbc
        0x5e1eae31
        0x178e240d
    .end array-data
.end method

.method public final g()D
    .registers 11

    const/16 v0, 0x9

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_36

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

    invoke-virtual {p0, v0}, Lads_mobile_sdk/l44;->a(I)V

    iget-wide v0, p0, Lads_mobile_sdk/l44;->c:D

    return-wide v0

    nop

    :array_36
    .array-data 4
        0x66334873
        0x68d19445
        0xa69000e
        0x62909641
        0x2454aac
        -0x75c7ffb8
        0x238e1f29
        0x6b8b4567
        0x327b23c6
    .end array-data
.end method

.method public final h()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lads_mobile_sdk/l44;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lads_mobile_sdk/l44;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lads_mobile_sdk/l44;->a:Ljava/lang/Object;

    iput-object v0, p0, Lads_mobile_sdk/l44;->d:Lads_mobile_sdk/p34;

    iput-object v0, p0, Lads_mobile_sdk/l44;->e:Ljava/util/List;

    iput-object v0, p0, Lads_mobile_sdk/l44;->f:Lads_mobile_sdk/d44;

    return-void
.end method
