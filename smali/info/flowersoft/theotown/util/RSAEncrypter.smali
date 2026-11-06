###### Class info.flowersoft.theotown.util.RSAEncrypter (info.flowersoft.theotown.util.RSAEncrypter)
.class public final Linfo/flowersoft/theotown/util/RSAEncrypter;
.super Ljava/lang/Object;
.source "RSAEncrypter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCipher()Ljavax/crypto/Cipher;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 36
    const-string v0, "RSA/NONE/PKCS1Padding"

    const-string v1, "RSA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1b

    .line 39
    :try_start_c
    aget-object v2, v0, v1

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v2

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1a

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 42
    :cond_1a
    throw v2

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final publicEncrypt([BLjava/lang/String;)[B
    .registers 4

    .line 22
    :try_start_0
    invoke-static {}, Linfo/flowersoft/theotown/util/RSAEncrypter;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 24
    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 27
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
