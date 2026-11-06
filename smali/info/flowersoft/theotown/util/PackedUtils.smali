###### Class info.flowersoft.theotown.util.PackedUtils (info.flowersoft.theotown.util.PackedUtils)
.class public final Linfo/flowersoft/theotown/util/PackedUtils;
.super Ljava/lang/Object;
.source "PackedUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPackedUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PackedUtils.kt\ninfo/flowersoft/theotown/util/PackedUtils\n+ 2 Hashing.kt\ninfo/flowersoft/theotown/util/Hashing\n*L\n1#1,83:1\n47#1:84\n48#1,5:102\n22#2:85\n74#2,16:86\n22#2:107\n74#2,16:108\n*S KotlinDebug\n*F\n+ 1 PackedUtils.kt\ninfo/flowersoft/theotown/util/PackedUtils\n*L\n41#1:84\n41#1:102,5\n41#1:85\n41#1:86,16\n47#1:107\n47#1:108,16\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/util/PackedUtils;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/PackedUtils;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final readInternal(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    :try_start_1d
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "forName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_31} :catch_41

    .line 85
    :try_start_31
    const-string v2, "md5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const-string v2, "digest(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_40} :catch_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_40} :catch_41

    goto :goto_4a

    :catch_41
    move-exception v1

    goto :goto_54

    :catch_43
    move-exception v1

    .line 88
    :try_start_44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    .line 89
    new-array v1, v1, [B

    .line 75
    :goto_4a
    invoke-static {v1}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bin2hex(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_44 .. :try_end_53} :catch_41

    goto :goto_59

    .line 77
    :goto_54
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const-string v1, ""

    .line 47
    :goto_59
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 48
    new-instance v1, Linfo/flowersoft/theotown/util/FileDecoder;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/FileDecoder;-><init>()V

    .line 49
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "read(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v0, Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_72

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_7a

    :cond_72
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v2

    .line 50
    :goto_7a
    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/util/FileDecoder;->decode(Ljava/io/InputStream;Ljava/lang/String;)Linfo/flowersoft/theotown/util/BytesCallbackFunction;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getPaddingPrefix()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 52
    new-instance v1, Linfo/flowersoft/theotown/util/BoundedXorInputStream;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getMaskBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getLen()I

    move-result p1

    invoke-direct {v1, v0, v2, p1}, Linfo/flowersoft/theotown/util/BoundedXorInputStream;-><init>(Ljava/io/InputStream;[BI)V

    return-object v1
.end method

.method public final readInternalText(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    :try_start_1d
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "forName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_31} :catch_41

    .line 85
    :try_start_31
    const-string v2, "md5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const-string v2, "digest(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_40} :catch_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_40} :catch_41

    goto :goto_4a

    :catch_41
    move-exception v1

    goto :goto_54

    :catch_43
    move-exception v1

    .line 88
    :try_start_44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    .line 89
    new-array v1, v1, [B

    .line 75
    :goto_4a
    invoke-static {v1}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bin2hex(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_44 .. :try_end_53} :catch_41

    goto :goto_59

    .line 77
    :goto_54
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const-string v1, ""

    .line 47
    :goto_59
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 48
    new-instance v1, Linfo/flowersoft/theotown/util/FileDecoder;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/FileDecoder;-><init>()V

    .line 49
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "read(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v0, Ljava/io/BufferedInputStream;

    const/16 v3, 0x2000

    if-eqz v2, :cond_74

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_7a

    :cond_74
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v2

    .line 50
    :goto_7a
    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/util/FileDecoder;->decode(Ljava/io/InputStream;Ljava/lang/String;)Linfo/flowersoft/theotown/util/BytesCallbackFunction;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getPaddingPrefix()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 52
    new-instance v1, Linfo/flowersoft/theotown/util/BoundedXorInputStream;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getMaskBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getLen()I

    move-result p1

    invoke-direct {v1, v0, v2, p1}, Linfo/flowersoft/theotown/util/BoundedXorInputStream;-><init>(Ljava/io/InputStream;[BI)V

    .line 41
    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 42
    :try_start_9f
    invoke-static {p1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_af

    const/4 v1, 0x2

    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object v0

    :catchall_af
    move-exception v0

    :try_start_b0
    throw v0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception v1

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method

.method public final readPackedTextFile(Lcom/badlogic/gdx/files/FileHandle;I)Ljava/lang/String;
    .registers 9

    const-string v0, "): "

    const-string v1, "loadTextFile("

    const-string v2, "file"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v2, Ljava/io/BufferedReader;

    .line 57
    new-instance v3, Ljava/io/InputStreamReader;

    .line 58
    new-instance v4, Linfo/flowersoft/theotown/util/DecInputStream;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Linfo/flowersoft/theotown/util/DecInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 59
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 57
    invoke-direct {v3, v4, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 56
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_29
    if-eqz v3, :cond_41

    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_39

    const/16 v4, 0xa

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    :catch_37
    move-exception p2

    goto :goto_67

    .line 67
    :cond_39
    :goto_39
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_40} :catch_37

    goto :goto_29

    .line 75
    :cond_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_4e

    .line 80
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_4e
    move-exception p2

    .line 77
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 71
    :goto_67
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final readPackedTextStream(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 7

    .line 18
    const-string v0, "loadTextStream: "

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Linfo/flowersoft/theotown/util/DecInputStream;

    invoke-direct {v3, p1, p2}, Linfo/flowersoft/theotown/util/DecInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    :goto_1e
    if-eqz p2, :cond_36

    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2e

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2e

    :catch_2c
    move-exception p1

    goto :goto_4a

    .line 24
    :cond_2e
    :goto_2e
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_35} :catch_2c

    goto :goto_1e

    .line 32
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_43

    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_43
    move-exception p1

    .line 34
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 28
    :goto_4a
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
