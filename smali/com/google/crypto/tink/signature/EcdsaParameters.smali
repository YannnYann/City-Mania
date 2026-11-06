###### Class com.google.crypto.tink.signature.EcdsaParameters (com.google.crypto.tink.signature.EcdsaParameters)
.class public final Lcom/google/crypto/tink/signature/EcdsaParameters;
.super Lcom/google/crypto/tink/signature/SignatureParameters;
.source "EcdsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;,
        Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;,
        Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;,
        Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;,
        Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
    }
.end annotation


# instance fields
.field public final curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

.field public final hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

.field public final signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

.field public final variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "signatureEncoding",
            "curveType",
            "hashType",
            "variant"
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/SignatureParameters;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 210
    iput-object p2, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 211
    iput-object p3, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 212
    iput-object p4, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;Lcom/google/crypto/tink/signature/EcdsaParameters$1;)V
    .registers 6

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/signature/EcdsaParameters;-><init>(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
    .registers 2

    .line 216
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;-><init>(Lcom/google/crypto/tink/signature/EcdsaParameters$1;)V

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

    .line 237
    instance-of v0, p1, Lcom/google/crypto/tink/signature/EcdsaParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 240
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 241
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getSignatureEncoding()Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getSignatureEncoding()Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    move-result-object v2

    if-ne v0, v2, :cond_32

    .line 242
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getCurveType()Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getCurveType()Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    move-result-object v2

    if-ne v0, v2, :cond_32

    .line 243
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getHashType()Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getHashType()Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    move-result-object v2

    if-ne v0, v2, :cond_32

    .line 244
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v0

    if-ne p1, v0, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    return v1
.end method

.method public getCurveType()Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    return-object v0
.end method

.method public getHashType()Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    return-object v0
.end method

.method public getSignatureEncoding()Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    return-object v0
.end method

.method public getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 249
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    const-class v4, Lcom/google/crypto/tink/signature/EcdsaParameters;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ECDSA Parameters (variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", curve: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.EcdsaParameters.AnonymousClass1 (com.google.crypto.tink.signature.EcdsaParameters$1)
.class public synthetic Lcom/google/crypto/tink/signature/EcdsaParameters$1;
.super Ljava/lang/Object;
.source "EcdsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.google.crypto.tink.signature.EcdsaParameters.Builder (com.google.crypto.tink.signature.EcdsaParameters$Builder)
.class public final Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
.super Ljava/lang/Object;
.source "EcdsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

.field public hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

.field public signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

.field public variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 136
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 137
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 138
    sget-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/crypto/tink/signature/EcdsaParameters$1;)V
    .registers 2

    .line 134
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 167
    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    if-eqz v1, :cond_66

    .line 170
    iget-object v2, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    if-eqz v2, :cond_5e

    .line 173
    iget-object v3, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    if-eqz v3, :cond_56

    .line 176
    iget-object v4, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    if-eqz v4, :cond_4e

    .line 180
    sget-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    if-ne v2, v0, :cond_21

    .line 181
    sget-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    if-ne v3, v0, :cond_19

    goto :goto_21

    .line 182
    :cond_19
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P256 requires SHA256"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_21
    :goto_21
    sget-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P384:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    if-ne v2, v0, :cond_36

    .line 186
    sget-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    if-eq v3, v0, :cond_36

    sget-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    if-ne v3, v0, :cond_2e

    goto :goto_36

    .line 187
    :cond_2e
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P384 requires SHA384 or SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_36
    :goto_36
    sget-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P521:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    if-ne v2, v0, :cond_47

    .line 191
    sget-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    if-ne v3, v0, :cond_3f

    goto :goto_47

    .line 192
    :cond_3f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P521 requires SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_47
    :goto_47
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/signature/EcdsaParameters;-><init>(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;Lcom/google/crypto/tink/signature/EcdsaParameters$1;)V

    return-object v0

    .line 177
    :cond_4e
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_56
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_5e
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "EC curve type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_66
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "signature encoding is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurveType(Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    return-object p0
.end method

.method public setHashType(Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashType"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    return-object p0
.end method

.method public setSignatureEncoding(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signatureEncoding"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    return-object p0
.end method

###### Class com.google.crypto.tink.signature.EcdsaParameters.CurveType (com.google.crypto.tink.signature.EcdsaParameters$CurveType)
.class public final Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;
.super Ljava/lang/Object;
.source "EcdsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurveType"
.end annotation


# static fields
.field public static final NIST_P256:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

.field public static final NIST_P384:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

.field public static final NIST_P521:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;


# instance fields
.field public final name:Ljava/lang/String;

.field public final spec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 74
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    const-string v1, "NIST_P256"

    sget-object v2, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P256_PARAMS:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 76
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    const-string v1, "NIST_P384"

    sget-object v2, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P384_PARAMS:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P384:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 78
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    const-string v1, "NIST_P521"

    sget-object v2, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P521_PARAMS:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P521:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "spec"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->name:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->spec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method


# virtual methods
.method public toParameterSpec()Ljava/security/spec/ECParameterSpec;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->spec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->name:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.EcdsaParameters.HashType (com.google.crypto.tink.signature.EcdsaParameters$HashType)
.class public final Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;
.super Ljava/lang/Object;
.source "EcdsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashType"
.end annotation


# static fields
.field public static final SHA256:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

.field public static final SHA384:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

.field public static final SHA512:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 117
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    const-string v1, "SHA256"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 118
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    const-string v1, "SHA384"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 119
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    const-string v1, "SHA512"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

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

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->name:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.EcdsaParameters.SignatureEncoding (com.google.crypto.tink.signature.EcdsaParameters$SignatureEncoding)
.class public final Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;
.super Ljava/lang/Object;
.source "EcdsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignatureEncoding"
.end annotation


# static fields
.field public static final DER:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

.field public static final IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    const-string v1, "IEEE_P1363"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;->IEEE_P1363:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 57
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    const-string v1, "DER"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;->DER:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;->name:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.crypto.tink.signature.EcdsaParameters.Variant (com.google.crypto.tink.signature.EcdsaParameters$Variant)
.class public final Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;
.super Ljava/lang/Object;
.source "EcdsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Variant"
.end annotation


# static fields
.field public static final CRUNCHY:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

.field public static final LEGACY:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

.field public static final NO_PREFIX:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

.field public static final TINK:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    .line 37
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    .line 38
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    .line 39
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->name:Ljava/lang/String;

    return-object v0
.end method
