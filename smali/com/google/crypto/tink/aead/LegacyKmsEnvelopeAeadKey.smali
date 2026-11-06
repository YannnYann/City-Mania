###### Class com.google.crypto.tink.aead.LegacyKmsEnvelopeAeadKey (com.google.crypto.tink.aead.LegacyKmsEnvelopeAeadKey)
.class public final Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;
.super Lcom/google/crypto/tink/aead/AeadKey;
.source "LegacyKmsEnvelopeAeadKey.java"


# instance fields
.field public final idRequirement:Ljava/lang/Integer;

.field public final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field public final parameters:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AeadKey;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->parameters:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    .line 51
    iput-object p2, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 52
    iput-object p3, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    if-ne v0, v1, :cond_15

    if-nez p1, :cond_d

    .line 64
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    goto :goto_27

    .line 61
    :cond_d
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant NO_PREFIX the value of idRequirement must be null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_15
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    if-ne v0, v1, :cond_35

    if-eqz p1, :cond_2d

    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    .line 74
    :goto_27
    new-instance v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;-><init>(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-object v1

    .line 67
    :cond_2d
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "For given Variant TINK the value of idRequirement must be non-null"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_35
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->getParameters()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/aead/AeadParameters;
    .registers 2

    .line 41
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->getParameters()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->parameters:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    return-object v0
.end method
