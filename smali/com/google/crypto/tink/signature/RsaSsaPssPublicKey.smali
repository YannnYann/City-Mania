###### Class com.google.crypto.tink.signature.RsaSsaPssPublicKey (com.google.crypto.tink.signature.RsaSsaPssPublicKey)
.class public final Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;
.super Lcom/google/crypto/tink/signature/SignaturePublicKey;
.source "RsaSsaPssPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;
    }
.end annotation


# instance fields
.field public final idRequirement:Ljava/lang/Integer;

.field public final modulus:Ljava/math/BigInteger;

.field public final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field public final parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPssParameters;Ljava/math/BigInteger;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
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
            "modulus",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePublicKey;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    .line 123
    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->modulus:Ljava/math/BigInteger;

    .line 124
    iput-object p3, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 125
    iput-object p4, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPssParameters;Ljava/math/BigInteger;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$1;)V
    .registers 6

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPssParameters;Ljava/math/BigInteger;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;
    .registers 2

    .line 134
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$1;)V

    return-object v0
.end method


# virtual methods
.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/signature/SignatureParameters;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.RsaSsaPssPublicKey.AnonymousClass1 (com.google.crypto.tink.signature.RsaSsaPssPublicKey$1)
.class public synthetic Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$1;
.super Ljava/lang/Object;
.source "RsaSsaPssPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.signature.RsaSsaPssPublicKey.Builder (com.google.crypto.tink.signature.RsaSsaPssPublicKey$Builder)
.class public Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;
.super Ljava/lang/Object;
.source "RsaSsaPssPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public idRequirement:Ljava/lang/Integer;

.field public modulus:Ljava/math/BigInteger;

.field public parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    .line 44
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->modulus:Ljava/math/BigInteger;

    .line 45
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$1;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    if-eqz v0, :cond_76

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->modulus:Ljava/math/BigInteger;

    if-eqz v0, :cond_6e

    .line 91
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getModulusSizeBits()I

    move-result v1

    if-ne v0, v1, :cond_4f

    .line 103
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    goto :goto_29

    .line 104
    :cond_21
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-nez v0, :cond_36

    goto :goto_3e

    .line 109
    :cond_36
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 113
    new-instance v2, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->modulus:Ljava/math/BigInteger;

    iget-object v6, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPssParameters;Ljava/math/BigInteger;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$1;)V

    return-object v2

    .line 96
    :cond_4f
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got modulus size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but parameters requires modulus size "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_6e
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without modulus"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_76
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    if-ne v0, v1, :cond_d

    .line 69
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object v0

    .line 71
    :cond_d
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    .line 72
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    if-ne v0, v1, :cond_22

    goto :goto_54

    .line 75
    :cond_22
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    if-ne v0, v1, :cond_37

    .line 76
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 78
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown RsaSsaPssParameters.Variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    .line 79
    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idRequirement"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-object p0
.end method

.method public setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modulus"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->modulus:Ljava/math/BigInteger;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/signature/RsaSsaPssParameters;)Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    return-object p0
.end method
