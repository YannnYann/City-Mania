###### Class ads_mobile_sdk.pj3 (ads_mobile_sdk.pj3)
.class public final Lads_mobile_sdk/pj3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static b:Ljavax/crypto/Cipher;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lads_mobile_sdk/pj3;->a:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 13
    sput-object v0, Lads_mobile_sdk/pj3;->b:Ljavax/crypto/Cipher;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lads_mobile_sdk/pj3;->c:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lads_mobile_sdk/pj3;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljavax/crypto/Cipher;
    .registers 2

    .line 55
    sget-object v0, Lads_mobile_sdk/pj3;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_3
    sget-object v1, Lads_mobile_sdk/pj3;->b:Ljavax/crypto/Cipher;

    if-nez v1, :cond_12

    .line 57
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    sput-object v1, Lads_mobile_sdk/pj3;->b:Ljavax/crypto/Cipher;

    goto :goto_12

    :catchall_10
    move-exception v1

    goto :goto_16

    .line 59
    :cond_12
    :goto_12
    sget-object v1, Lads_mobile_sdk/pj3;->b:Ljavax/crypto/Cipher;

    monitor-exit v0

    return-object v1

    .line 60
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_10

    throw v1
.end method

.method public static a(Ljava/lang/String;[B)[B
    .registers 6

    .line 2
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_61

    const/4 v0, 0x0

    .line 8
    :try_start_6
    invoke-static {p0, v0}, Lads_mobile_sdk/hi;->a(Ljava/lang/String;Z)[B

    move-result-object p0

    .line 9
    array-length v0, p0

    if-le v0, v1, :cond_48

    .line 12
    array-length v0, p0

    .line 13
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 16
    new-array v2, v1, [B

    .line 17
    array-length p0, p0

    sub-int/2addr p0, v1

    new-array p0, p0, [B

    .line 18
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 21
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 22
    sget-object p1, Lads_mobile_sdk/pj3;->c:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_2e} :catch_5a
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_2e} :catch_58
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_2e} :catch_56
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_2e} :catch_54
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_2e} :catch_52
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_2e} :catch_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_2e} :catch_4e

    .line 23
    :try_start_2e
    invoke-static {}, Lads_mobile_sdk/pj3;->a()Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 26
    invoke-static {}, Lads_mobile_sdk/pj3;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    monitor-exit p1

    return-object p0

    :catchall_45
    move-exception p0

    .line 27
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_45

    :try_start_47
    throw p0

    .line 28
    :cond_48
    new-instance p0, Lads_mobile_sdk/oj3;

    invoke-direct {p0}, Lads_mobile_sdk/oj3;-><init>()V

    throw p0
    :try_end_4e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_4e} :catch_5a
    .catch Ljava/security/InvalidKeyException; {:try_start_47 .. :try_end_4e} :catch_58
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_47 .. :try_end_4e} :catch_56
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_47 .. :try_end_4e} :catch_54
    .catch Ljavax/crypto/BadPaddingException; {:try_start_47 .. :try_end_4e} :catch_52
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_47 .. :try_end_4e} :catch_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception p0

    goto :goto_5b

    :catch_50
    move-exception p0

    goto :goto_5b

    :catch_52
    move-exception p0

    goto :goto_5b

    :catch_54
    move-exception p0

    goto :goto_5b

    :catch_56
    move-exception p0

    goto :goto_5b

    :catch_58
    move-exception p0

    goto :goto_5b

    :catch_5a
    move-exception p0

    .line 53
    :goto_5b
    new-instance p1, Lads_mobile_sdk/oj3;

    invoke-direct {p1, p0}, Lads_mobile_sdk/oj3;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 54
    :cond_61
    new-instance p0, Lads_mobile_sdk/oj3;

    invoke-direct {p0}, Lads_mobile_sdk/oj3;-><init>()V

    throw p0
.end method

.method public static b(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3

    .line 2
    invoke-static {p0, p1}, Lads_mobile_sdk/pj3;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lads_mobile_sdk/pj3;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method
