###### Class com.google.crypto.tink.aead.internal.XAesGcm (com.google.crypto.tink.aead.internal.XAesGcm)
.class public final Lcom/google/crypto/tink/aead/internal/XAesGcm;
.super Ljava/lang/Object;
.source "XAesGcm.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# instance fields
.field public final cmac:Lcom/google/crypto/tink/prf/Prf;

.field public final outputPrefix:[B

.field public final saltSize:I


# direct methods
.method public constructor <init>([BLcom/google/crypto/tink/util/Bytes;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "key",
            "outputPrefix",
            "saltSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/google/crypto/tink/aead/internal/XAesGcm;->createCmac([B)Lcom/google/crypto/tink/prf/Prf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->cmac:Lcom/google/crypto/tink/prf/Prf;

    .line 69
    invoke-virtual {p2}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->outputPrefix:[B

    .line 70
    iput p3, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->saltSize:I

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/XAesGcmKey;)Lcom/google/crypto/tink/Aead;
    .registers 4
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

    .line 75
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getSaltSizeBytes()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_36

    .line 76
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getSaltSizeBytes()I

    move-result v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_36

    .line 79
    new-instance v0, Lcom/google/crypto/tink/aead/internal/XAesGcm;

    .line 80
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getSaltSizeBytes()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/crypto/tink/aead/internal/XAesGcm;-><init>([BLcom/google/crypto/tink/util/Bytes;I)V

    return-object v0

    .line 77
    :cond_36
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid salt size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createCmac([B)Lcom/google/crypto/tink/prf/Prf;
    .registers 3
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

    .line 60
    array-length v0, p0

    .line 62
    invoke-static {v0}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->create(I)Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/crypto/tink/util/SecretBytes;->copyFrom([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    .line 61
    invoke-static {v0, p0}, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->create(Lcom/google/crypto/tink/prf/AesCmacPrfParameters;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/prf/AesCmacPrfKey;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/PrfAesCmac;->create(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decrypt([B[B)[B
    .registers 7
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

    if-eqz p1, :cond_44

    .line 128
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->outputPrefix:[B

    array-length v2, v1

    iget v3, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->saltSize:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1c

    if-lt v0, v2, :cond_3c

    .line 131
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 134
    iget-object v0, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->outputPrefix:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->saltSize:I

    add-int/2addr v0, v1

    .line 135
    new-instance v1, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->outputPrefix:[B

    array-length v2, v2

    .line 138
    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 137
    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/aead/internal/XAesGcm;->derivePerMessageKey([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;-><init>([B)V

    add-int/lit8 v2, v0, 0xc

    .line 140
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 139
    invoke-virtual {v1, v0, p1, v2, p2}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->decrypt([B[BI[B)[B

    move-result-object p1

    return-object p1

    .line 132
    :cond_34
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_3c
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_44
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final derivePerMessageKey([B)[B
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "salt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 86
    new-array v2, v1, [B

    fill-array-data v2, :array_40

    .line 87
    new-array v3, v1, [B

    fill-array-data v3, :array_4c

    .line 88
    array-length v4, p1

    const/16 v5, 0xc

    if-gt v4, v5, :cond_37

    array-length v4, p1

    const/16 v5, 0x8

    if-lt v4, v5, :cond_37

    .line 91
    array-length v4, p1

    const/4 v5, 0x4

    invoke-static {p1, v0, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    array-length v4, p1

    invoke-static {p1, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x20

    .line 94
    new-array p1, p1, [B

    .line 95
    iget-object v4, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->cmac:Lcom/google/crypto/tink/prf/Prf;

    invoke-interface {v4, v2, v1}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object v2

    invoke-static {v2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->cmac:Lcom/google/crypto/tink/prf/Prf;

    invoke-interface {v2, v3, v1}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object v2

    invoke-static {v2, v0, p1, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 89
    :cond_37
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid salt size"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_40
    .array-data 1
        0x0t
        0x1t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4c
    .array-data 1
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
