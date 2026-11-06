###### Class com.google.crypto.tink.aead.internal.XChaCha20Poly1305Jce (com.google.crypto.tink.aead.internal.XChaCha20Poly1305Jce)
.class public final Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;
.super Ljava/lang/Object;
.source "XChaCha20Poly1305Jce.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;


# instance fields
.field public final key:[B

.field public final outputPrefix:[B

.field public final provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 69
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_17

    .line 72
    iput-object p1, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->key:[B

    .line 73
    iput-object p2, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->outputPrefix:[B

    .line 74
    iput-object p3, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->provider:Ljava/security/Provider;

    return-void

    .line 70
    :cond_17
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1f
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;
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

    .line 80
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->getValidCipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;

    .line 82
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v2

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v2

    .line 83
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    .line 84
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {v1, v2, p0, v0}, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;-><init>([B[BLjava/security/Provider;)V

    return-object v1
.end method

.method public static getChaCha20Nonce([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonce"
        }
    .end annotation

    const/16 v0, 0xc

    .line 162
    new-array v0, v0, [B

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/16 v3, 0x10

    .line 163
    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static isSupported()Z
    .registers 1

    .line 88
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->isSupported()Z

    move-result v0

    return v0
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

    if-eqz p1, :cond_60

    .line 133
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v2, v1

    add-int/lit8 v2, v2, 0x28

    if-lt v0, v2, :cond_58

    .line 136
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_50

    const/16 v0, 0x18

    .line 139
    new-array v1, v0, [B

    .line 140
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->key:[B

    invoke-static {v2, v1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->hChaCha20([B[B)[B

    move-result-object v2

    .line 147
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "ChaCha20"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 148
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v1}, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->getChaCha20Nonce([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 149
    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->provider:Ljava/security/Provider;

    invoke-static {v1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->getCipherInstance(Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v4, 0x2

    .line 150
    invoke-virtual {v1, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_43

    .line 151
    array-length v2, p2

    if-eqz v2, :cond_43

    .line 152
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 154
    :cond_43
    iget-object p2, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v2, p2

    add-int/2addr v2, v0

    .line 155
    array-length v3, p1

    array-length p2, p2

    sub-int/2addr v3, p2

    sub-int/2addr v3, v0

    .line 156
    invoke-virtual {v1, p1, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 137
    :cond_50
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_58
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_60
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
