###### Class com.google.crypto.tink.aead.internal.ChaCha20Poly1305Jce (com.google.crypto.tink.aead.internal.ChaCha20Poly1305Jce)
.class public final Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;
.super Ljava/lang/Object;
.source "ChaCha20Poly1305Jce.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field public static final testCiphertextOfEmpty:[B

.field public static final testKey:[B

.field public static final testNonce:[B


# instance fields
.field public final keySpec:Ljavax/crypto/SecretKey;

.field public final outputPrefix:[B

.field public final provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    .line 59
    const-string v0, "808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f"

    .line 60
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->testKey:[B

    .line 61
    const-string v0, "070000004041424344454647"

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->testNonce:[B

    .line 62
    const-string v0, "a0784d7a4716f3feb4f64e7f4b39bf04"

    .line 63
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->testCiphertextOfEmpty:[B

    return-void
.end method

.method public constructor <init>([B[BLjava/security/Provider;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "key",
            "outputPrefix",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 99
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1e

    .line 102
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "ChaCha20"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->keySpec:Ljavax/crypto/SecretKey;

    .line 103
    iput-object p2, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->outputPrefix:[B

    .line 104
    iput-object p3, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->provider:Ljava/security/Provider;

    return-void

    .line 100
    :cond_1e
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_26
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->getValidCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;

    .line 112
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v2

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v2

    .line 113
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    .line 114
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {v1, v2, p0, v0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;-><init>([B[BLjava/security/Provider;)V

    return-object v1
.end method

.method public static getCipherInstance(Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 137
    const-string v0, "ChaCha20-Poly1305"

    invoke-static {v0, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getValidCipherInstance()Ljavax/crypto/Cipher;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "ChaCha20-Poly1305"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 124
    invoke-static {v0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->isValid(Ljavax/crypto/Cipher;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    .line 125
    :cond_11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "JCE does not support algorithm: ChaCha20-Poly1305"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSupported()Z
    .registers 1

    .line 142
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->getValidCipherInstance()Ljavax/crypto/Cipher;
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    return v0

    :catch_5
    const/4 v0, 0x0

    return v0
.end method

.method public static isValid(Ljavax/crypto/Cipher;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 67
    const-string v0, "ChaCha20"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->testNonce:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 68
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->testKey:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 69
    sget-object v3, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->testCiphertextOfEmpty:[B

    invoke-virtual {p0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 70
    array-length v6, v6

    if-eqz v6, :cond_1f

    return v1

    .line 74
    :cond_1f
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v6, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v5, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 75
    invoke-virtual {p0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 76
    array-length p0, p0
    :try_end_2c
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_2c} :catch_31

    if-eqz p0, :cond_2f

    return v1

    :cond_2f
    const/4 p0, 0x1

    return p0

    :catch_31
    return v1
.end method


# virtual methods
.method public decrypt([B[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_51

    .line 189
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1c

    if-lt v0, v2, :cond_49

    .line 192
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_41

    const/16 v0, 0xc

    .line 196
    new-array v1, v0, [B

    .line 197
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 205
    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->provider:Ljava/security/Provider;

    invoke-static {v1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->getCipherInstance(Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x2

    .line 206
    iget-object v4, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_34

    .line 207
    array-length v2, p2

    if-eqz v2, :cond_34

    .line 208
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 210
    :cond_34
    iget-object p2, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v2, p2

    add-int/2addr v2, v0

    .line 211
    array-length v3, p1

    array-length p2, p2

    sub-int/2addr v3, p2

    sub-int/2addr v3, v0

    .line 212
    invoke-virtual {v1, p1, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 193
    :cond_41
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_49
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_51
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
