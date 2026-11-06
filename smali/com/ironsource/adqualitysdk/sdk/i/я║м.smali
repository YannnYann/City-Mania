###### Class com.ironsource.adqualitysdk.sdk.i.C0948 (com.ironsource.adqualitysdk.sdk.i.ﺬ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﱡ:[B

.field public static final ﺙ:[B

.field public static final ﻏ:Ljava/lang/String;

.field public static final ﻐ:Ljava/lang/String;

.field public static final ﻛ:Ljava/lang/String;

.field public static final ｋ:Ljava/lang/String;

.field public static final ﾇ:Ljava/lang/String;


# instance fields
.field public final ﾒ:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "vl0=\n"

    const-string v1, "+x7TmdEHEeg=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾇ:Ljava/lang/String;

    const-string v0, "4pOEhw==\n"

    const-string v1, "p9DAz4r70fY=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ｋ:Ljava/lang/String;

    const-string v0, "oWKmo67V28/cOQ==\n"

    const-string v1, "6Q/HwP2dmv0=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﻛ:Ljava/lang/String;

    const-string v0, "d9Y596eeaoh4/Dq5hLlOyVE=\n"

    const-string v1, "NpNq2ODdJ6c=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﻐ:Ljava/lang/String;

    const-string v0, "hYKfO0kZuFXH\n"

    const-string v1, "9uf8S3ssjic=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﻏ:Ljava/lang/String;

    .line 1
    const-string v0, "4kOUV2G1p5P2R5FC\n"

    const-string v1, "twLQBkzDlr4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﺙ:[B

    .line 2
    const-string v0, "kSbtwDvJNf+WIvrB\n"

    const-string v2, "xGepkRa/BNI=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﱡ:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ:Ljava/security/SecureRandom;

    return-void
.end method

.method public static ﾒ([BLjava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPublicKey;
    .registers 7

    .line 98
    array-length v0, p0

    const/16 v1, 0x41

    if-ne v0, v1, :cond_37

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_37

    .line 101
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    const/16 v3, 0x21

    invoke-static {p0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 102
    new-instance v4, Ljava/math/BigInteger;

    invoke-static {p0, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v4, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 103
    new-instance p0, Ljava/security/spec/ECPoint;

    invoke-direct {p0, v0, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 104
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v0, p0, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 105
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾇ:Ljava/lang/String;

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 106
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    return-object p0

    .line 107
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "q9R7ghKvG5mX1G6ME7YN3JHJaIdegzyZktVkjQo=\n"

    const-string v0, "4roN437Gf7k=\n"

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ﾒ(Ljava/math/BigInteger;)[B
    .registers 5

    .line 108
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 109
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    return-object p0

    .line 111
    :cond_a
    array-length v0, p0

    if-le v0, v1, :cond_15

    .line 113
    array-length v0, p0

    sub-int/2addr v0, v1

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 115
    :cond_15
    new-array v0, v1, [B

    .line 116
    array-length v2, p0

    sub-int/2addr v1, v2

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final ﾇ([B[B[B[B)Lcom/ironsource/adqualitysdk/sdk/i/κ;
    .registers 9

    .line 1
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_62

    .line 4
    array-length v0, p2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_44

    .line 9
    :try_start_a
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﻐ:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 10
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "Y1Dl\n"

    const-string v3, "IhW2ehg8PyU=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 11
    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {p1, v2, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 p2, 0x1

    .line 13
    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 14
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 16
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 17
    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/κ;

    invoke-direct {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/κ;-><init>([B)V
    :try_end_34
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_34} :catch_35

    return-object p2

    :catch_35
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "p1AXQBpu9lSDeycfJF3PHYl7ZAs8RNcRgg==\n"

    const-string p4, "5hVEbV0tu3Q=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 20
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "fHmOjLIv11ZeGq7ZrzSZV14a8p78IsBBXknvjLsvzRU=\n"

    const-string v0, "OzrDrNxAuTU=\n"

    invoke-static {p4, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_62
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "L36Vwp8EFq4DTrWW1AMKrl0J5oCNFQr9QhuhjYBB\n"

    const-string v0, "bjvG4vRhb44=\n"

    invoke-static {p4, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ε;
    .registers 8

    .line 1
    :try_start_0
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾇ:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﻏ:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 6
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 8
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ(Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 9
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ(Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/16 v3, 0x41

    .line 12
    new-array v3, v3, [B

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 13
    aput-byte v4, v3, v5

    const/4 v4, 0x1

    const/16 v6, 0x20

    .line 14
    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x21

    .line 15
    invoke-static {v0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ε;

    invoke-direct {v0, v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ε;-><init>([B[B)V
    :try_end_56
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_56} :catch_57

    return-object v0

    :catch_57
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "BQyMB1v2bjYsTYIOUPc8IzcIxQ5O+isvJh+EBx75KztjHYQCTA==\n"

    const-string v3, "Q23laz6STkI=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final ﾒ([B[B)[B
    .registers 11

    .line 19
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_b9

    .line 23
    array-length v0, p2

    const/16 v2, 0x41

    if-ne v0, v2, :cond_9b

    const/4 v0, 0x0

    .line 27
    aget-byte v3, p2, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8d

    .line 28
    :try_start_10
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾇ:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v5

    .line 29
    new-instance v6, Ljava/security/spec/ECGenParameterSpec;

    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﻏ:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 30
    invoke-virtual {v5}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    .line 32
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 33
    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v6, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 34
    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 35
    invoke-virtual {v3, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 36
    invoke-static {p2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﾒ([BLjava/security/spec/ECParameterSpec;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p2

    .line 38
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ｋ:Ljava/lang/String;

    invoke-static {v3}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v3

    .line 39
    invoke-virtual {v3, p1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 40
    invoke-virtual {v3, p2, v7}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 42
    invoke-virtual {v3}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    .line 44
    array-length p2, p1

    if-ne p2, v1, :cond_5b

    return-object p1

    .line 46
    :cond_5b
    array-length p2, p1

    if-ge p2, v1, :cond_69

    .line 47
    new-array p2, v1, [B

    .line 48
    array-length v2, p1

    sub-int/2addr v1, v2

    array-length v2, p1

    invoke-static {p1, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :catch_67
    move-exception p1

    goto :goto_7f

    .line 52
    :cond_69
    array-length p2, p1

    if-ne p2, v2, :cond_77

    aget-byte p2, p1, v0

    if-ne p2, v4, :cond_77

    const/16 p2, 0x21

    .line 53
    invoke-static {p1, v7, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 55
    :cond_77
    array-length p2, p1

    sub-int/2addr p2, v1

    array-length v0, p1

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1
    :try_end_7e
    .catch Ljava/security/GeneralSecurityException; {:try_start_10 .. :try_end_7e} :catch_67

    return-object p1

    .line 59
    :goto_7f
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "d+HNkX9T4D4Sw+6rOl3oIlzWqb8+UekiVg==\n"

    const-string v1, "MqKJ2V84hUc=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 60
    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rdVq4HXNjV+Y2Sjhad3ZFI7Uaf5ojtpdicgovGSemQ==\n"

    const-string v0, "/aAIjByurTQ=\n"

    invoke-static {p2, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_9b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mpwkiZXpou+vkGaIifn2pKiMZtPJquD9vow1xdT/7OelhDaXmfnx4a7AasWb5fak\n"

    const-string v2, "yulG5fyKgoQ=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_b9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZGGhpfvlaZpfdrHz9+R/zhRxrfOpoyzYTWetoLaxa9VAMw==\n"

    const-string v2, "NBPI05qRDLo=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ﾒ([B[B[B)[B
    .registers 8

    .line 88
    :try_start_0
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﻛ:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 89
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 90
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    .line 91
    array-length p2, p3

    const/4 v1, 0x1

    add-int/2addr p2, v1

    new-array p2, p2, [B

    .line 92
    array-length v2, p3

    const/4 v3, 0x0

    invoke-static {p3, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    array-length p3, p3

    aput-byte v1, p2, p3

    .line 94
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p3

    .line 95
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p3, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 96
    invoke-virtual {p3, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_2f
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_2f} :catch_30

    return-object p1

    :catch_30
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "OArevhhK2DpQJf+KUVfcNxku9NheQNQvFSU=\n"

    const-string v0, "cEGa+DghvUM=\n"

    invoke-static {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final ﾒ([B[B[B[B)[B
    .registers 9

    .line 63
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_70

    .line 66
    array-length v0, p2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_52

    .line 69
    array-length v0, p3

    const/16 v1, 0x10

    if-lt v0, v1, :cond_44

    .line 75
    :try_start_f
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺬ;->ﻐ:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 76
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "zzCk\n"

    const-string v3, "jnX3J6iv3t4=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 77
    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {p1, v2, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 p2, 0x2

    .line 79
    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 80
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 82
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_34
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_34} :catch_35

    return-object p1

    :catch_35
    move-exception p1

    .line 84
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "ev/kEG5r2mVf39RPUFjjLFTUl1tIQfsgXw==\n"

    const-string p4, "O7q3PSkol0U=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 85
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "N5dynmr0yWYMiiKBZvLVIwCfZdZi8853VJxn1m7ynW8Rn3GCL7eLIxaHdpN8\n"

    const-string p3, "dP4C9g+GvQM=\n"

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "6CsLODDFdoHKSCttLd44gMpIdyp+yGGWyhtqODnFbMI=\n"

    const-string v0, "r2hGGF6qGOI=\n"

    invoke-static {p4, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_70
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "s+biSNet+rmf1sIcnKrmucGRkQrFvObq3oPWB8jo\n"

    const-string v0, "8qOxaLzIg5k=\n"

    invoke-static {p4, v0}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
