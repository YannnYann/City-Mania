###### Class info.flowersoft.theotown.util.LegacySignatureVerifier (info.flowersoft.theotown.util.LegacySignatureVerifier)
.class public Linfo/flowersoft/theotown/util/LegacySignatureVerifier;
.super Ljava/lang/Object;
.source "LegacySignatureVerifier.java"


# instance fields
.field public rawPrivateKey:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Linfo/flowersoft/theotown/util/LegacySignatureVerifier;->rawPrivateKey:[B

    return-void
.end method


# virtual methods
.method public final getCipher()Ljavax/crypto/Cipher;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 60
    const-string v0, "RSA/NONE/PKCS1Padding"

    const-string v1, "RSA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1b

    .line 63
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

    .line 66
    :cond_1a
    throw v2

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public verifySign([B[B)Z
    .registers 8

    .line 33
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_7

    return v1

    .line 35
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/LegacySignatureVerifier;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 36
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    iget-object v4, p0, Linfo/flowersoft/theotown/util/LegacySignatureVerifier;->rawPrivateKey:[B

    invoke-direct {v3, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 37
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 38
    invoke-virtual {v4, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    const/4 v4, 0x2

    .line 39
    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 40
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 41
    array-length v0, p2

    if-eq v0, v2, :cond_28

    return v1

    .line 42
    :cond_28
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_2c} :catch_37
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_7 .. :try_end_2c} :catch_35
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_7 .. :try_end_2c} :catch_33
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_2c} :catch_31
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_2c} :catch_2f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_2c} :catch_2d

    return p1

    :catch_2d
    move-exception p1

    goto :goto_39

    :catch_2f
    move-exception p1

    goto :goto_41

    :catch_31
    move-exception p1

    goto :goto_49

    :catch_33
    move-exception p1

    goto :goto_51

    :catch_35
    move-exception p1

    goto :goto_59

    :catch_37
    move-exception p1

    goto :goto_61

    .line 54
    :goto_39
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, "BadPadding"

    invoke-interface {p2, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_68

    .line 52
    :goto_41
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, "Block"

    invoke-interface {p2, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_68

    .line 50
    :goto_49
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, "Key"

    invoke-interface {p2, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_68

    .line 48
    :goto_51
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, "KeySpec"

    invoke-interface {p2, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_68

    .line 46
    :goto_59
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, "NoPadding"

    invoke-interface {p2, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_68

    .line 44
    :goto_61
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, "Algo"

    invoke-interface {p2, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_68
    return v1
.end method
