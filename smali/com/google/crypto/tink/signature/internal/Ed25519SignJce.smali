###### Class com.google.crypto.tink.signature.internal.Ed25519SignJce (com.google.crypto.tink.signature.internal.Ed25519SignJce)
.class public final Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;
.super Ljava/lang/Object;
.source "Ed25519SignJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeySign;


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field public static final ed25519Pkcs8Prefix:[B


# instance fields
.field public final messageSuffix:[B

.field public final outputPrefix:[B

.field public final privateKey:Ljava/security/PrivateKey;

.field public final provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    const/16 v0, 0x10

    .line 50
    new-array v0, v0, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->ed25519Pkcs8Prefix:[B

    return-void

    :array_e
    .array-data 1
        0x30t
        0x2et
        0x2t
        0x1t
        0x0t
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x70t
        0x4t
        0x22t
        0x4t
        0x20t
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
            "privateKey",
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

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 115
    iput-object p2, p0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->outputPrefix:[B

    .line 116
    iput-object p3, p0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->messageSuffix:[B

    .line 117
    iput-object p4, p0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->provider:Ljava/security/Provider;

    .line 119
    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->pkcs8EncodePrivateKey([B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 120
    const-string p1, "Ed25519"

    invoke-static {p1, p4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 121
    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->privateKey:Ljava/security/PrivateKey;

    return-void

    .line 112
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

    const-string v1, "Ed25519SignJce requires the Conscrypt provider."

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/google/crypto/tink/signature/Ed25519PrivateKey;)Lcom/google/crypto/tink/PublicKeySign;
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
    invoke-static {}, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->conscryptProvider()Ljava/security/Provider;

    move-result-object v0

    .line 90
    invoke-static {p0, v0}, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->createWithProvider(Lcom/google/crypto/tink/signature/Ed25519PrivateKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object p0

    return-object p0
.end method

.method public static createWithProvider(Lcom/google/crypto/tink/signature/Ed25519PrivateKey;Ljava/security/Provider;)Lcom/google/crypto/tink/PublicKeySign;
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
    new-instance v0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;

    .line 97
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->getPrivateKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/SignaturePrivateKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v2

    .line 99
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519Parameters;->getVariant()Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    move-result-object p0

    sget-object v3, Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/Ed25519Parameters$Variant;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    .line 100
    new-array p0, p0, [B

    aput-byte v3, p0, v3

    goto :goto_2f

    .line 101
    :cond_2d
    new-array p0, v3, [B

    :goto_2f
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;-><init>([B[B[BLjava/security/Provider;)V

    return-object v0
.end method

.method public static pkcs8EncodePrivateKey([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
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
    sget-object v0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->ed25519Pkcs8Prefix:[B

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

    const-string v1, "Given private key\'s length is not %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public sign([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 146
    const-string v0, "Ed25519"

    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->provider:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 148
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 149
    iget-object p1, p0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->messageSuffix:[B

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 150
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/Ed25519SignJce;->outputPrefix:[B

    array-length v1, v0

    if-nez v1, :cond_1f

    return-object p1

    .line 154
    :cond_1f
    filled-new-array {v0, p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
