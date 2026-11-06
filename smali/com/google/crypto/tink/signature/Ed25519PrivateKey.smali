###### Class com.google.crypto.tink.signature.Ed25519PrivateKey (com.google.crypto.tink.signature.Ed25519PrivateKey)
.class public final Lcom/google/crypto/tink/signature/Ed25519PrivateKey;
.super Lcom/google/crypto/tink/signature/SignaturePrivateKey;
.source "Ed25519PrivateKey.java"


# instance fields
.field public final privateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field public final publicKey:Lcom/google/crypto/tink/signature/Ed25519PublicKey;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/signature/Ed25519PublicKey;Lcom/google/crypto/tink/util/SecretBytes;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateKeyBytes"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePrivateKey;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    .line 37
    iput-object p2, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->privateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/signature/Ed25519PublicKey;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/signature/Ed25519PrivateKey;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateKeyBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_51

    .line 52
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_36

    .line 59
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->getPublicKeyBytes()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/google/crypto/tink/internal/Ed25519;->getHashedScalar([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/internal/Ed25519;->scalarMultWithBaseToBytes([B)[B

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 68
    new-instance v0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;-><init>(Lcom/google/crypto/tink/signature/Ed25519PublicKey;Lcom/google/crypto/tink/util/SecretBytes;)V

    return-object v0

    .line 65
    :cond_2e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Ed25519 keys mismatch"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_36
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ed25519 key must be constructed with key of length 32 bytes, not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_51
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Ed25519 key cannot be constructed without an Ed25519 public key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/Ed25519PublicKey;->getParameters()Lcom/google/crypto/tink/signature/Ed25519Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->privateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/signature/Ed25519PublicKey;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->publicKey:Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/signature/SignaturePublicKey;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;->getPublicKey()Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    move-result-object v0

    return-object v0
.end method
