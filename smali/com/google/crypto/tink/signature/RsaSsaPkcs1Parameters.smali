###### Class com.google.crypto.tink.signature.RsaSsaPkcs1Parameters (com.google.crypto.tink.signature.RsaSsaPkcs1Parameters)
.class public final Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
.super Lcom/google/crypto/tink/signature/SignatureParameters;
.source "RsaSsaPkcs1Parameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;,
        Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;,
        Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;
    }
.end annotation


# static fields
.field public static final F4:Ljava/math/BigInteger;


# instance fields
.field public final hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

.field public final modulusSizeBits:I

.field public final publicExponent:Ljava/math/BigInteger;

.field public final variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, 0x10001

    .line 77
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modulusSizeBits",
            "publicExponent",
            "variant",
            "hashType"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignatureParameters;-><init>()V

    .line 169
    iput p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->modulusSizeBits:I

    .line 170
    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->publicExponent:Ljava/math/BigInteger;

    .line 171
    iput-object p3, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 172
    iput-object p4, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$1;)V
    .registers 6

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;-><init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;
    .registers 2

    .line 176
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 197
    instance-of v0, p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 200
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    .line 201
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v2

    if-ne v0, v2, :cond_36

    .line 202
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 203
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    move-result-object v2

    if-ne v0, v2, :cond_36

    .line 204
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getHashType()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getHashType()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    move-result-object v0

    if-ne p1, v0, :cond_36

    const/4 p1, 0x1

    return p1

    :cond_36
    return v1
.end method

.method public getHashType()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-object v0
.end method

.method public getModulusSizeBits()I
    .registers 2

    .line 180
    iget v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->modulusSizeBits:I

    return v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 209
    iget v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->modulusSizeBits:I

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->publicExponent:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    const-class v4, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 209
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSA SSA PKCS1 Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", publicExponent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->modulusSizeBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-bit modulus)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.RsaSsaPkcs1Parameters.AnonymousClass1 (com.google.crypto.tink.signature.RsaSsaPkcs1Parameters$1)
.class public synthetic Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$1;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1Parameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.signature.RsaSsaPkcs1Parameters.Builder (com.google.crypto.tink.signature.RsaSsaPkcs1Parameters$Builder)
.class public final Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1Parameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

.field public static final TWO:Ljava/math/BigInteger;


# instance fields
.field public hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

.field public modulusSizeBits:Ljava/lang/Integer;

.field public publicExponent:Ljava/math/BigInteger;

.field public variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2

    .line 112
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->TWO:Ljava/math/BigInteger;

    const/16 v1, 0x100

    .line 113
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    .line 82
    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->publicExponent:Ljava/math/BigInteger;

    .line 83
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 84
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$1;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    if-eqz v0, :cond_5a

    .line 143
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->publicExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_52

    .line 146
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    if-eqz v1, :cond_4a

    .line 149
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    if-eqz v1, :cond_42

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-lt v0, v1, :cond_30

    .line 157
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->validatePublicExponent(Ljava/math/BigInteger;)V

    .line 158
    new-instance v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->publicExponent:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    iget-object v5, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;-><init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$1;)V

    return-object v1

    .line 153
    :cond_30
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 154
    const-string v2, "Invalid key size in bytes %d; must be at least 2048 bits"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_42
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_4a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_52
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "publicExponent is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_5a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashType"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->hashType:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-object p0
.end method

.method public setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modulusSizeBits"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    return-object p0
.end method

.method public setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->publicExponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    return-object p0
.end method

.method public final validatePublicExponent(Ljava/math/BigInteger;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicExponent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_21

    :cond_9
    if-ltz v0, :cond_32

    .line 128
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 132
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_22

    :goto_21
    return-void

    .line 134
    :cond_22
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Public exponent cannot be larger than 2^256."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_2a
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Invalid public exponent"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_32
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Public exponent must be at least 65537."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.google.crypto.tink.signature.RsaSsaPkcs1Parameters.HashType (com.google.crypto.tink.signature.RsaSsaPkcs1Parameters$HashType)
.class public final Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1Parameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashType"
.end annotation


# static fields
.field public static final SHA256:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

.field public static final SHA384:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

.field public static final SHA512:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    const-string v1, "SHA256"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 62
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    const-string v1, "SHA384"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    .line 63
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    const-string v1, "SHA512"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->name:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.RsaSsaPkcs1Parameters.Variant (com.google.crypto.tink.signature.RsaSsaPkcs1Parameters$Variant)
.class public final Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1Parameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# static fields
.field public static final CRUNCHY:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

.field public static final LEGACY:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

.field public static final NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

.field public static final TINK:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->TINK:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 42
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 43
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 44
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->name:Ljava/lang/String;

    return-object v0
.end method
