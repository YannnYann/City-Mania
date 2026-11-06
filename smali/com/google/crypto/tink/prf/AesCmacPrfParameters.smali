###### Class com.google.crypto.tink.prf.AesCmacPrfParameters (com.google.crypto.tink.prf.AesCmacPrfParameters)
.class public final Lcom/google/crypto/tink/prf/AesCmacPrfParameters;
.super Lcom/google/crypto/tink/prf/PrfParameters;
.source "AesCmacPrfParameters.java"


# instance fields
.field public final keySizeBytes:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySizeBytes"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/google/crypto/tink/prf/PrfParameters;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->keySizeBytes:I

    return-void
.end method

.method public static create(I)Lcom/google/crypto/tink/prf/AesCmacPrfParameters;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x20

    if-ne p0, v0, :cond_9

    goto :goto_1f

    .line 27
    :cond_9
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    mul-int/lit8 p0, p0, 0x8

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 28
    const-string v1, "Invalid key size %d; only 128-bit and 256-bit are supported"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1f
    :goto_1f
    new-instance v0, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 46
    instance-of v0, p1, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 49
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    .line 50
    invoke-virtual {p1}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->getKeySizeBytes()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->getKeySizeBytes()I

    move-result v0

    if-ne p1, v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    return v1
.end method

.method public getKeySizeBytes()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->keySizeBytes:I

    return v0
.end method

.method public hasIdRequirement()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 55
    iget v0, p0, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->keySizeBytes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AesCmac PRF Parameters ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->keySizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte key)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
