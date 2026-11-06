###### Class com.google.crypto.tink.signature.RsaSsaPssParameters (com.google.crypto.tink.signature.RsaSsaPssParameters)
.class public final Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
.super Lcom/google/crypto/tink/signature/SignatureParameters;
.source "RsaSsaPssParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;,
        Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;,
        Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    }
.end annotation


# static fields
.field public static final F4:Ljava/math/BigInteger;


# instance fields
.field public final mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

.field public final modulusSizeBits:I

.field public final publicExponent:Ljava/math/BigInteger;

.field public final saltLengthBytes:I

.field public final sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

.field public final variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, 0x10001

    .line 77
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modulusSizeBits",
            "publicExponent",
            "variant",
            "sigHashType",
            "mgf1HashType",
            "saltLengthBytes"
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignatureParameters;-><init>()V

    .line 207
    iput p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->modulusSizeBits:I

    .line 208
    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->publicExponent:Ljava/math/BigInteger;

    .line 209
    iput-object p3, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    .line 210
    iput-object p4, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 211
    iput-object p5, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 212
    iput p6, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->saltLengthBytes:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;ILcom/google/crypto/tink/signature/RsaSsaPssParameters$1;)V
    .registers 8

    .line 32
    invoke-direct/range {p0 .. p6}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;-><init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;I)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .registers 2

    .line 216
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$1;)V

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

    .line 245
    instance-of v0, p1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 248
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    .line 249
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getModulusSizeBits()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getModulusSizeBits()I

    move-result v2

    if-ne v0, v2, :cond_56

    .line 250
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 251
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 252
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getSigHashType()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getSigHashType()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 253
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getMgf1HashType()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getMgf1HashType()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 254
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getSaltLengthBytes()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getSaltLengthBytes()I

    move-result v0

    if-ne p1, v0, :cond_56

    const/4 p1, 0x1

    return p1

    :cond_56
    return v1
.end method

.method public getMgf1HashType()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    return-object v0
.end method

.method public getModulusSizeBits()I
    .registers 2

    .line 220
    iget v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->modulusSizeBits:I

    return v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSaltLengthBytes()I
    .registers 2

    .line 240
    iget v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->saltLengthBytes:I

    return v0
.end method

.method public getSigHashType()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 9

    .line 259
    iget v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->modulusSizeBits:I

    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->publicExponent:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    iget-object v5, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    iget-object v6, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    iget v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->saltLengthBytes:I

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-class v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 259
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSA SSA PSS Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mgf1 hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", saltLengthBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->saltLengthBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", publicExponent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->modulusSizeBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-bit modulus)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.RsaSsaPssParameters.AnonymousClass1 (com.google.crypto.tink.signature.RsaSsaPssParameters$1)
.class public synthetic Lcom/google/crypto/tink/signature/RsaSsaPssParameters$1;
.super Ljava/lang/Object;
.source "RsaSsaPssParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.signature.RsaSsaPssParameters.Builder (com.google.crypto.tink.signature.RsaSsaPssParameters$Builder)
.class public final Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
.super Ljava/lang/Object;
.source "RsaSsaPssParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

.field public static final TWO:Ljava/math/BigInteger;


# instance fields
.field public mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

.field public modulusSizeBits:Ljava/lang/Integer;

.field public publicExponent:Ljava/math/BigInteger;

.field public saltLengthBytes:Ljava/lang/Integer;

.field public sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

.field public variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2

    .line 131
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->TWO:Ljava/math/BigInteger;

    const/16 v1, 0x100

    .line 132
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    .line 82
    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->publicExponent:Ljava/math/BigInteger;

    .line 83
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 84
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 85
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->saltLengthBytes:Ljava/lang/Integer;

    .line 86
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$1;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    if-eqz v0, :cond_8c

    .line 163
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->publicExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_84

    .line 166
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    if-eqz v1, :cond_7c

    .line 169
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    if-eqz v1, :cond_74

    .line 172
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    if-eqz v1, :cond_6c

    .line 175
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->saltLengthBytes:Ljava/lang/Integer;

    if-eqz v1, :cond_64

    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-lt v0, v1, :cond_4e

    .line 184
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    if-ne v0, v1, :cond_46

    .line 187
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->validatePublicExponent(Ljava/math/BigInteger;)V

    .line 188
    new-instance v1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->publicExponent:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    iget-object v5, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    iget-object v6, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->saltLengthBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;-><init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;ILcom/google/crypto/tink/signature/RsaSsaPssParameters$1;)V

    return-object v1

    .line 185
    :cond_46
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "MGF1 hash is different from signature hash"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_4e
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 180
    const-string v2, "Invalid key size in bytes %d; must be at least %d bits"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_64
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "salt length is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_6c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_74
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "mgf1 hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_7c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "signature hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_84
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "publicExponent is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_8c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMgf1HashType(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mgf1HashType"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->mgf1HashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    return-object p0
.end method

.method public setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modulusSizeBits"
        }
    .end annotation

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/lang/Integer;

    return-object p0
.end method

.method public setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->publicExponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public setSaltLengthBytes(I)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saltLengthBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-ltz p1, :cond_9

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->saltLengthBytes:Ljava/lang/Integer;

    return-object p0

    .line 123
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 124
    const-string v1, "Invalid salt length in bytes %d; salt length must be positive"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSigHashType(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigHashType"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->sigHashType:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->variant:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

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

    .line 139
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_21

    :cond_9
    if-ltz v0, :cond_32

    .line 148
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 152
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_22

    :goto_21
    return-void

    .line 154
    :cond_22
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Public exponent cannot be larger than 2^256."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_2a
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Invalid public exponent"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_32
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Public exponent must be at least 65537."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.google.crypto.tink.signature.RsaSsaPssParameters.HashType (com.google.crypto.tink.signature.RsaSsaPssParameters$HashType)
.class public final Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;
.super Ljava/lang/Object;
.source "RsaSsaPssParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashType"
.end annotation


# static fields
.field public static final SHA256:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

.field public static final SHA384:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

.field public static final SHA512:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    const-string v1, "SHA256"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 62
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    const-string v1, "SHA384"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 63
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    const-string v1, "SHA512"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

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
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->name:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.RsaSsaPssParameters.Variant (com.google.crypto.tink.signature.RsaSsaPssParameters$Variant)
.class public final Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;
.super Ljava/lang/Object;
.source "RsaSsaPssParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPssParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# static fields
.field public static final CRUNCHY:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

.field public static final LEGACY:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

.field public static final NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

.field public static final TINK:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    .line 42
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    .line 43
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    .line 44
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

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
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->name:Ljava/lang/String;

    return-object v0
.end method
