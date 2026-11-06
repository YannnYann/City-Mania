###### Class com.google.crypto.tink.prf.internal.PrfAesCmac (com.google.crypto.tink.prf.internal.PrfAesCmac)
.class public final Lcom/google/crypto/tink/prf/internal/PrfAesCmac;
.super Ljava/lang/Object;
.source "PrfAesCmac.java"

# interfaces
.implements Lcom/google/crypto/tink/prf/Prf;


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field public static final localAesCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final keySpec:Ljavax/crypto/SecretKey;

.field public subKey1:[B

.field public subKey2:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    .line 54
    new-instance v0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/prf/internal/PrfAesCmac$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->localAesCipher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    array-length v0, p1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 76
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->keySpec:Ljavax/crypto/SecretKey;

    .line 77
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->generateSubKeys()V

    return-void
.end method

.method public static calcN(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataLength"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    sub-int/2addr p0, v0

    .line 89
    div-int/lit8 p0, p0, 0x10

    add-int/2addr p0, v0

    return p0
.end method

.method public static create(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;
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

    .line 81
    new-instance v0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;

    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;-><init>([B)V

    return-object v0
.end method

.method public static instance()Ljavax/crypto/Cipher;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 70
    sget-object v0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->localAesCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0

    .line 68
    :cond_11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use AES-CMAC in FIPS-mode."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static xorBlock([B[BI[B)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "offsetY",
            "output"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_12

    .line 94
    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method


# virtual methods
.method public compute([BI)[B
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "data",
            "outputLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-gt p2, v0, :cond_6b

    .line 105
    invoke-static {}, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->instance()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->keySpec:Ljavax/crypto/SecretKey;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 111
    array-length v2, p1

    invoke-static {v2}, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->calcN(I)I

    move-result v2

    mul-int/lit8 v4, v2, 0x10

    .line 114
    array-length v5, p1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_23

    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v4, v0

    .line 119
    iget-object v5, p0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->subKey1:[B

    invoke-static {p1, v4, v5, v6, v0}, Lcom/google/crypto/tink/subtle/Bytes;->xor([BI[BII)[B

    move-result-object v4

    goto :goto_35

    :cond_23
    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v4, v0

    .line 121
    array-length v5, p1

    .line 123
    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/mac/internal/AesUtil;->cmacPad([B)[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->subKey2:[B

    .line 122
    invoke-static {v4, v5}, Lcom/google/crypto/tink/subtle/Bytes;->xor([B[B)[B

    move-result-object v4

    .line 128
    :goto_35
    new-array v5, v0, [B

    .line 131
    new-array v7, v0, [B

    move v8, v6

    :goto_3a
    add-int/lit8 v9, v2, -0x1

    .line 132
    const-string v10, "Cipher didn\'t write full block"

    if-ge v8, v9, :cond_54

    mul-int/lit8 v9, v8, 0x10

    .line 133
    invoke-static {v5, p1, v9, v7}, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->xorBlock([B[BI[B)V

    .line 134
    invoke-virtual {v1, v7, v6, v0, v5}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v9

    if-ne v9, v0, :cond_4e

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    .line 136
    :cond_4e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_54
    invoke-static {v5, v4, v6, v7}, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->xorBlock([B[BI[B)V

    .line 142
    invoke-virtual {v1, v7, v6, v0, v5}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result p1

    if-ne p1, v0, :cond_65

    if-ne v0, p2, :cond_60

    return-object v5

    .line 149
    :cond_60
    invoke-static {v5, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 144
    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_6b
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "outputLength too large, max is 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateSubKeys()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 154
    invoke-static {}, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->instance()Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 155
    iget-object v2, p0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 v1, 0x10

    .line 156
    new-array v1, v1, [B

    .line 157
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/google/crypto/tink/mac/internal/AesUtil;->dbl([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->subKey1:[B

    .line 159
    invoke-static {v0}, Lcom/google/crypto/tink/mac/internal/AesUtil;->dbl([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/prf/internal/PrfAesCmac;->subKey2:[B

    return-void
.end method

###### Class com.google.crypto.tink.prf.internal.PrfAesCmac.AnonymousClass1 (com.google.crypto.tink.prf.internal.PrfAesCmac$1)
.class public Lcom/google/crypto/tink/prf/internal/PrfAesCmac$1;
.super Ljava/lang/ThreadLocal;
.source "PrfAesCmac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/prf/internal/PrfAesCmac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljavax/crypto/Cipher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/internal/PrfAesCmac$1;->initialValue()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljavax/crypto/Cipher;
    .registers 3

    .line 59
    :try_start_0
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "AES/ECB/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;
    :try_end_a
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
