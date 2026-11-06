###### Class com.google.crypto.tink.mac.AesCmacKey (com.google.crypto.tink.mac.AesCmacKey)
.class public final Lcom/google/crypto/tink/mac/AesCmacKey;
.super Lcom/google/crypto/tink/mac/MacKey;
.source "AesCmacKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/mac/AesCmacKey$Builder;
    }
.end annotation


# instance fields
.field public final aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field public final idRequirement:Ljava/lang/Integer;

.field public final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field public final parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/mac/AesCmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "aesKeyBytes",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/MacKey;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/crypto/tink/mac/AesCmacKey;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    .line 116
    iput-object p2, p0, Lcom/google/crypto/tink/mac/AesCmacKey;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 117
    iput-object p3, p0, Lcom/google/crypto/tink/mac/AesCmacKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 118
    iput-object p4, p0, Lcom/google/crypto/tink/mac/AesCmacKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/mac/AesCmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/mac/AesCmacKey$1;)V
    .registers 6

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/mac/AesCmacKey;-><init>(Lcom/google/crypto/tink/mac/AesCmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/mac/AesCmacKey$Builder;
    .registers 2

    .line 127
    new-instance v0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;-><init>(Lcom/google/crypto/tink/mac/AesCmacKey$1;)V

    return-object v0
.end method


# virtual methods
.method public getAesKey()Lcom/google/crypto/tink/util/SecretBytes;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacKey;->getParameters()Lcom/google/crypto/tink/mac/AesCmacParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/mac/AesCmacParameters;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/mac/MacParameters;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacKey;->getParameters()Lcom/google/crypto/tink/mac/AesCmacParameters;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.mac.AesCmacKey.AnonymousClass1 (com.google.crypto.tink.mac.AesCmacKey$1)
.class public synthetic Lcom/google/crypto/tink/mac/AesCmacKey$1;
.super Ljava/lang/Object;
.source "AesCmacKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/AesCmacKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.mac.AesCmacKey.Builder (com.google.crypto.tink.mac.AesCmacKey$Builder)
.class public Lcom/google/crypto/tink/mac/AesCmacKey$Builder;
.super Ljava/lang/Object;
.source "AesCmacKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/AesCmacKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field public idRequirement:Ljava/lang/Integer;

.field public parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    .line 49
    iput-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 50
    iput-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/mac/AesCmacKey$1;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/mac/AesCmacKey;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    if-eqz v0, :cond_57

    iget-object v1, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    if-eqz v1, :cond_57

    .line 92
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getKeySizeBytes()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v1

    if-ne v0, v1, :cond_4f

    .line 96
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    goto :goto_29

    .line 97
    :cond_21
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-nez v0, :cond_36

    goto :goto_3e

    .line 102
    :cond_36
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 106
    new-instance v2, Lcom/google/crypto/tink/mac/AesCmacKey;

    iget-object v3, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v6, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/mac/AesCmacKey;-><init>(Lcom/google/crypto/tink/mac/AesCmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/mac/AesCmacKey$1;)V

    return-object v2

    .line 93
    :cond_4f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_57
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters and/or key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-ne v0, v1, :cond_d

    .line 74
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object v0

    .line 76
    :cond_d
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->LEGACY:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    .line 77
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-ne v0, v1, :cond_22

    goto :goto_54

    .line 80
    :cond_22
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    if-ne v0, v1, :cond_37

    .line 81
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 83
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown AesCmacParametersParameters.Variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    .line 84
    invoke-virtual {v2}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getVariant()Lcom/google/crypto/tink/mac/AesCmacParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public setAesKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/mac/AesCmacKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aesKeyBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object p0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/mac/AesCmacKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idRequirement"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/mac/AesCmacParameters;)Lcom/google/crypto/tink/mac/AesCmacKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/google/crypto/tink/mac/AesCmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/AesCmacParameters;

    return-object p0
.end method
