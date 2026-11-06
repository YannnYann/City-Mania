###### Class com.google.crypto.tink.mac.HmacKey (com.google.crypto.tink.mac.HmacKey)
.class public final Lcom/google/crypto/tink/mac/HmacKey;
.super Lcom/google/crypto/tink/mac/MacKey;
.source "HmacKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/mac/HmacKey$Builder;
    }
.end annotation


# instance fields
.field public final idRequirement:Ljava/lang/Integer;

.field public final keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field public final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field public final parameters:Lcom/google/crypto/tink/mac/HmacParameters;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/mac/HmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
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
            "keyBytes",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/MacKey;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacKey;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    .line 108
    iput-object p2, p0, Lcom/google/crypto/tink/mac/HmacKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 109
    iput-object p3, p0, Lcom/google/crypto/tink/mac/HmacKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 110
    iput-object p4, p0, Lcom/google/crypto/tink/mac/HmacKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/mac/HmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/mac/HmacKey$1;)V
    .registers 6

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/mac/HmacKey;-><init>(Lcom/google/crypto/tink/mac/HmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/mac/HmacKey$Builder;
    .registers 2

    .line 119
    new-instance v0, Lcom/google/crypto/tink/mac/HmacKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/mac/HmacKey$Builder;-><init>(Lcom/google/crypto/tink/mac/HmacKey$1;)V

    return-object v0
.end method


# virtual methods
.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacKey;->getParameters()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/mac/HmacParameters;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/mac/MacParameters;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacKey;->getParameters()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.mac.HmacKey.AnonymousClass1 (com.google.crypto.tink.mac.HmacKey$1)
.class public synthetic Lcom/google/crypto/tink/mac/HmacKey$1;
.super Ljava/lang/Object;
.source "HmacKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/HmacKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.mac.HmacKey.Builder (com.google.crypto.tink.mac.HmacKey$Builder)
.class public Lcom/google/crypto/tink/mac/HmacKey$Builder;
.super Ljava/lang/Object;
.source "HmacKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/HmacKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public idRequirement:Ljava/lang/Integer;

.field public keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

.field public parameters:Lcom/google/crypto/tink/mac/HmacParameters;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    .line 42
    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 43
    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/mac/HmacKey$1;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/HmacKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/mac/HmacKey;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    if-eqz v0, :cond_57

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    if-eqz v1, :cond_57

    .line 84
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getKeySizeBytes()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v1

    if-ne v0, v1, :cond_4f

    .line 88
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    goto :goto_29

    .line 89
    :cond_21
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-nez v0, :cond_36

    goto :goto_3e

    .line 94
    :cond_36
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 98
    new-instance v2, Lcom/google/crypto/tink/mac/HmacKey;

    iget-object v3, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v6, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/mac/HmacKey;-><init>(Lcom/google/crypto/tink/mac/HmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/mac/HmacKey$1;)V

    return-object v2

    .line 85
    :cond_4f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_57
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters and/or key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_d

    .line 67
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object v0

    .line 69
    :cond_d
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->LEGACY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    .line 70
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_22

    goto :goto_54

    .line 73
    :cond_22
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_37

    .line 74
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 76
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown HmacParameters.Variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v2}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/mac/HmacKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idRequirement"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-object p0
.end method

.method public setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/mac/HmacKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyBytes"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/mac/HmacParameters;)Lcom/google/crypto/tink/mac/HmacKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    return-object p0
.end method
