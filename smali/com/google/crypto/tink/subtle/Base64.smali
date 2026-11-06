###### Class com.google.crypto.tink.subtle.Base64 (com.google.crypto.tink.subtle.Base64)
.class public final Lcom/google/crypto/tink/subtle/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/Base64$Decoder;,
        Lcom/google/crypto/tink/subtle/Base64$Coder;
    }
.end annotation


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/Base64;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/4 v0, 0x2

    .line 97
    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "flags"
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/google/crypto/tink/subtle/Base64;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Base64;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BI)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "flags"
        }
    .end annotation

    .line 127
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/google/crypto/tink/subtle/Base64;->decode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BIII)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "offset",
            "len",
            "flags"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/google/crypto/tink/subtle/Base64$Decoder;-><init>(I[B)V

    const/4 p3, 0x1

    .line 148
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/crypto/tink/subtle/Base64$Decoder;->process([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 153
    iget p0, v0, Lcom/google/crypto/tink/subtle/Base64$Coder;->op:I

    iget-object p1, v0, Lcom/google/crypto/tink/subtle/Base64$Coder;->output:[B

    array-length p2, p1

    if-ne p0, p2, :cond_1a

    return-object p1

    .line 159
    :cond_1a
    new-array p2, p0, [B

    const/4 p3, 0x0

    .line 160
    invoke-static {p1, p3, p2, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 149
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static urlSafeDecode(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/16 v0, 0xb

    .line 166
    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

###### Class com.google.crypto.tink.subtle.Base64.Coder (com.google.crypto.tink.subtle.Base64$Coder)
.class public abstract Lcom/google/crypto/tink/subtle/Base64$Coder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Coder"
.end annotation


# instance fields
.field public op:I

.field public output:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.crypto.tink.subtle.Base64.Decoder (com.google.crypto.tink.subtle.Base64$Decoder)
.class public Lcom/google/crypto/tink/subtle/Base64$Decoder;
.super Lcom/google/crypto/tink/subtle/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field public static final decode:[I

.field public static final decodeWebsafe:[I


# instance fields
.field public final alphabet:[I

.field public state:I

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x100

    .line 171
    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->decode:[I

    const/16 v0, 0x100

    .line 194
    new-array v0, v0, [I

    fill-array-data v0, :array_218

    sput-object v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->decodeWebsafe:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_218
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "flags",
            "output"
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/Base64$Coder;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/Base64$Coder;->output:[B

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_c

    .line 233
    sget-object p1, Lcom/google/crypto/tink/subtle/Base64$Decoder;->decode:[I

    goto :goto_e

    :cond_c
    sget-object p1, Lcom/google/crypto/tink/subtle/Base64$Decoder;->decodeWebsafe:[I

    :goto_e
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->alphabet:[I

    const/4 p1, 0x0

    .line 234
    iput p1, p0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    .line 235
    iput p1, p0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->value:I

    return-void
.end method


# virtual methods
.method public process([BIIZ)Z
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "offset",
            "len",
            "finish"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 252
    iget v1, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_9

    return v2

    :cond_9
    add-int v4, p3, p2

    .line 265
    iget v5, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->value:I

    .line 267
    iget-object v6, v0, Lcom/google/crypto/tink/subtle/Base64$Coder;->output:[B

    .line 268
    iget-object v7, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->alphabet:[I

    move v9, v2

    move v8, v5

    move v5, v1

    move/from16 v1, p2

    :goto_16
    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v1, v4, :cond_eb

    if-nez v5, :cond_63

    :goto_1e
    add-int/lit8 v14, v1, 0x4

    if-gt v14, v4, :cond_5f

    .line 272
    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    shl-int/lit8 v8, v8, 0x12

    add-int/lit8 v15, v1, 0x1

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v7, v15

    shl-int/lit8 v15, v15, 0xc

    or-int/2addr v8, v15

    add-int/lit8 v15, v1, 0x2

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v7, v15

    shl-int/2addr v15, v3

    or-int/2addr v8, v15

    add-int/lit8 v15, v1, 0x3

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v7, v15

    or-int/2addr v8, v15

    if-ltz v8, :cond_5f

    add-int/lit8 v1, v9, 0x2

    int-to-byte v15, v8

    .line 279
    aput-byte v15, v6, v1

    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v15, v8, 0x8

    int-to-byte v15, v15

    .line 280
    aput-byte v15, v6, v1

    shr-int/lit8 v1, v8, 0x10

    int-to-byte v1, v1

    .line 281
    aput-byte v1, v6, v9

    add-int/lit8 v9, v9, 0x3

    move v1, v14

    goto :goto_1e

    :cond_5f
    if-lt v1, v4, :cond_63

    goto/16 :goto_eb

    :cond_63
    add-int/lit8 v14, v1, 0x1

    .line 295
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v7, v1

    const/4 v15, -0x1

    if-eqz v5, :cond_e0

    if-eq v5, v13, :cond_d8

    const/4 v13, -0x2

    if-eq v5, v12, :cond_be

    const/4 v12, 0x5

    if-eq v5, v10, :cond_8c

    if-eq v5, v11, :cond_81

    if-eq v5, v12, :cond_7c

    goto/16 :goto_e8

    :cond_7c
    if-eq v1, v15, :cond_e8

    .line 366
    iput v3, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    return v2

    :cond_81
    if-ne v1, v13, :cond_87

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_e8

    :cond_87
    if-eq v1, v15, :cond_e8

    .line 359
    iput v3, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    return v2

    :cond_8c
    if-ltz v1, :cond_a7

    shl-int/lit8 v5, v8, 0x6

    or-int/2addr v1, v5

    add-int/lit8 v5, v9, 0x2

    int-to-byte v8, v1

    .line 337
    aput-byte v8, v6, v5

    add-int/lit8 v5, v9, 0x1

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    .line 338
    aput-byte v8, v6, v5

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    .line 339
    aput-byte v5, v6, v9

    add-int/lit8 v9, v9, 0x3

    move v8, v1

    move v5, v2

    goto :goto_e8

    :cond_a7
    if-ne v1, v13, :cond_b9

    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v5, v8, 0x2

    int-to-byte v5, v5

    .line 345
    aput-byte v5, v6, v1

    shr-int/lit8 v1, v8, 0xa

    int-to-byte v1, v1

    .line 346
    aput-byte v1, v6, v9

    add-int/lit8 v9, v9, 0x2

    move v5, v12

    goto :goto_e8

    :cond_b9
    if-eq v1, v15, :cond_e8

    .line 350
    iput v3, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    return v2

    :cond_be
    if-ltz v1, :cond_c7

    :goto_c0
    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v1, v8

    :goto_c3
    add-int/lit8 v5, v5, 0x1

    move v8, v1

    goto :goto_e8

    :cond_c7
    if-ne v1, v13, :cond_d3

    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v5, v8, 0x4

    int-to-byte v5, v5

    .line 325
    aput-byte v5, v6, v9

    move v9, v1

    move v5, v11

    goto :goto_e8

    :cond_d3
    if-eq v1, v15, :cond_e8

    .line 328
    iput v3, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    return v2

    :cond_d8
    if-ltz v1, :cond_db

    goto :goto_c0

    :cond_db
    if-eq v1, v15, :cond_e8

    .line 313
    iput v3, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    return v2

    :cond_e0
    if-ltz v1, :cond_e3

    goto :goto_c3

    :cond_e3
    if-eq v1, v15, :cond_e8

    .line 303
    iput v3, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    return v2

    :cond_e8
    :goto_e8
    move v1, v14

    goto/16 :goto_16

    :cond_eb
    :goto_eb
    if-nez p4, :cond_f4

    .line 378
    iput v5, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    .line 379
    iput v8, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->value:I

    .line 380
    iput v9, v0, Lcom/google/crypto/tink/subtle/Base64$Coder;->op:I

    return v13

    :cond_f4
    if-eq v5, v13, :cond_11c

    if-eq v5, v12, :cond_10f

    if-eq v5, v10, :cond_100

    if-eq v5, v11, :cond_fd

    goto :goto_117

    .line 409
    :cond_fd
    iput v3, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    return v2

    :cond_100
    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v2, v8, 0xa

    int-to-byte v2, v2

    .line 404
    aput-byte v2, v6, v9

    add-int/lit8 v9, v9, 0x2

    shr-int/lit8 v2, v8, 0x2

    int-to-byte v2, v2

    .line 405
    aput-byte v2, v6, v1

    goto :goto_117

    :cond_10f
    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v2, v8, 0x4

    int-to-byte v2, v2

    .line 399
    aput-byte v2, v6, v9

    move v9, v1

    .line 419
    :goto_117
    iput v5, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    .line 420
    iput v9, v0, Lcom/google/crypto/tink/subtle/Base64$Coder;->op:I

    return v13

    .line 394
    :cond_11c
    iput v3, v0, Lcom/google/crypto/tink/subtle/Base64$Decoder;->state:I

    return v2
.end method
