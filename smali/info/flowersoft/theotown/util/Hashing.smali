###### Class info.flowersoft.theotown.util.Hashing (info.flowersoft.theotown.util.Hashing)
.class public final Linfo/flowersoft/theotown/util/Hashing;
.super Ljava/lang/Object;
.source "Hashing.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashing.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Hashing.kt\ninfo/flowersoft/theotown/util/Hashing\n*L\n1#1,131:1\n74#1,16:132\n38#1,12:148\n43#1,7:160\n84#1,6:167\n*S KotlinDebug\n*F\n+ 1 Hashing.kt\ninfo/flowersoft/theotown/util/Hashing\n*L\n22#1:132,16\n29#1:148,12\n38#1:160,7\n75#1:167,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/util/Hashing;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/util/Hashing;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/Hashing;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/Hashing;->INSTANCE:Linfo/flowersoft/theotown/util/Hashing;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final hash(I)I
    .registers 3

    .line 0
    shr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    const v0, 0x45d9f3b

    mul-int/2addr p0, v0

    shr-int/lit8 v1, p0, 0x10

    xor-int/2addr p0, v1

    mul-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method public static final hash(II)I
    .registers 2

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr p0, p1

    .line 128
    invoke-static {p0}, Linfo/flowersoft/theotown/util/Hashing;->hash(I)I

    move-result p0

    return p0
.end method

.method public static final internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 75
    :try_start_1e
    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    const-string v0, "forName(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "getBytes(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_32} :catch_53

    .line 85
    :try_start_32
    const-string p1, "md5"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 86
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const-string p1, "digest(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_32 .. :try_end_41} :catch_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_32 .. :try_end_41} :catch_53

    goto :goto_49

    :catch_42
    move-exception p0

    .line 88
    :try_start_43
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 89
    new-array p0, p0, [B

    .line 75
    :goto_49
    invoke-static {p0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "bin2hex(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_52} :catch_53

    goto :goto_59

    :catch_53
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const-string p0, ""

    :goto_59
    return-object p0
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    :try_start_5
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "getBytes(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_19} :catch_3a

    .line 85
    :try_start_19
    const-string v0, "md5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const-string v0, "digest(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_28} :catch_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_28} :catch_3a

    goto :goto_30

    :catch_29
    move-exception p0

    .line 88
    :try_start_2a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 89
    new-array p0, p0, [B

    .line 75
    :goto_30
    invoke-static {p0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object p0

    const-string v0, "bin2hex(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2a .. :try_end_39} :catch_3a

    return-object p0

    :catch_3a
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const-string p0, ""

    return-object p0
.end method

.method public static final md5(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x400

    .line 96
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 98
    :try_start_a
    const-string v2, "md5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 99
    :cond_10
    :goto_10
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    if-eqz v3, :cond_24

    .line 100
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_10

    .line 101
    invoke-virtual {v2, v0, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_10

    :catchall_20
    move-exception v0

    goto :goto_3a

    :catch_22
    move-exception v0

    goto :goto_31

    .line 103
    :cond_24
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v2, "digest(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_2d} :catch_22
    .catchall {:try_start_a .. :try_end_2d} :catchall_20

    .line 108
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    .line 105
    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    new-array v0, v1, [B
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_20

    .line 108
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :goto_3a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static final md5([B)[B
    .registers 2

    .line 85
    :try_start_0
    const-string v0, "md5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const-string v0, "digest(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 89
    new-array p0, p0, [B

    return-object p0
.end method

.method public static final sha(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    :try_start_5
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "getBytes(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    array-length v0, p0
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_1a} :catch_3e

    const/4 v1, 0x0

    .line 44
    :try_start_1b
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 45
    invoke-virtual {v2, p0, v1, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 46
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, "digest(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_2d} :catch_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_2d} :catch_3e

    goto :goto_34

    :catch_2e
    move-exception p0

    .line 48
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    new-array p0, v1, [B

    .line 29
    :goto_34
    invoke-static {p0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object p0

    const-string v0, "bin2hex(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_3d} :catch_3e

    return-object p0

    :catch_3e
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    const-string p0, ""

    return-object p0
.end method

.method public static final sha(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x400

    .line 56
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 58
    :try_start_a
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 59
    :cond_10
    :goto_10
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    if-eqz v3, :cond_24

    .line 60
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_10

    .line 61
    invoke-virtual {v2, v0, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_10

    :catchall_20
    move-exception v0

    goto :goto_3a

    :catch_22
    move-exception v0

    goto :goto_31

    .line 63
    :cond_24
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v2, "digest(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_2d} :catch_22
    .catchall {:try_start_a .. :try_end_2d} :catchall_20

    .line 68
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    .line 65
    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    new-array v0, v1, [B
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_20

    .line 68
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :goto_3a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static final sha([B)[B
    .registers 4

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    array-length v0, p0

    const/4 v1, 0x0

    .line 44
    :try_start_7
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 45
    invoke-virtual {v2, p0, v1, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 46
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, "digest(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    new-array p0, v1, [B

    return-object p0
.end method

.method public static final sha([BII)[B
    .registers 4

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    :try_start_5
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 46
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string p1, "digest(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 49
    new-array p0, p0, [B

    return-object p0
.end method


# virtual methods
.method public final md5(Ljava/io/File;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method
