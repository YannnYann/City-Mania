###### Class io.bidmachine.iab.utils.Base32 (io.bidmachine.iab.utils.Base32)
.class public Lio/bidmachine/iab/utils/Base32;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/utils/Base32$b;
    }
.end annotation


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x7b

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/iab/utils/Base32;->a:[B

    return-void

    :array_a
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .registers 4

    .line 0
    const/high16 v0, -0x80000000

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    if-ne p1, p2, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lio/bidmachine/iab/utils/Base32$b;)I
    .registers 3

    .line 110
    iget-object v0, p1, Lio/bidmachine/iab/utils/Base32$b;->b:[B

    if-eqz v0, :cond_a

    .line 111
    iget v0, p1, Lio/bidmachine/iab/utils/Base32$b;->c:I

    iget p1, p1, Lio/bidmachine/iab/utils/Base32$b;->d:I

    sub-int/2addr v0, p1

    return v0

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final a([BIILio/bidmachine/iab/utils/Base32$b;)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    .line 2
    iget-boolean v3, v2, Lio/bidmachine/iab/utils/Base32$b;->e:Z

    if-eqz v3, :cond_c

    goto/16 :goto_199

    :cond_c
    const/4 v3, 0x1

    if-gez v1, :cond_11

    .line 6
    iput-boolean v3, v2, Lio/bidmachine/iab/utils/Base32$b;->e:Z

    :cond_11
    const/4 v4, 0x0

    move v5, v4

    move/from16 v4, p2

    :goto_15
    const/4 v6, 0x7

    if-ge v5, v1, :cond_22

    add-int/lit8 v9, v4, 0x1

    .line 10
    aget-byte v4, p1, v4

    const/16 v10, 0x3d

    if-ne v4, v10, :cond_27

    .line 12
    iput-boolean v3, v2, Lio/bidmachine/iab/utils/Base32$b;->e:Z

    :cond_22
    move v15, v3

    const-wide/16 v18, 0xff

    goto/16 :goto_98

    .line 15
    :cond_27
    invoke-virtual {v0, v6, v2}, Lio/bidmachine/iab/utils/Base32;->a(ILio/bidmachine/iab/utils/Base32$b;)[B

    move-result-object v6

    if-ltz v4, :cond_91

    .line 16
    sget-object v10, Lio/bidmachine/iab/utils/Base32;->a:[B

    array-length v11, v10

    if-ge v4, v11, :cond_91

    .line 17
    aget-byte v4, v10, v4

    if-ltz v4, :cond_91

    .line 19
    iget v10, v2, Lio/bidmachine/iab/utils/Base32$b;->f:I

    add-int/2addr v10, v3

    const/16 v11, 0x8

    rem-int/2addr v10, v11

    iput v10, v2, Lio/bidmachine/iab/utils/Base32$b;->f:I

    .line 20
    iget-wide v12, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    const/4 v14, 0x5

    shl-long/2addr v12, v14

    move v15, v3

    int-to-long v3, v4

    add-long/2addr v12, v3

    iput-wide v12, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    if-nez v10, :cond_92

    .line 22
    iget v3, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    const/16 v10, 0x20

    shr-long v16, v12, v10

    const-wide/16 v18, 0xff

    and-long v7, v16, v18

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    add-int/lit8 v7, v3, 0x2

    .line 23
    iput v7, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    const/16 v8, 0x18

    shr-long v16, v12, v8

    move/from16 p2, v11

    move-wide/from16 v20, v12

    and-long v11, v16, v18

    long-to-int v8, v11

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    add-int/lit8 v4, v3, 0x3

    .line 24
    iput v4, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    const/16 v8, 0x10

    shr-long v10, v20, v8

    and-long v10, v10, v18

    long-to-int v8, v10

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v7, v3, 0x4

    .line 25
    iput v7, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    shr-long v10, v20, p2

    and-long v10, v10, v18

    long-to-int v8, v10

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    add-int/2addr v3, v14

    .line 26
    iput v3, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    and-long v3, v20, v18

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v6, v7

    goto :goto_92

    :cond_91
    move v15, v3

    :cond_92
    :goto_92
    add-int/lit8 v5, v5, 0x1

    move v4, v9

    move v3, v15

    goto/16 :goto_15

    .line 31
    :goto_98
    iget-boolean v1, v2, Lio/bidmachine/iab/utils/Base32$b;->e:Z

    if-eqz v1, :cond_199

    iget v1, v2, Lio/bidmachine/iab/utils/Base32$b;->f:I

    if-lez v1, :cond_199

    .line 32
    invoke-virtual {v0, v6, v2}, Lio/bidmachine/iab/utils/Base32;->a(ILio/bidmachine/iab/utils/Base32$b;)[B

    move-result-object v1

    .line 33
    iget v3, v2, Lio/bidmachine/iab/utils/Base32$b;->f:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v7, 0x2

    packed-switch v3, :pswitch_data_19a

    .line 66
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Impossible modulus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lio/bidmachine/iab/utils/Base32$b;->f:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :pswitch_c5
    iget-wide v6, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    shr-long v8, v6, v5

    iput-wide v8, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    .line 68
    iget v3, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    const/16 v10, 0x1b

    shr-long v10, v6, v10

    and-long v10, v10, v18

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v1, v3

    add-int/lit8 v10, v3, 0x2

    .line 69
    iput v10, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    const/16 v11, 0x13

    shr-long v11, v6, v11

    and-long v11, v11, v18

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v1, v5

    add-int/lit8 v5, v3, 0x3

    .line 70
    iput v5, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    const/16 v11, 0xb

    shr-long/2addr v6, v11

    and-long v6, v6, v18

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v10

    add-int/2addr v3, v4

    .line 71
    iput v3, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    and-long v2, v8, v18

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    return-void

    .line 72
    :pswitch_100
    iget-wide v3, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    const/4 v6, 0x6

    shr-long v6, v3, v6

    iput-wide v6, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    .line 73
    iget v8, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    const/16 v10, 0x16

    shr-long v10, v3, v10

    and-long v10, v10, v18

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    add-int/lit8 v10, v8, 0x2

    .line 74
    iput v10, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    const/16 v11, 0xe

    shr-long/2addr v3, v11

    and-long v3, v3, v18

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v9

    add-int/2addr v8, v5

    .line 75
    iput v8, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    and-long v2, v6, v18

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    return-void

    .line 76
    :pswitch_12e
    iget-wide v3, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    shr-long v6, v3, v15

    iput-wide v6, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    .line 77
    iget v8, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    const/16 v10, 0x11

    shr-long v10, v3, v10

    and-long v10, v10, v18

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    add-int/lit8 v10, v8, 0x2

    .line 78
    iput v10, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    const/16 v11, 0x9

    shr-long/2addr v3, v11

    and-long v3, v3, v18

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v9

    add-int/2addr v8, v5

    .line 79
    iput v8, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    and-long v2, v6, v18

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    return-void

    .line 80
    :pswitch_15b
    iget-wide v5, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    shr-long v3, v5, v4

    iput-wide v3, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    .line 81
    iget v8, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    const/16 v10, 0xc

    shr-long/2addr v5, v10

    and-long v5, v5, v18

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v8

    add-int/2addr v8, v7

    .line 82
    iput v8, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    and-long v2, v3, v18

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    return-void

    .line 83
    :pswitch_17a
    iget v3, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    iget-wide v4, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    shr-long/2addr v4, v6

    and-long v4, v4, v18

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    return-void

    .line 84
    :pswitch_18a
    iget v3, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    iget-wide v4, v2, Lio/bidmachine/iab/utils/Base32$b;->a:J

    shr-long/2addr v4, v7

    and-long v4, v4, v18

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    :cond_199
    :goto_199
    return-void

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_18a
        :pswitch_18a
        :pswitch_17a
        :pswitch_15b
        :pswitch_12e
        :pswitch_100
        :pswitch_c5
    .end packed-switch
.end method

.method public final a([BILio/bidmachine/iab/utils/Base32$b;)V
    .registers 7

    .line 104
    iget-object v0, p3, Lio/bidmachine/iab/utils/Base32$b;->b:[B

    if-eqz v0, :cond_20

    .line 105
    invoke-virtual {p0, p3}, Lio/bidmachine/iab/utils/Base32;->a(Lio/bidmachine/iab/utils/Base32$b;)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 106
    iget-object v0, p3, Lio/bidmachine/iab/utils/Base32$b;->b:[B

    iget v1, p3, Lio/bidmachine/iab/utils/Base32$b;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget p1, p3, Lio/bidmachine/iab/utils/Base32$b;->d:I

    add-int/2addr p1, p2

    iput p1, p3, Lio/bidmachine/iab/utils/Base32$b;->d:I

    .line 108
    iget p2, p3, Lio/bidmachine/iab/utils/Base32$b;->c:I

    if-lt p1, p2, :cond_20

    const/4 p1, 0x0

    .line 109
    iput-object p1, p3, Lio/bidmachine/iab/utils/Base32$b;->b:[B

    :cond_20
    return-void
.end method

.method public final a(ILio/bidmachine/iab/utils/Base32$b;)[B
    .registers 5

    .line 85
    iget-object v0, p2, Lio/bidmachine/iab/utils/Base32$b;->b:[B

    if-nez v0, :cond_14

    const/16 v0, 0x2000

    .line 86
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p2, Lio/bidmachine/iab/utils/Base32$b;->b:[B

    const/4 p1, 0x0

    .line 87
    iput p1, p2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    .line 88
    iput p1, p2, Lio/bidmachine/iab/utils/Base32$b;->d:I

    goto :goto_21

    .line 89
    :cond_14
    iget v1, p2, Lio/bidmachine/iab/utils/Base32$b;->c:I

    add-int/2addr v1, p1

    array-length p1, v0

    sub-int p1, v1, p1

    if-lez p1, :cond_21

    .line 90
    invoke-virtual {p0, p2, v1}, Lio/bidmachine/iab/utils/Base32;->a(Lio/bidmachine/iab/utils/Base32$b;I)[B

    move-result-object p1

    return-object p1

    .line 92
    :cond_21
    :goto_21
    iget-object p1, p2, Lio/bidmachine/iab/utils/Base32$b;->b:[B

    return-object p1
.end method

.method public final a(Lio/bidmachine/iab/utils/Base32$b;I)[B
    .registers 6

    .line 93
    iget-object v0, p1, Lio/bidmachine/iab/utils/Base32$b;->b:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 95
    invoke-virtual {p0, v0, p2}, Lio/bidmachine/iab/utils/Base32;->a(II)I

    move-result v1

    if-gez v1, :cond_c

    move v0, p2

    :cond_c
    const v1, 0x7ffffff7

    .line 98
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/iab/utils/Base32;->a(II)I

    move-result v2

    if-lez v2, :cond_19

    .line 99
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 101
    :cond_19
    new-array p2, v0, [B

    .line 102
    iget-object v0, p1, Lio/bidmachine/iab/utils/Base32$b;->b:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iput-object p2, p1, Lio/bidmachine/iab/utils/Base32$b;->b:[B

    return-object p2
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "encoded"
        }
    .end annotation

    .line 1
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/utils/Base32;->decode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decode([B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "encodedBytes"
        }
    .end annotation

    if-eqz p1, :cond_22

    .line 2
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_22

    .line 5
    :cond_6
    new-instance v0, Lio/bidmachine/iab/utils/Base32$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/Base32$b;-><init>(Lio/bidmachine/iab/utils/Base32$a;)V

    .line 6
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lio/bidmachine/iab/utils/Base32;->a([BIILio/bidmachine/iab/utils/Base32$b;)V

    const/4 v1, -0x1

    .line 7
    invoke-virtual {p0, p1, v2, v1, v0}, Lio/bidmachine/iab/utils/Base32;->a([BIILio/bidmachine/iab/utils/Base32$b;)V

    .line 8
    iget p1, v0, Lio/bidmachine/iab/utils/Base32$b;->c:I

    new-array v1, p1, [B

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lio/bidmachine/iab/utils/Base32;->a([BILio/bidmachine/iab/utils/Base32$b;)V

    .line 10
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    return-object p1

    .line 11
    :cond_22
    :goto_22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

###### Class io.bidmachine.iab.utils.Base32.a (io.bidmachine.iab.utils.Base32$a)
.class public abstract synthetic Lio/bidmachine/iab/utils/Base32$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/Base32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.iab.utils.Base32.b (io.bidmachine.iab.utils.Base32$b)
.class public final Lio/bidmachine/iab/utils/Base32$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/Base32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:[B

.field public c:I

.field public d:I

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/iab/utils/Base32$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/bidmachine/iab/utils/Base32$b;-><init>()V

    return-void
.end method
