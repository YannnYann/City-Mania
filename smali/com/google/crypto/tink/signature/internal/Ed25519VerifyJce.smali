###### Class com.google.crypto.tink.signature.internal.Ed25519VerifyJce (com.google.crypto.tink.signature.internal.Ed25519VerifyJce)
.class public final Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;
.super Ljava/lang/Object;
.source "Ed25519VerifyJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field public static final ed25519X509Prefix:[B


# instance fields
.field public final messageSuffix:[B

.field public final outputPrefix:[B

.field public final provider:Ljava/security/Provider;

.field public final publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    const/16 v0, 0xc

    .line 51
    new-array v0, v0, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->ed25519X509Prefix:[B

    return-void

    :array_e
    .array-data 1
        0x30t
        0x2at
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x70t
        0x3t
        0x21t
        0x0t
    .end array-data
.end method

.method public constructor <init>([B[B[BLjava/security/Provider;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "publicKey",
            "outputPrefix",
            "messageSuffix",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 125
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p1}, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->x509EncodePublicKey([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 126
    const-string p1, "Ed25519"

    invoke-static {p1, p4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->publicKey:Ljava/security/PublicKey;

    .line 129
    iput-object p2, p0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->outputPrefix:[B

    .line 130
    iput-object p3, p0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->messageSuffix:[B

    .line 131
    iput-object p4, p0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->provider:Ljava/security/Provider;

    return-void

    .line 119
    :cond_27
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use Ed25519 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static conscryptProvider()Ljava/security/Provider;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerOrNull()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 82
    :cond_7
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "Ed25519VerifyJce requires the Conscrypt provider."

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/google/crypto/tink/signature/Ed25519PublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;
    .registers 2
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

    .line 89
    invoke-static {}, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->conscryptProvider()Ljava/security/Provider;

    move-result-object v0

    .line 90
    invoke-static {p0, v0}, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->createWithProvider(Lcom/google/crypto/tink/signature/Ed25519PublicKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object p0

    return-object p0
.end method

.method public static createWithProvider(Lcom/google/crypto/tink/signature/Ed25519PublicKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeyVerify;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 99
    new-instance v0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;

    .line 100
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->getPublicKeyBytes()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v2

    .line 102
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    move-result-object p0

    sget-object v3, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_31

    const/4 p0, 0x1

    .line 103
    new-array p0, p0, [B

    aput-byte v3, p0, v3

    goto :goto_33

    .line 104
    :cond_31
    new-array p0, v3, [B

    :goto_33
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;-><init>([B[B[BLjava/security/Provider;)V

    return-object v0

    .line 97
    :cond_37
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Can not use Ed25519 in FIPS-mode."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x509EncodePublicKey([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 60
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_10

    .line 64
    sget-object v0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->ed25519X509Prefix:[B

    filled-new-array {v0, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p0

    return-object p0

    .line 61
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Given public key\'s length is not %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public verify([B[B)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "signature",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 151
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->outputPrefix:[B

    array-length v2, v1

    const/16 v3, 0x40

    add-int/2addr v2, v3

    if-ne v0, v2, :cond_40

    .line 155
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 158
    const-string v0, "Ed25519"

    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->provider:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 160
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 161
    iget-object p2, p0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->messageSuffix:[B

    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 164
    :try_start_24
    iget-object p2, p0, Lcom/google/crypto/tink/signature/internal/Ed25519VerifyJce;->outputPrefix:[B

    array-length p2, p2

    .line 165
    invoke-virtual {v0, p1, p2, v3}, Ljava/security/Signature;->verify([BII)Z

    move-result p1
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    const/4 p1, 0x0

    :goto_2d
    if-eqz p1, :cond_30

    return-void

    .line 173
    :cond_30
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Signature check failed."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_38
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_40
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Invalid signature length: %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
