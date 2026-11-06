###### Class com.google.crypto.tink.signature.EcdsaPublicKey (com.google.crypto.tink.signature.EcdsaPublicKey)
.class public final Lcom/google/crypto/tink/signature/EcdsaPublicKey;
.super Lcom/google/crypto/tink/signature/SignaturePublicKey;
.source "EcdsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;
    }
.end annotation


# instance fields
.field public final idRequirement:Ljava/lang/Integer;

.field public final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field public final parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

.field public final publicPoint:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/signature/EcdsaParameters;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
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
            "publicPoint",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignaturePublicKey;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 110
    iput-object p2, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->publicPoint:Ljava/security/spec/ECPoint;

    .line 111
    iput-object p3, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 112
    iput-object p4, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/EcdsaParameters;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/signature/EcdsaPublicKey$1;)V
    .registers 6

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;-><init>(Lcom/google/crypto/tink/signature/EcdsaParameters;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;
    .registers 2

    .line 121
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;-><init>(Lcom/google/crypto/tink/signature/EcdsaPublicKey$1;)V

    return-object v0
.end method


# virtual methods
.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/signature/SignatureParameters;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPublicPoint()Ljava/security/spec/ECPoint;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->publicPoint:Ljava/security/spec/ECPoint;

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.EcdsaPublicKey.AnonymousClass1 (com.google.crypto.tink.signature.EcdsaPublicKey$1)
.class public synthetic Lcom/google/crypto/tink/signature/EcdsaPublicKey$1;
.super Ljava/lang/Object;
.source "EcdsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.signature.EcdsaPublicKey.Builder (com.google.crypto.tink.signature.EcdsaPublicKey$Builder)
.class public Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;
.super Ljava/lang/Object;
.source "EcdsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public idRequirement:Ljava/lang/Integer;

.field public parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

.field public publicPoint:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 44
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->publicPoint:Ljava/security/spec/ECPoint;

    .line 45
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/EcdsaPublicKey$1;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/EcdsaPublicKey;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    if-eqz v0, :cond_5a

    .line 86
    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->publicPoint:Ljava/security/spec/ECPoint;

    if-eqz v1, :cond_52

    .line 90
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getCurveType()Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->toParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 89
    invoke-static {v1, v0}, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 91
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-eqz v0, :cond_24

    goto :goto_2c

    .line 92
    :cond_24
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-nez v0, :cond_39

    goto :goto_41

    .line 96
    :cond_39
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 100
    new-instance v2, Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->publicPoint:Ljava/security/spec/ECPoint;

    iget-object v6, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;-><init>(Lcom/google/crypto/tink/signature/EcdsaParameters;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/signature/EcdsaPublicKey$1;)V

    return-object v2

    .line 87
    :cond_52
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without public point"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_5a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    if-ne v0, v1, :cond_d

    .line 69
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object v0

    .line 71
    :cond_d
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 72
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    if-ne v0, v1, :cond_22

    goto :goto_54

    .line 75
    :cond_22
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    if-ne v0, v1, :cond_37

    .line 76
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

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

    const-string v2, "Unknown EcdsaParameters.Variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 79
    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;
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
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/signature/EcdsaParameters;)Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;
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
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    return-object p0
.end method

.method public setPublicPoint(Ljava/security/spec/ECPoint;)Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicPoint"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->publicPoint:Ljava/security/spec/ECPoint;

    return-object p0
.end method
