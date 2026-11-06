###### Class com.badlogic.gdx.utils.Base64Coder (com.badlogic.gdx.utils.Base64Coder)
.class public Lcom/badlogic/gdx/utils/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Base64Coder$CharMap;
    }
.end annotation


# static fields
.field public static final regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

.field public static final urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 72
    new-instance v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    const/16 v1, 0x2b

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;-><init>(CC)V

    sput-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    new-instance v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;-><init>(CC)V

    sput-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 1

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([C)[B
    .registers 4

    .line 259
    array-length v0, p0

    sget-object v1, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([CII[B)[B
    .registers 14

    .line 274
    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_8a

    :goto_4
    if-lez p2, :cond_13

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 277
    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_13

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_13
    mul-int/lit8 v0, p2, 0x3

    .line 280
    div-int/lit8 v0, v0, 0x4

    .line 281
    new-array v1, v0, [B

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_1b
    if-ge p1, p2, :cond_89

    add-int/lit8 v3, p1, 0x1

    .line 286
    aget-char v4, p0, p1

    add-int/lit8 v5, p1, 0x2

    .line 287
    aget-char v3, p0, v3

    const/16 v6, 0x41

    if-ge v5, p2, :cond_2e

    add-int/lit8 p1, p1, 0x3

    .line 288
    aget-char v5, p0, v5

    goto :goto_30

    :cond_2e
    move p1, v5

    move v5, v6

    :goto_30
    if-ge p1, p2, :cond_39

    add-int/lit8 v6, p1, 0x1

    .line 289
    aget-char p1, p0, p1

    move v9, v6

    move v6, p1

    move p1, v9

    .line 290
    :cond_39
    const-string v7, "Illegal character in Base64 encoded data."

    const/16 v8, 0x7f

    if-gt v4, v8, :cond_83

    if-gt v3, v8, :cond_83

    if-gt v5, v8, :cond_83

    if-gt v6, v8, :cond_83

    .line 293
    aget-byte v4, p3, v4

    .line 294
    aget-byte v3, p3, v3

    .line 295
    aget-byte v5, p3, v5

    .line 296
    aget-byte v6, p3, v6

    if-ltz v4, :cond_7d

    if-ltz v3, :cond_7d

    if-ltz v5, :cond_7d

    if-ltz v6, :cond_7d

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v7, v3, 0x4

    or-int/2addr v4, v7

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v7, v5, 0x2

    or-int/2addr v3, v7

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    int-to-byte v4, v4

    .line 303
    aput-byte v4, v1, v2

    if-ge v6, v0, :cond_73

    add-int/lit8 v2, v2, 0x2

    int-to-byte v3, v3

    .line 305
    aput-byte v3, v1, v6

    move v6, v2

    :cond_73
    if-ge v6, v0, :cond_7b

    add-int/lit8 v2, v6, 0x1

    int-to-byte v3, v5

    .line 308
    aput-byte v3, v1, v6

    goto :goto_1b

    :cond_7b
    move v2, v6

    goto :goto_1b

    .line 298
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 291
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    return-object v1

    .line 275
    :cond_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decode([C[B)[B
    .registers 4

    .line 247
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([CII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 196
    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 200
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    if-eqz p1, :cond_d

    sget-object p1, Lcom/badlogic/gdx/utils/Base64Coder;->urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    :goto_a
    iget-object p1, p1, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    goto :goto_10

    :cond_d
    sget-object p1, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    goto :goto_a

    :goto_10
    invoke-static {p0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode([C[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .registers 2

    .line 137
    sget-object v0, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static encode([BII[C)[C
    .registers 13

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    .line 167
    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p2, 0x2

    .line 168
    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 169
    new-array v1, v1, [C

    add-int/2addr p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge p1, p2, :cond_63

    add-int/lit8 v4, p1, 0x1

    .line 174
    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xff

    if-ge v4, p2, :cond_22

    add-int/lit8 p1, p1, 0x2

    .line 175
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    goto :goto_24

    :cond_22
    move p1, v4

    move v4, v2

    :goto_24
    if-ge p1, p2, :cond_2d

    add-int/lit8 v7, p1, 0x1

    .line 176
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    goto :goto_2f

    :cond_2d
    move v7, p1

    move p1, v2

    :goto_2f
    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    ushr-int/lit8 v8, v4, 0x4

    or-int/2addr v5, v8

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v8, p1, 0x6

    or-int/2addr v4, v8

    and-int/lit8 p1, p1, 0x3f

    add-int/lit8 v8, v3, 0x1

    .line 181
    aget-char v6, p3, v6

    aput-char v6, v1, v3

    add-int/lit8 v6, v3, 0x2

    .line 182
    aget-char v5, p3, v5

    aput-char v5, v1, v8

    const/16 v5, 0x3d

    if-ge v6, v0, :cond_54

    .line 183
    aget-char v4, p3, v4

    goto :goto_55

    :cond_54
    move v4, v5

    :goto_55
    aput-char v4, v1, v6

    add-int/lit8 v4, v3, 0x3

    if-ge v4, v0, :cond_5d

    .line 185
    aget-char v5, p3, p1

    :cond_5d
    aput-char v5, v1, v4

    add-int/lit8 v3, v3, 0x4

    move p1, v7

    goto :goto_11

    :cond_63
    return-object v1
.end method

.method public static encode([B[C)[C
    .registers 4

    .line 145
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BII[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 78
    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 88
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p1, :cond_f

    sget-object p1, Lcom/badlogic/gdx/utils/Base64Coder;->urlsafeMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    :goto_c
    iget-object p1, p1, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    goto :goto_12

    :cond_f
    sget-object p1, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    goto :goto_c

    :goto_12
    invoke-static {p0, p1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B[C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v0

    .line 91
    :catch_1a
    const-string p0, ""

    return-object p0
.end method

###### Class com.badlogic.gdx.utils.Base64Coder.CharMap (com.badlogic.gdx.utils.Base64Coder$CharMap)
.class public Lcom/badlogic/gdx/utils/Base64Coder$CharMap;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Base64Coder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharMap"
.end annotation


# instance fields
.field public final decodingMap:[B

.field public final encodingMap:[C


# direct methods
.method public constructor <init>(CC)V
    .registers 9

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 36
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    const/16 v1, 0x80

    .line 37
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    const/4 v1, 0x0

    const/16 v2, 0x41

    move v3, v1

    :goto_13
    const/16 v4, 0x5a

    if-gt v2, v4, :cond_22

    .line 42
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_13

    :cond_22
    const/16 v2, 0x61

    :goto_24
    const/16 v4, 0x7a

    if-gt v2, v4, :cond_33

    .line 45
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_24

    :cond_33
    const/16 v2, 0x30

    :goto_35
    const/16 v4, 0x39

    if-gt v2, v4, :cond_44

    .line 48
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_35

    .line 50
    :cond_44
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v4, v3, 0x1

    aput-char p1, v2, v3

    .line 51
    aput-char p2, v2, v4

    move p1, v1

    .line 52
    :goto_4d
    iget-object p2, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    array-length v2, p2

    if-ge p1, v2, :cond_58

    const/4 v2, -0x1

    .line 53
    aput-byte v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_58
    :goto_58
    if-ge v1, v0, :cond_66

    .line 56
    iget-object p1, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    iget-object p2, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    aget-char p2, p2, v1

    int-to-byte v2, v1

    aput-byte v2, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_66
    return-void
.end method
