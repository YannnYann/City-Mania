###### Class com.google.crypto.tink.prf.AesCmacPrfKey (com.google.crypto.tink.prf.AesCmacPrfKey)
.class public final Lcom/google/crypto/tink/prf/AesCmacPrfKey;
.super Lcom/google/crypto/tink/prf/PrfKey;
.source "AesCmacPrfKey.java"


# instance fields
.field public final keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field public final parameters:Lcom/google/crypto/tink/prf/AesCmacPrfParameters;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/prf/AesCmacPrfParameters;Lcom/google/crypto/tink/util/SecretBytes;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "keyBytes"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/google/crypto/tink/prf/PrfKey;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->parameters:Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    .line 35
    iput-object p2, p0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/prf/AesCmacPrfParameters;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/prf/AesCmacPrfKey;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "keyBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->getKeySizeBytes()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 49
    new-instance v0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/prf/AesCmacPrfKey;-><init>(Lcom/google/crypto/tink/prf/AesCmacPrfParameters;Lcom/google/crypto/tink/util/SecretBytes;)V

    return-object v0

    .line 47
    :cond_10
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Key size mismatch"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->getParameters()Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/prf/AesCmacPrfParameters;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->parameters:Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    return-object v0
.end method
